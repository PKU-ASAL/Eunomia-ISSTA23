//
// $Id: dnstracer.c, v 1.48 2004/07/08 11:15:17 mavetju Exp $
//

//
// Copyright (c) 2002 by Edwin Groothuis, edwin@mavetju.org.
// All rights reserved.
//
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions
// are met:
// 1. Redistributions of source code must retain the above copyright
//    notice, this list of conditions and the following disclaimer.
// 2. Redistributions in binary form must reproduce the above copyright
//    notice, this list of conditions and the following disclaimer in the
//    documentation and/or other materials provided with the distribution.
//
// THIS SOFTWARE IS PROVIDED BY FATAL DIMENSIONS AND CONTRIBUTORS ``AS
// IS'' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
// LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
// FOR A PARTICULAR PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL THE
// STAFF OF FATAL DIMENSIONS OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT,
// INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
// (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
// SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
// HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
// STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
// ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED
// OF THE POSSIBILITY OF SUCH DAMAGE.
//

#ifdef WIN32
    #include <winsock.h>
    #include <io.h>
    #include "getopt.h"
    // To reduce the amount of #ifdef's, these two are defined.
    // rand()/srand() is ISO C89 naming but it's obsoleted according
    // to the man-page.
    #define random	rand
    #define srandom	srand
#else
    #include <unistd.h>
    #include <sys/time.h>
    #include <sys/param.h>
    #include <sys/socket.h>
    #include <netinet/in.h>
    #include <arpa/inet.h>
    //#include <netdb.h>
    #include <arpa/nameser.h>
#endif

#include <sys/types.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <time.h>
#ifndef ns_t_a
#define ns_t_a		1
#endif
#ifndef ns_t_ns
#define ns_t_ns		2
#endif
#ifndef ns_t_cname
#define ns_t_cname	5
#endif
#ifndef ns_t_soa
#define ns_t_soa	6
#endif
#ifndef ns_t_ptr
#define ns_t_ptr	12
#endif
#ifndef ns_t_hinfo
#define ns_t_hinfo	13
#endif
#ifndef ns_t_mx
#define ns_t_mx		15
#endif
#ifndef ns_t_txt
#define ns_t_txt	16
#endif
#ifndef ns_t_aaaa
#define ns_t_aaaa	28
#endif

#ifndef ns_c_in
#define ns_c_in		1
#endif
#ifndef ns_c_chaos
#define ns_c_chaos	3
#endif
#ifndef ns_c_hs
#define ns_c_hs		4
#endif
#ifndef ns_c_none
#define ns_c_none	254
#endif
#ifndef ns_c_any
#define ns_c_any	255
#endif

#ifndef NS_MAXDNAME
#define NS_MAXDNAME	1024
#endif


#define DEFAULT_RETRIES	3
#define DEFAULT_CACHING	1
#define DEFAULT_NEGATIVE_CACHING	0
#define DEFAULT_OVERVIEW	0
#define DEFAULT_QUERYTYPE	ns_t_a
#define DEFAULT_NOIPV6	0
#define PF_INET     AF_INET

// #ifdef NOIPV6
#define gethostbyname2(a, b) gethostbyname(a)
// #endif

int	verbose = 0;
int	global_overview = DEFAULT_OVERVIEW;
int	global_retries = DEFAULT_RETRIES;
int	global_caching = DEFAULT_CACHING;
int	global_negative_caching = DEFAULT_NEGATIVE_CACHING;
int	global_querytype = DEFAULT_QUERYTYPE;
int	global_noipv6 = DEFAULT_NOIPV6;
int	global_timeout = 0;
char *	global_source_address = NULL;

/*****************************************************************************/
struct hostent {
	char	*h_name;	/* official name of host */
	char	**h_aliases;	/* alias list */
	int	h_addrtype;	/* host address type */
	int	h_length;	/* length of address */
	char	**h_addr_list;	/* list of addresses from name server */
#if !defined(_POSIX_C_SOURCE) || defined(_DARWIN_C_SOURCE)
#define	h_addr	h_addr_list[0]	/* address, for backward compatibility */
#endif /* (!_POSIX_C_SOURCE || _DARWIN_C_SOURCE) */
};
#define	AI_PASSIVE	0x00000001 /* get address to use bind() */
#define	AI_CANONNAME	0x00000002 /* fill ai_canonname */
#define	AI_NUMERICHOST	0x00000004 /* prevent host name resolution */
#define	AI_NUMERICSERV	0x00001000 /* prevent service name resolution */
#if !defined(_POSIX_C_SOURCE) || defined(_DARWIN_C_SOURCE)
#define	EAI_ADDRFAMILY	 1	/* address family for hostname not supported */
#endif /* (!_POSIX_C_SOURCE || _DARWIN_C_SOURCE) */
#define	EAI_AGAIN	 2	/* temporary failure in name resolution */
#define	EAI_BADFLAGS	 3	/* invalid value for ai_flags */
#define	EAI_FAIL	 4	/* non-recoverable failure in name resolution */
#define	EAI_FAMILY	 5	/* ai_family not supported */
#define	EAI_MEMORY	 6	/* memory allocation failure */
#if !defined(_POSIX_C_SOURCE) || defined(_DARWIN_C_SOURCE)
#define	EAI_NODATA	 7	/* no address associated with hostname */
#endif /* (!_POSIX_C_SOURCE || _DARWIN_C_SOURCE) */
#define	EAI_NONAME	 8	/* hostname nor servname provided, or not known */
#define	EAI_SERVICE	 9	/* servname not supported for ai_socktype */
#define	EAI_SOCKTYPE	10	/* ai_socktype not supported */
#define	EAI_SYSTEM	11	/* system error returned in errno */
#if !defined(_POSIX_C_SOURCE) || defined(_DARWIN_C_SOURCE)
#define	EAI_BADHINTS	12	/* invalid value for hints */
#define	EAI_PROTOCOL	13	/* resolved protocol is unknown */
#endif /* (!_POSIX_C_SOURCE || _DARWIN_C_SOURCE) */
#define	EAI_OVERFLOW	14	/* argument buffer overflow */
#if !defined(_POSIX_C_SOURCE) || defined(_DARWIN_C_SOURCE)
#define	EAI_MAX		15
#endif /* (!_POSIX_C_SOURCE || _DARWIN_C_SOURCE) */
int		getaddrinfo(const char * __restrict, const char * __restrict,
			    const struct addrinfo * __restrict,
			    struct addrinfo ** __restrict);
struct hostent	*gethostbyname(const char *);
struct addrinfo {
	int	ai_flags;	/* AI_PASSIVE, AI_CANONNAME, AI_NUMERICHOST */
	int	ai_family;	/* PF_xxx */
	int	ai_socktype;	/* SOCK_xxx */
	int	ai_protocol;	/* 0 or IPPROTO_xxx for IPv4 and IPv6 */
	socklen_t ai_addrlen;	/* length of ai_addr */
	char	*ai_canonname;	/* canonical name for hostname */
	struct	sockaddr *ai_addr;	/* binary address */
	struct	addrinfo *ai_next;	/* next structure in linked list */
};
char		*inet_ntoa(struct in_addr);

#define	__RES	19991006

#define __h_errno_set _res_9_h_errno_set
#define RES_SET_H_ERRNO(r,x) __h_errno_set(r,x)

#define __res_state __res_9_state
struct __res_state; /* forward */

void __h_errno_set(struct __res_state *res, int err);

/*
 * Resolver configuration file.
 * Normally not present, but may contain the address of the
 * inital name server(s) to query and the domain search list.
 *
 * Apple Note:  The default DNS resolver client configuration
 * is now stored in a system configuration database, not in
 */

#ifndef _PATH_RESCONF
#define _PATH_RESCONF        "/etc/resolv.conf"
#endif

#define res_goahead res_9_goahead
#define res_nextns res_9_nextns
#define res_modified res_9_modified
#define res_done res_9_done
#define res_error res_9_error
#define res_sendhookact res_9_sendhookact

typedef enum
{
	res_goahead,
	res_nextns,
	res_modified,
	res_done,
	res_error
} res_sendhookact;

typedef res_sendhookact (*res_send_qhook)((struct sockaddr * const *ns,
					      const u_char **query,
					      int *querylen,
					      u_char *ans,
					      int anssiz,
					      int *resplen));

typedef res_sendhookact (*res_send_rhook)((const struct sockaddr *ns,
					      const u_char *query,
					      int querylen,
					      u_char *ans,
					      int anssiz,
					      int *resplen));

#define res_sym res_9_sym

struct res_sym
{
	int		number;	   /* Identifying number, like T_MX */
	const char *	name;	   /* Its symbolic name, like "MX" */
	const char *	humanname; /* Its fun name, like "mail exchanger" */
};

/*
 * Global defines and variables for resolver stub.
 */
#define	MAXNS			3	/* max # name servers we'll track */
#define	MAXDFLSRCH		3	/* # default domain levels to try */
#define	MAXDNSRCH		6	/* max # domains in search path */
#define	LOCALDOMAINPARTS	2	/* min levels in name that is "local" */

#define	RES_TIMEOUT		5	/* min. seconds between retries */
#define	MAXRESOLVSORT		10	/* number of net to sort on */
#define	RES_MAXNDOTS		15	/* should reflect bit field size */
#define	RES_MAXRETRANS		30	/* only for resolv.conf/RES_OPTIONS */
#define	RES_MAXRETRY		5	/* only for resolv.conf/RES_OPTIONS */
#define	RES_DFLRETRY		2	/* Default #/tries. */
#define	RES_MAXTIME		65535	/* Infinity, in milliseconds. */

#define __res_state_ext __res_9_state_ext
struct __res_state_ext;

#define __res_state __res_9_state
struct __res_state {
	int	retrans;	 	/* retransmition time interval */
	int	retry;			/* number of times to transmit (attempts, not retries) */
#ifdef sun
	u_int	options;		/* option flags - see below. */
#else
	u_long	options;		/* option flags - see below. */
#endif
	int	nscount;		/* number of name servers */
	struct sockaddr_in
		nsaddr_list[MAXNS];	/* address of name server */
#define	nsaddr	nsaddr_list[0]		/* for backward compatibility */
	u_short	id;			/* current message id */
	char	*dnsrch[MAXDNSRCH+1];	/* components of domain to search */
	char	defdname[256];		/* default domain (deprecated) */
#ifdef sun
	u_int	pfcode;			/* RES_PRF_ flags - see below. */
#else
	u_long	pfcode;			/* RES_PRF_ flags - see below. */
#endif
	unsigned ndots:4;		/* threshold for initial abs. query */
	unsigned nsort:4;		/* number of elements in sort_list[] */
	char	unused[3];
	struct {
		struct in_addr	addr;
		u_int32_t	mask;
	} sort_list[MAXRESOLVSORT];
	res_send_qhook qhook;		/* query hook */
	res_send_rhook rhook;		/* response hook */
	int	res_h_errno;		/* last one set for this context */
	int	_vcsock;		/* PRIVATE: for res_send VC i/o */
	u_int	_flags;			/* PRIVATE: see below */
	u_int	_pad;			/* make _u 64 bit aligned */
	union {
		/* On an 32-bit arch this means 512b total. */
		char	pad[72 - 4*sizeof (int) - 2*sizeof (void *)];
		struct {
			u_int16_t		nscount;
			u_int16_t		nstimes[MAXNS];	/* ms. */
			int			nssocks[MAXNS];
			struct __res_state_ext *ext;	/* extention for IPv6 */
		} _ext;
	} _u;
};

#define res_state res_9_state

typedef struct __res_state *res_state;

#define res_sockaddr_union res_9_sockaddr_union

union res_sockaddr_union {
	struct sockaddr_in	sin;
#ifdef IN6ADDR_ANY_INIT
	struct sockaddr_in6	sin6;
#endif
#ifdef ISC_ALIGN64
	int64_t			__align64;	/* 64bit alignment */
#else
	int32_t			__align32;	/* 32bit alignment */
#endif
	char			__space[128];   /* max size */
};

/*
 * Resolver flags (used to be discrete per-module statics ints).
 */
#define	RES_F_VC			0x00000001	/* socket is TCP */
#define	RES_F_CONN		0x00000002	/* socket is connected */
#define	RES_F_EDNS0ERR	0x00000004	/* EDNS0 caused errors */

/* res_findzonecut2() options */
#define	RES_EXHAUSTIVE	0x00000001	/* always do all queries */
#define	RES_IPV4ONLY		0x00000002	/* IPv4 only */
#define	RES_IPV6ONLY		0x00000004	/* IPv6 only */

/*
 * Resolver options (keep these in synch with res_debug.c, please)
 */
#define RES_INIT			0x00000001	/* address initialized */
#define RES_DEBUG		0x00000002	/* print debug messages */
#define RES_AAONLY		0x00000004	/* authoritative answers only (!IMPL)*/
#define RES_USEVC		0x00000008	/* use virtual circuit */
#define RES_PRIMARY		0x00000010	/* query primary server only (!IMPL) */
#define RES_IGNTC		0x00000020	/* ignore trucation errors */
#define RES_RECURSE		0x00000040	/* recursion desired */
#define RES_DEFNAMES		0x00000080	/* use default domain name */
#define RES_STAYOPEN		0x00000100	/* Keep TCP socket open */
#define RES_DNSRCH		0x00000200	/* search up local domain tree */
#define	RES_INSECURE1	0x00000400	/* type 1 security disabled */
#define	RES_INSECURE2	0x00000800	/* type 2 security disabled */
#define	RES_NOALIASES	0x00001000	/* shuts off HOSTALIASES feature */
#define	RES_USE_INET6	0x00002000	/* use/map IPv6 in gethostbyname() */
#define RES_ROTATE		0x00004000	/* rotate ns list after each query */
#define	RES_NOCHECKNAME	0x00008000	/* do not check names for sanity. */
#define	RES_KEEPTSIG		0x00010000	/* do not strip TSIG records */
#define	RES_BLAST		0x00020000	/* blast all recursive servers */
#define RES_NO_NIBBLE	0x00040000	/* disable IPv6 nibble mode reverse */
#define RES_NO_BITSTRING 0x00080000	/* disable IPv6 bitstring mode reverse */
#define RES_NOTLDQUERY	0x00100000	/* don't unqualified name as a tld */
#define RES_USE_DNSSEC	0x00200000	/* use DNSSEC using OK bit in OPT */
/* KAME extensions: use higher bit to avoid conflict with ISC use */
#define RES_USE_DNAME	0x10000000	/* use DNAME */
#define RES_USE_A6		0x20000000	/* use A6 */
#define RES_USE_EDNS0	0x40000000	/* use EDNS0 if configured */
#define RES_NO_NIBBLE2	0x80000000	/* disable alternate nibble lookup */

#define RES_DEFAULT	(RES_RECURSE | RES_DEFNAMES | RES_DNSRCH | RES_INSECURE1)

/*
 * Resolver "pfcode" values.  Used by dig.
 */
#define RES_PRF_STATS	0x00000001
#define RES_PRF_UPDATE	0x00000002
#define RES_PRF_CLASS   0x00000004
#define RES_PRF_CMD		0x00000008
#define RES_PRF_QUES		0x00000010
#define RES_PRF_ANS		0x00000020
#define RES_PRF_AUTH		0x00000040
#define RES_PRF_ADD		0x00000080
#define RES_PRF_HEAD1	0x00000100
#define RES_PRF_HEAD2	0x00000200
#define RES_PRF_TTLID	0x00000400
#define RES_PRF_HEADX	0x00000800
#define RES_PRF_QUERY	0x00001000
#define RES_PRF_REPLY	0x00002000
#define RES_PRF_INIT		0x00004000
#define RES_PRF_TRUNC	0x00008000
/*			0x00010000	*/

/* Things involving an internal (static) resolver context. */
#if !defined(__BIND_NOSTATIC) && !defined(__BIND_INSTALLAPI)
extern struct __res_state _res;
#endif

void res_init();

struct arecord {
    char *		server_name;
    char *		server_ip;
    int			type;
    char *		rr_name;
    char *		rr_data;
    struct arecord *	next;
};

struct busy {
    char *		server;
    struct busy *	next;
};

struct answer {
    char *		server;
    struct answer *	next;
};

struct dnssession {
    struct dnsheader *		send_header;	// The DNS header being sent
    struct dnsquestion *	send_question;	// The DNS question being sent
    struct dnsheader *		recv_header;	// The DNS header received
    struct dnsquestion *	recv_question;	// The DNS question received
    struct dnsrr *		answer;		// First Answer RR received
    struct dnsrr *		authority;	// First Authority RR received
    struct dnsrr *		additional;	// First Additional RR received
    struct dnssession *		next;

    char *			server;		// First server being queried
    char *			host;		// Hostname being queried

    int				recv_len;		// Raw packet with
    char *			recv_pkt;		// with pointers to...
    char *			recv_pkt_header;	// - header
    char *			recv_pkt_question;	// - question
    char *			recv_pkt_answer;	// - first answer RR
    char *			recv_pkt_authority;	// - first authority RR
    char *			recv_pkt_additional;	// - first additional RR

    int				socket;
    int				ipv6;
};

struct dnsheader {
	unsigned short	identification;
	union {
	    unsigned short	flags;
	    struct bit {
#ifdef WORDS_BIGENDIAN
		unsigned char qr:1;
		unsigned char opcode:4;
		unsigned char aa:1;
		unsigned char tc:1;
		unsigned char rd:1;
		unsigned char ra:1;
		unsigned char zero:3;
		unsigned char rcode:4;
#else
		unsigned char rcode:4;
		unsigned char zero:3;
		unsigned char ra:1;
		unsigned char rd:1;
		unsigned char tc:1;
		unsigned char aa:1;
		unsigned char opcode:4;
		unsigned char qr:1;
#endif
	    } bit;
	} flags;
	unsigned short	nquestions;
	unsigned short	nanswerRR;
	unsigned short	nauthorityRR;
	unsigned short	nadditionalRR;
};

struct dnsquestion {
	unsigned int	querylength;
	unsigned char *	query;
	unsigned short	type;
	unsigned short	class;
};

struct dnsrr {
	unsigned char *	domainname;
	unsigned char *	domainname_string;
	unsigned short	type;
	unsigned short	class;
	unsigned int	ttl;
	unsigned short	datalength;
	unsigned char *	data;
	unsigned char * data_string;	// parsed version of data if possible
	struct dnsrr *	next;
};

char *rr_types[256] = {
	"#0x00", "a", "ns", "#0x03", "#0x04", "cname", "soa", "#0x07",
	"#0x08", "#0x09", "#0x0a", "#0x0b", "#ptr", "#hinfo", "#0x0e", "#mx",
	"#txt", "#0x11", "#0x12", "#0x13", "#0x14", "#0x15", "#0x16", "#0x17",
	"#0x18", "#0x19", "#0x1a", "#0x1b", "#0x1c", "#0x1d", "#0x1e", "#0x1f",
	"#0x20", "#0x21", "#0x22", "#0x23", "#0x24", "#0x25", "#0x26", "#0x27",
	"#0x28", "#0x29", "#0x2a", "#0x2b", "#0x2c", "#0x2d", "#0x2e", "#0x2f",
	"#0x30", "#0x31", "#0x32", "#0x33", "#0x34", "#0x35", "#0x36", "#0x37",
	"#0x38", "#0x39", "#0x3a", "#0x3b", "#0x3c", "#0x3d", "#0x3e", "#0x3f",
	"#0x40", "#0x41", "#0x42", "#0x43", "#0x44", "#0x45", "#0x46", "#0x47",
	"#0x48", "#0x49", "#0x4a", "#0x4b", "#0x4c", "#0x4d", "#0x4e", "#0x4f",
	"#0x50", "#0x51", "#0x52", "#0x53", "#0x54", "#0x55", "#0x56", "#0x57",
	"#0x58", "#0x59", "#0x5a", "#0x5b", "#0x5c", "#0x5d", "#0x5e", "#0x5f",
	"#0x60", "#0x61", "#0x62", "#0x63", "#0x64", "#0x65", "#0x66", "#0x67",
	"#0x68", "#0x69", "#0x6a", "#0x6b", "#0x6c", "#0x6d", "#0x6e", "#0x6f",
	"#0x70", "#0x71", "#0x72", "#0x73", "#0x74", "#0x75", "#0x76", "#0x77",
	"#0x78", "#0x79", "#0x7a", "#0x7b", "#0x7c", "#0x7d", "#0x7e", "#0x7f",
	"#0x80", "#0x81", "#0x82", "#0x83", "#0x84", "#0x85", "#0x86", "#0x87",
	"#0x88", "#0x89", "#0x8a", "#0x8b", "#0x8c", "#0x8d", "#0x8e", "#0x8f",
	"#0x90", "#0x91", "#0x92", "#0x93", "#0x94", "#0x95", "#0x96", "#0x97",
	"#0x98", "#0x99", "#0x9a", "#0x9b", "#0x9c", "#0x9d", "#0x9e", "#0x9f",
	"#0xa0", "#0xa1", "#0xa2", "#0xa3", "#0xa4", "#0xa5", "#0xa6", "#0xa7",
	"#0xa8", "#0xa9", "#0xaa", "#0xab", "#0xac", "#0xad", "#0xae", "#0xaf",
	"#0xb0", "#0xb1", "#0xb2", "#0xb3", "#0xb4", "#0xb5", "#0xb6", "#0xb7",
	"#0xb8", "#0xb9", "#0xba", "#0xbb", "#0xbc", "#0xbd", "#0xbe", "#0xbf",
	"#0xc0", "#0xc1", "#0xc2", "#0xc3", "#0xc4", "#0xc5", "#0xc6", "#0xc7",
	"#0xc8", "#0xc9", "#0xca", "#0xcb", "#0xcc", "#0xcd", "#0xce", "#0xcf",
	"#0xd0", "#0xd1", "#0xd2", "#0xd3", "#0xd4", "#0xd5", "#0xd6", "#0xd7",
	"#0xd8", "#0xd9", "#0xda", "#0xdb", "#0xdc", "#0xdd", "#0xde", "#0xdf",
	"#0xe0", "#0xe1", "#0xe2", "#0xe3", "#0xe4", "#0xe5", "#0xe6", "#0xe7",
	"#0xe8", "#0xe9", "#0xea", "#0xeb", "#0xec", "#0xed", "#0xee", "#0xef",
	"#0xf0", "#0xf1", "#0xf2", "#0xf3", "#0xf4", "#0xf5", "#0xf6", "#0xf7",
	"#0xf8", "#0xf9", "#0xfa", "#0xfb", "#0xfc", "#0xfd", "#0xfe", "#0xff"
};

/*****************************************************************************/

char *get_resource(int type, struct dnssession *session, char *buffer, int dots);
char *printablename(char *name, int withdots);

/*****************************************************************************/

//
// Extract information from received packets.
//

int
strnrcasecmp(const char *big, const char *little, size_t len)
{
    char *p;
    size_t lenl, lenb;
 
    lenl = strlen(little);
    lenb = strlen(big);

    if (lenl > lenb)
	return -1;
    if (len > lenl)
	return -1;

    p = (char *)big + lenb - len;
    return strncasecmp(p, little, len);
}

unsigned int
getlong(unsigned char *s)
{
    return 256*256*256*s[0] + 256*256*s[1] + 256*s[2] + s[3];
}

unsigned short
getshort(unsigned char *s)
{
    return 256*s[0] + s[1];
}

char *
getname(struct dnssession *session, char **thisname)
{
    int		compressing = 0;
    char *	p;
    static char	hostname[NS_MAXDNAME];

    //
    // Copy the name out of a received packet. It can be compressed.
    //

    //
    // If the name is empty, just return a dot.
    //
    if (*thisname[0] == 0) {
	strcpy(hostname, "\1.");
	(*thisname)++;
	return hostname;
    }

    p = *thisname;
    memset(hostname, 0, sizeof(hostname));
    while (p[0] != 0) {
	//
	// If a name is being compressed, set the pointer to the start of
	// the packet plus the offset. If this is the first compression,
	// move the end-of-this-name pointer two places further and stop
	// changing it from now.
	//
	if ((p[0]&0xc0) != 0) {
	    unsigned int offset;
	    char oldp;

	    oldp = p[0];
	    p[0] &= 0x3f;
	    offset = getshort(p);
	    p[0] = oldp;
	    p = session->recv_pkt + offset;
	    if (compressing == 0) *thisname += 2;

	    compressing = 1;
	    continue;
	}

	//
	// Just copy p[0]+1 bytes (+1 to save the length-byte). If
	// compression is not going on, move the end-of-this-name
	// pointer. The check for the next character being 0 is a
	// hack to make sure the end-of-name marked is skipped over
	// before returning the packet.
	// 
	//
	memcpy(hostname + strlen(hostname), p, p[0] + 1);
	if (compressing == 0) {
	    *thisname += p[0] + 1;
	    if (*thisname[0] == 0) *thisname += 1;
	}
	p += p[0] + 1;
    }

    return hostname;
}

char *
extract_rr(struct dnssession *session, char *thisrr, struct dnsrr **rr)
{
    struct dnsrr *	RR;
    char *		domainname;
    char *		p;

    RR = (struct dnsrr *)calloc(1, sizeof(struct dnsrr));
    RR->next = *rr;

    //
    // Extract just one resource-record.
    // If the record is a ns_t_ns or ns_t_cname, cache the name 
    // into data_string.
    //
    domainname = getname(session, &thisrr);
    RR->domainname = strdup(domainname);
    RR->domainname_string = strdup(printablename(domainname, 1));
    RR->type = getshort(thisrr);
    RR->class = getshort(thisrr + 2);
    RR->ttl = getlong(thisrr + 4);
    RR->datalength = getshort(thisrr + 8);
    RR->data = (unsigned char *)calloc(1, RR->datalength);
    memcpy(RR->data, thisrr + 10, RR->datalength);

    p = thisrr + 10;
    RR->data_string = strdup(get_resource(RR->type, session, p, 1));
    thisrr += 10 + RR->datalength;

    *rr = RR;
    return thisrr;
}

void
extract_data(struct dnssession *session)
{
    struct dnsheader *	header = NULL;
    struct dnsquestion *question = NULL;
    struct dnsrr *	answer = NULL;
    struct dnsrr *	authority = NULL;
    struct dnsrr *	additional = NULL;

    char *	pheader;
    char *	pquestion;
    char *	panswer;
    char *	pauthority;
    char *	padditional;

    char *pbuffer;
    int i;

    pbuffer = session->recv_pkt;

    //
    // Extract the header.
    //
    session->recv_pkt_header = pbuffer;
    pheader = pbuffer;
    header = (struct dnsheader *)calloc(1, sizeof(struct dnsheader));
    memcpy(header, session->recv_pkt, sizeof(struct dnsheader));
    header->identification = ntohs(header->identification);
    header->flags.flags = ntohs(header->flags.flags);
    header->nquestions = ntohs(header->nquestions);
    header->nanswerRR = ntohs(header->nanswerRR);
    header->nauthorityRR = ntohs(header->nauthorityRR);
    header->nadditionalRR = ntohs(header->nadditionalRR);
    pbuffer += sizeof(struct dnsheader);

    //
    // Extract the questions RR.
    //
    session->recv_pkt_question = pbuffer;
    pquestion = pbuffer;
    question = (struct dnsquestion *)calloc(1, sizeof(struct dnsquestion));
    question->query = strdup(getname(session, &pquestion));
    question->type = getshort(pquestion);
    question->class = getshort(pquestion + 2);
    pbuffer = pquestion + 4;

    //
    // Extract the answer RR
    //
    session->recv_pkt_answer = pbuffer;
    for (i = 0; i < header->nanswerRR; i++) {
	panswer = pbuffer;
	pbuffer = extract_rr(session, panswer, &answer);
    }

    //
    // Extract the authority RR
    //
    session->recv_pkt_authority = pbuffer;
    for (i = 0; i < header->nauthorityRR; i++) {
	pauthority = pbuffer;
	pbuffer = extract_rr(session, pauthority, &authority);
    }

    //
    // Extract the additional RR
    //
    session->recv_pkt_additional = pbuffer;
    for (i = 0; i < header->nadditionalRR; i++) {
	padditional = pbuffer;
	pbuffer = extract_rr(session, padditional, &additional);
    }

    session->recv_header = header;
    session->recv_question = question;
    session->answer = answer;
    session->additional = additional;
    session->authority = authority;
}

/*****************************************************************************/

//
// Dump verbose data to the screen
//

char *
printablename(char *name, int withdots)
{
    static char hostname[NS_MAXDNAME];
    char *p, q;

    //
    // Convert the name from label-format into 'human' readable format,
    // either with dots or the size of the label as seperators.
    //
    if (name == NULL || name[0] == 0) {
	if (withdots == 0)
	    strcpy(hostname, "(0)root");
	else
	    strcpy(hostname, ".");
	return hostname;
    }

    hostname[0] = 0;
    p = name;
    while (p[0] != 0) {
	if (withdots == 0)
	    sprintf(hostname + strlen(hostname), "(%d)", p[0]);
	else
	    strcat(hostname, ".");
	q = p[p[0] + 1];
	p[p[0] + 1] = 0;
	sprintf(hostname + strlen(hostname), "%s", p + 1);
	p = p + p[0] + 1;
	p[0] = q;
    }

    if (withdots == 0)
	return hostname;
    else
	return hostname + 1;	// ignore the dot at the beginning of the string
}

char *
get_class(int class)
{
    switch (class) {
    case ns_c_in:	return "Internet";
    case ns_c_chaos:	return "MIT Chaos-net";
    case ns_c_hs:	return "MIT Hesiod";
    case ns_c_none:	return "Pre-req in update";
    case ns_c_any:	return "Wildcard";
    default:		return "unknown";
    }
}

char *
get_type(int type)
{
    switch (type) {
    case ns_t_a:	return "A";
    case ns_t_ns:	return "NS";
    case ns_t_cname:	return "CNAME";
    case ns_t_soa:	return "SOA";
    case ns_t_ptr:	return "PTR";
    default:		return "unknown";
    }
}

char *
get_ttl(int ttl)
{
    static char retval[NS_MAXDNAME];

    //
    // Return the TTL as a weeks/days/hours/minuts/seconds value
    //

    retval[0] = 0;
    if (ttl > 7*24*60*60) {
	sprintf(retval, "%dw", ttl/(7*24*60*60));
	ttl %= 7*24*60*60;
    }
    if (ttl > 24*60*60) {
	sprintf(retval + strlen(retval), "%dd", ttl/(24*60*60));
	ttl %= 24*60*60;
    }
    if (ttl > 60*60) {
	sprintf(retval + strlen(retval), "%dh", ttl/(60*60));
	ttl %= 60*60;
    }
    if (ttl > 60) {
	sprintf(retval + strlen(retval), "%dm", ttl/(60));
	ttl %= 60;
    }
    if (ttl > 0) {
	sprintf(retval + strlen(retval), "%ds", ttl);
    }

    return retval;
}

char *
get_resource(int type, struct dnssession *session, char *buffer, int dots)
{
    static char retval[NS_MAXDNAME];

    //
    // Returns a parsed resource-data string. Only needed for
    // A, NS and CNAME records.
    //

    switch (type) {
    case  ns_t_a:
	sprintf(retval, "%hu.%hu.%hu.%hu",
		(unsigned char)buffer[0],
		(unsigned char)buffer[1],
		(unsigned char)buffer[2],
		(unsigned char)buffer[3]);
	return retval;

    case ns_t_aaaa:
	sprintf(retval,
		"%02x%02x:%02x%02x:%02x%02x:%02x%02x:"
		"%02x%02x:%02x%02x:%02x%02x:%02x%02x",
		(unsigned char)buffer[ 0], (unsigned char)buffer[ 1],
		(unsigned char)buffer[ 2], (unsigned char)buffer[ 3],
		(unsigned char)buffer[ 4], (unsigned char)buffer[ 5],
		(unsigned char)buffer[ 6], (unsigned char)buffer[ 7],
		(unsigned char)buffer[ 8], (unsigned char)buffer[ 9],
		(unsigned char)buffer[10], (unsigned char)buffer[11],
		(unsigned char)buffer[12], (unsigned char)buffer[13],
		(unsigned char)buffer[14], (unsigned char)buffer[15]
		);
	return retval;

    case ns_t_cname:
	strcpy(retval, printablename(getname(session, &buffer), dots));
	return retval;

    case ns_t_txt:
	strcpy(retval, printablename(getname(session, &buffer), dots));
	return retval;

    case ns_t_mx:
    {
	unsigned short us;

	us = getshort(buffer);
	buffer += 2;
	sprintf(retval, "%hu %s", us, printablename(getname(session, &buffer), dots));
	return retval;
    }

    case ns_t_hinfo:
	strcpy(retval, printablename(getname(session, &buffer), dots));
	return retval;

    case ns_t_ns:
	strcpy(retval, printablename(getname(session, &buffer), dots));
	return retval;

    case ns_t_ptr:
	strcpy(retval, printablename(getname(session, &buffer), dots));
	return retval;

    case ns_t_soa:
    {
	static char retval[3*NS_MAXDNAME];
	char mname[NS_MAXDNAME];
	char rname[NS_MAXDNAME];
	unsigned long ul;

	strcpy(mname, printablename(getname(session, &buffer), dots));
	strcpy(rname, printablename(getname(session, &buffer), dots));

	ul = getlong(buffer);
	sprintf(retval, "serial: %ld mname: %s rname: %s", ul, mname, rname);
	return retval;
    }
	
    default: return "unknown";
    }

}

void
dump_question(struct dnsquestion *question)
{
    printf("- Queryname:            %s\n", printablename(question->query, 0));
    printf("- Type:                 %hu (%s)\n",
				    question->type, get_type(question->type));
    printf("- Class:                %hu (%s)\n",
				    question->class, get_class(question->class));
}

void
dump_header(struct dnsheader *header)
{
    printf("- Identifier:           0x%04hX\n", header->identification);
    printf("- Flags:                0x%02hX (", header->flags.flags);

    if (header->flags.bit.qr) printf("R "); else printf("Q ");
    if (header->flags.bit.aa) printf("AA ");
    if (header->flags.bit.tc) printf("TC ");
    if (header->flags.bit.rd) printf("RD ");
    if (header->flags.bit.ra) printf("RA ");
    printf(")\n");

    printf("- Opcode:               %hu ", header->flags.bit.opcode);
    switch (header->flags.bit.opcode) {
    case 0: printf("(Standard query)\n");break;
    case 1: printf("(Inverse query)\n");break;
    case 2: printf("(Server status request)\n");break;
    case 4: printf("(Notify)\n");break;
    case 5: printf("(Update)\n");break;
    case 14: printf("(Zone init)\n");break;
    case 15: printf("(Zone Ref)\n");break;
    default: printf("(unknown)\n");
    }

    printf("- Return code:          %hu ", header->flags.bit.rcode);
    switch (header->flags.bit.rcode) {
    case 0: printf("(No error)\n");break;
    case 1: printf("(Format error)\n");break;
    case 2: printf("(Server failure)\n");break;
    case 3: printf("(Name error)\n");break;
    case 4: printf("(Not implemented)\n");break;
    case 5: printf("(Refused)\n");break;
    case 6: printf("(Name exists)\n");break;
    case 7: printf("(RRset exists)\n");break;
    case 8: printf("(RRset does not exist)\n");break;
    case 9: printf("(Not authoritive)\n");break;
    case 10: printf("(Zone of record different from zone section)\n");break;
    default: printf("(unknown)\n");break;
    }

    printf("- Number questions:     %hu\n", header->nquestions);
    printf("- Number answer RR:     %hu\n", header->nanswerRR);
    printf("- Number authority RR:  %hu\n", header->nauthorityRR);
    printf("- Number additional RR: %hu\n", header->nadditionalRR);
}

void
dump_rr(struct dnsrr *rr, struct dnssession *session)
{
    printf("- Domainname:           %s\n", printablename(rr->domainname, 0));
    printf("- Type:                 %hu (%s)\n",
				    rr->type, get_type(rr->type));
    printf("- Class:                %hu (%s)\n",
				    rr->class, get_class(rr->class));
    printf("- TTL:                  %u (%s)\n",
				    rr->ttl, get_ttl(rr->ttl));
    printf("- Resource length:      %hu\n", rr->datalength);
    printf("- Resource data:        %s\n",
				    get_resource(rr->type, session, rr->data, 0));
}

void
dump_data(struct sockaddr_in *dest4, struct sockaddr_in6 *dest6, struct dnssession *session)
{
    struct dnsrr *answerrr;
    struct dnsrr *authorityrr;
    struct dnsrr *additionalrr;

    if (verbose == 0) return;

    //
    // Dumps the output of session on the screen.
    //

    if (dest4 != NULL) {
	printf("IP HEADER\n");
	printf("- Destination address:  %s\n", inet_ntoa(dest4->sin_addr));
    }
    if (dest6 != NULL) {
	printf("IP HEADER\n");
	printf("- Destination address:  %s\n", "XXX");
    }

    if (session->send_header != NULL && session->recv_header == NULL) {
	printf("DNS HEADER (send)\n");
	dump_header(session->send_header);
    }

    if (session->recv_header != NULL) {
	printf("DNS HEADER (recv)\n");
	dump_header(session->recv_header);
    }

    if (session->send_question != NULL && session->recv_question == NULL) {
	printf("QUESTIONS (send)\n");
	dump_question(session->send_question);
    }
    if (session->recv_question != NULL) {
	printf("QUESTIONS (recv)\n");
	dump_question(session->recv_question);
    }

    answerrr = session->answer;
    while (answerrr != NULL) {
	printf("ANSWER RR\n");
	dump_rr(answerrr, session);
	answerrr = answerrr->next;
    }

    authorityrr = session->authority;
    while (authorityrr != NULL) {
	printf("AUTHORITY RR\n");
	dump_rr(authorityrr, session);
	authorityrr = authorityrr->next;
    }

    additionalrr = session->additional;
    while (additionalrr != NULL) {
	printf("ADDITIONAL RR\n");
	dump_rr(additionalrr, session);
	additionalrr = additionalrr->next;
    }
}

/*****************************************************************************/

//
// Packet creation routines
//

unsigned char *
create_packet(struct dnssession *session)
{
    unsigned char *	pkt;
    struct dnsheader	nheader;	// networked header
    struct dnsquestion	nquestion;	// networked question
    int			len;

    //
    // Transform a "host" packet into a "network" packet.
    // In other words, copy everything and byte-swap some field.
    //

    len = sizeof(struct dnsheader) + session->send_question->querylength + 4;
    pkt = (unsigned char *)calloc(1, len);

    memcpy(&nheader, session->send_header, sizeof(struct dnsheader));
    memcpy(&nquestion, session->send_question, sizeof(struct dnsquestion));

    nheader.identification = htons(session->send_header->identification);
    nheader.flags.flags = htons(session->send_header->flags.flags);
    nheader.nquestions = htons(session->send_header->nquestions);
    nheader.nanswerRR = htons(session->send_header->nanswerRR);
    nheader.nauthorityRR = htons(session->send_header->nauthorityRR);
    nheader.nadditionalRR = htons(session->send_header->nadditionalRR);

    nquestion.type = htons(session->send_question->type);
    nquestion.class = htons(session->send_question->class);

    memcpy(pkt, &nheader, sizeof(struct dnsheader));
    memcpy(pkt + sizeof(struct dnsheader), nquestion.query, nquestion.querylength);
    memcpy(pkt + sizeof(struct dnsheader) + nquestion.querylength, &(nquestion.type), 4);

    return pkt;
}

/*****************************************************************************/

//
// Network routines
//

int
create_socket(int PF)
{
    int	s;

    if ((s = socket(PF, SOCK_DGRAM, 0)) < 0) {
	perror("create_socket/socket");
	printf("If this is an IPv6 problem, run configure with --disable-ipv6\n");
	exit(1);
    }

    if (global_source_address != NULL) {
	struct addrinfo hints, *src_res;
	int error;

	// thanks to the src/usr.bin/telnet/commands.c of FreeBSD 4.7!
        memset(&hints, 0, sizeof(hints));
        hints.ai_flags = AI_NUMERICHOST;
        hints.ai_family = PF_INET;
        hints.ai_socktype = SOCK_DGRAM;
        error = getaddrinfo(global_source_address, 0, &hints, &src_res);
        if (error == EAI_NONAME) {
	    hints.ai_flags = 0;
	    error = getaddrinfo(global_source_address, 0, &hints, &src_res);
        }
        if (error != 0) {
	    perror(global_source_address);
	    if (error == EAI_SYSTEM)
		perror(global_source_address);
	    exit(1);
        }

	if (bind(s, src_res->ai_addr, src_res->ai_addrlen) < 0) {
	    perror("create_socket/bind");
	    exit(1);
	}
    }

    return s;
}

int
send_data(char *server, struct dnssession *session)
{
    int		cc;
    char *	pkt;
    int		len;
    struct sockaddr_in dest4;
#ifndef NOIPV6
    struct sockaddr_in6 dest6;
#endif

    len = sizeof(struct dnsheader) + session->send_question->querylength + 4;

#ifndef NOIPV6
    if (session->ipv6) {
	memset(&dest6, 0, sizeof(struct sockaddr_in6));
	dest6.sin6_family = AF_INET6;
	dest6.sin6_port = htons(53);
	inet_pton(AF_INET6, server, &dest6.sin6_addr);

	dump_data(NULL, &dest6, session);

    } else
#endif
    {
	memset(&dest4, 0, sizeof(struct sockaddr_in));
	dest4.sin_family = AF_INET;
	dest4.sin_port = htons(53);
	dest4.sin_addr.s_addr = inet_addr(server);

	dump_data(&dest4, NULL, session);
    }

    pkt = create_packet(session);
    if ((cc = sendto(session->socket, pkt, len, 0,
#ifndef NOIPV6
	    session->ipv6 ? (struct sockaddr *)&dest6 : (struct sockaddr *)&dest4,
	    session->ipv6 ? sizeof(struct sockaddr_in6) : sizeof(struct sockaddr_in)
#else
	    (struct sockaddr *)&dest4, sizeof(struct sockaddr_in)
#endif
	)) == -1) {
	    perror("send_data/sendto");
    }

    free(pkt);
    return cc;
}

int
receive_data(struct dnssession *session, int retry)
{
    char		buffer[2048];
    int			len;
    fd_set		in_set;
    struct timeval	timeout;

    timeout.tv_sec = 5 * (1 << retry);
    timeout.tv_usec = 0;
    if (global_timeout && timeout.tv_sec > global_timeout)
	timeout.tv_sec = global_timeout;

    FD_ZERO(&in_set);
    FD_SET(session->socket, &in_set);

    if (select(session->socket + 1, &in_set, NULL, NULL, &timeout) < 0)
	return 2;
    if (!FD_ISSET(session->socket, &in_set))
	return 3;
    if ((len = recv(session->socket, buffer, sizeof(buffer), 0)) == -1)
	return 1;

    if (getshort(buffer) != session->send_header->identification) {
	fprintf(stderr, "Expected id: %hx, received id: %hx\n",
	    session->send_header->identification, getshort(buffer));
	return 4;
    }

    session->recv_len = len;
    session->recv_pkt = (char *)calloc(1, len);
    memcpy(session->recv_pkt, buffer, len);
    extract_data(session);
    dump_data(NULL, NULL, session);
    return 0;
}

/*****************************************************************************/

//
// Record creation routines
//

void
create_header(struct dnssession *session)
{

    session->send_header = (struct dnsheader *)calloc(1, sizeof(struct dnsheader));

    //
    // Create a random identifier between 0 and 32675. It could be up to
    // 65535, but the high bit sometimes screws things up when comparing
    // the value received. Looks like it has something to do with
    // one-complement and two-complement, but don't know how to solve it.
    //
    session->send_header->identification     = random() & 0x7F7F;
    session->send_header->nquestions	     = 1;
}

void
create_question(struct dnssession *session, char *name)
{
    char *p, *q;

    session->send_question =
	(struct dnsquestion *)calloc(1, sizeof(struct dnsquestion));

    session->send_question->querylength = strlen(name) + 2;
    session->send_question->query =
	(unsigned char *)calloc(1, session->send_question->querylength + 2);
    strcpy(session->send_question->query + 1, name);

    p = session->send_question->query + 1;
    q = session->send_question->query;
    while (p[0] != 0) {
	if (p[0] == '.') {
	    q[0] = p - q - 1;
	    q = p;
	}
	p++;
    }
    q[0] = p - q - 1;

    session->send_question->type = global_querytype;
    session->send_question->class = ns_c_in;
}

/*****************************************************************************/

//
// A record caching routines.
// It's just a linked list which hold a bunch of IP address from which
// we have gotten answers.
//

struct arecord *arecords = NULL;

void
add_arecord(struct dnssession *session, struct dnsrr *rr, char *server_name, char *server_ip)
{
    struct arecord *	arecord;

    arecord = (struct arecord *)calloc(1, sizeof(struct arecord));
    arecord->server_name = strdup(server_name);
    arecord->server_ip = strdup(server_ip);
    arecord->rr_name = strdup(printablename(rr->domainname, 1));

    if (rr->data_string == NULL)
	arecord->rr_data = NULL;
    else
	arecord->rr_data = strdup(rr->data_string);

    arecord->next = arecords;
    arecords = arecord;
}

void
display_arecords(void)
{
    struct arecord *	arecord;
    int			i;
    char		s[10];

    arecord = arecords;
    while (arecord != NULL) {
	printf("%s (%s)%n",
	    arecord->server_name, arecord->server_ip, &i);
	if (40 - i < 1)
	    printf(" ");
	else {
	    sprintf(s, "%%%ds", 40 - i);
	    printf(s, " ");
	}
	printf("%s -> %s\n", arecord->rr_name, arecord->rr_data);
	arecord = arecord->next;
    }
}

/*****************************************************************************/

//
// Answer caching routines.
// It's just a linked list which hold a bunch of IP address from which
// we have gotten answers.
//

struct answer *answers = NULL;

void
add_answer(char *server)
{
    struct answer *answer;

    answer = (struct answer *)calloc(1, sizeof(struct answer));
    answer->server = strdup(server);
    answer->next = answers;
    answers = answer;
}

int
has_answer(char *server)
{
    struct answer *answer;

    answer = answers;
    while (answer != NULL) {
	if (strcmp(answer->server, server) == 0)
	    return 1;
	answer = answer->next;
    }
    return 0;
}

/*****************************************************************************/

//
// Busy signal routines.
// It's just a linked list which hold a bunch of IP address of servers
// we are currently querying. Just to prevent that we query until we're
// out of memory.
//

struct busy *busies = NULL;

void
add_busy(char *server)
{
    struct busy *busy;

    busy = (struct busy *)calloc(1, sizeof(struct busy));
    busy->server = strdup(server);
    busy->next = busies;
    busies = busy;
}

void
remove_busy(char *server)
{
    struct busy *busy, *prev;

    if (strcmp(busies->server, server) == 0) {
	busy = busies;
	busies = busies->next;
	free(busy);
	return;
    }

    prev = busies;
    busy = prev->next;
    while (busy != NULL) {
	if (strcmp(busy->server, server) == 0) {
	    prev->next = busy->next;
	    free(busy);
	    return;
	}
    }
}

int
is_busy(char *server)
{
    struct busy *busy;

    busy = busies;
    while (busy != NULL) {
	if (strcmp(busy->server, server) == 0)
	    return 1;
	busy = busy->next;
    }
    return 0;
}

/*****************************************************************************/

//
// The core of this program
//

int
create_session(char *host, char *server_ip, int ipv6, char *server_name,
    char *server_authfor, int depth, char *prefix, int last)
{
    struct dnssession * session;
    struct dnsrr *	rrauth;
    struct dnsrr *	rradd;
    int			i, retval, errorcode, refersbackwards = 0;
    char		s[NS_MAXDNAME];

    //
    // Print the graphs in front of the servernames
    //
    if (depth != 0) {
	printf("%s%c", prefix, last == 1 ? ' ' : '|');
	printf("\\___ ");
    }

    printf("%s ", server_name);

    if (server_authfor != NULL)
	printf("[%s] ", server_authfor);

    if (server_ip[0] == 0) {
	printf("(No IP address)");
	return 1;
    }

    if (global_noipv6 && ipv6) {
	printf("(%s) Not queried", server_ip);
	return 1;
    }
#ifdef NOIPV6
    if (ipv6) {
	printf("(%s) Not queried", server_ip);
	return 1;
    }
#endif

    printf("(%s) ", server_ip);
    fflush(stdout);

    //
    // If this address is already being queried, ignore it to prevent
    // recursion. Do not add it as being cached, because one or more 
    // records in it might be unreachable.
    //
    if (is_busy(server_ip) == 1) {
	printf("Lame server ");
	fflush(stdout);
	return 0;
    }

    //
    // Ignore things we have already displayed
    //
    if (global_caching && has_answer(server_ip)) {
	printf("(cached)");
	return 0;
    }

    //
    // To prevent infinite recursion, mark this server as being probed
    //
    add_busy(server_ip);

    //
    // Create a nice DNS packet. Each session has its own port, so we
    // don't have to worry about packets received from previous sessions.
    //
    session = (struct dnssession *)calloc(1, sizeof(struct dnssession));
    session->socket = create_socket(ipv6 ? AF_INET6 : AF_INET);
    session->ipv6 = ipv6;
    session->server = strdup(server_ip);
    session->host = strdup(host);
    create_header(session);
    create_question(session, host);

    //
    // Send the packet and wait for an answer.
    //
    errorcode = 0;
    for (i = 0; i < global_retries; i++) {
	send_data(server_ip, session);
	if ((errorcode = receive_data(session, i)) == 0)
	    break;
	printf("* ");
	fflush(stdout);
    }
    close(session->socket);

    //
    // Timeouts and other weird stuff. Make sure we remove the busy-flag.
    //
    if (errorcode != 0) {
	remove_busy(server_ip);
	if (global_negative_caching) add_answer(server_ip);
	return 1;
    }

    //
    // We have an answerRR from this server, print a message.
    // Also cache it for later.
    //
    if (session->recv_header->nanswerRR != 0) {
	struct dnsrr *answer;

	if (session->recv_header->flags.bit.aa)
	    printf("Got authoritative answer ");
	else
	    printf("Got answer ");

	answer = session->answer;
	while (answer != NULL) {
	    if (answer->type != global_querytype)
		printf("[received type is %s] ", rr_types[answer->type]);
	    add_arecord(session, answer, server_name, server_ip);
	    answer = answer->next;
	}
	if (global_caching) add_answer(server_ip);
    }

    //
    // If the domainname in the authority section is the same as
    // the one from this server, mark it as lame.
    //
    if (session->authority != NULL && server_authfor != NULL) {
	if (session->recv_header->flags.bit.aa == 0 &&
	    strcasecmp(server_authfor,
		       session->authority->domainname_string) == 0) {
	    printf("Lame server ");
	    remove_busy(server_ip);
	    return 0;
	}
    }


    //
    // If the current server has an authoritative answer, don't go
    // further.
    //
    if (session->recv_header->flags.bit.aa) {
	remove_busy(server_ip);
	return 0;
    }

    //
    // When no answers were received, go through the list of authorities
    // and ask them for it. Maybe the IP address of the authority was
    // in the additional RRs, maybe there are two IP address in
    // the list of additional RRs, maybe there are none and a
    // gethostbyname() has to be done.
    //
    retval = 0;
    rrauth = session->authority;
    while (rrauth != NULL) {
	int	found = 0;
	char	nextserver_ip[NS_MAXDNAME];
	char	nextserver_name[NS_MAXDNAME];

	//
	// Only serve NS records
	//
	if (rrauth->type != ns_t_ns) {
	    rrauth = rrauth->next;
	    continue;
	}

	//
	// If the domainname in the authority section is not a postfix
	// of what we have, don't go there. This might happen if we are
	// looking through cnames from different domains.
	//
	if (strcmp(rrauth->domainname_string, ".") == 0) {
	    rrauth = rrauth->next;
	    if (!refersbackwards++)
		printf("Refers backwards ");
	    continue;
	}

	if (server_authfor != NULL && strcmp(server_authfor, ".") != 0 &&
	    strnrcasecmp(rrauth->domainname_string, server_authfor,
		strlen(server_authfor)) != 0) {
	    if (!refersbackwards++)
		printf("Refers backwards ");
	    rrauth = rrauth->next;
	    continue;
	}

	//
	// Count the number of IP addresses in the additionalRR
	// for this authorityRR
	//
	rradd = session->additional;
	while (rradd != NULL) {
	   if (strcmp(printablename(rradd->domainname, 1),
		rrauth->data_string) == 0)
		found++;
	    rradd = rradd->next;
	}

	rradd = session->additional;
	do {
	    //
	    // Find the first IP address
	    //
	    while (rradd != NULL) {
		if (strcmp(printablename(rradd->domainname, 1),
			   rrauth->data_string) == 0)
		    break;
		rradd = rradd->next;
	    }

	    //
	    // Prepare the graphs in front of the servers name
	    //
	    sprintf(s, "%s%c%s",
		prefix, last == 1 ? ' ' : '|', depth == 0 ? "" : "     ");

	    //
	    // Recurse into this server...
	    //
	    if (rradd != NULL) {
		// This is easy, we got the IP address in the additional
		// section. Don't worry about additional records with the
		// same name, they're done automaticly after this one.

		printf("\n");

		strcpy(nextserver_name, printablename(rradd->domainname, 1));
		strcpy(nextserver_ip, rradd->data_string);
		retval += create_session(host,
			    nextserver_ip, (rradd->type == ns_t_aaaa) ? 1 : 0,
			    nextserver_name, rrauth->domainname_string,
			    depth + 1, s,
			    (rrauth->next == NULL && found <= 1) ? 1 : 0);
	    } else {
		int ip, ipfound = 0;

		strcpy(nextserver_name, rrauth->data_string);

#ifdef NOIPV6
		for (ip = 0; ip < 1; ip++) {
#else
		for (ip = 0; ip < 2; ip++) {
#endif
		    int count, i;
		    struct hostent *h;
		    char **addr_list = NULL;

		    h = gethostbyname2(nextserver_name,
			    ip == 0 ? AF_INET : AF_INET6);
		    if (h == NULL) continue;

		    //
		    // One or more IP address were found. Go through all
		    // of them (make sure they're saved before calling
		    // gethostbyname() again).
		    //
		    count = 0;
		    while (h->h_addr_list[count] != NULL) count++;
		    addr_list = (char **)calloc(count, sizeof(char *));
		    for (i = 0; i < count; i++) {
			addr_list[i] = (char *)calloc(1, h->h_length);
			memcpy(addr_list[i], h->h_addr_list[i], h->h_length);
		    }

		    for (i = 0; i < count; i++) {
			if (ip == 0) {
			    unsigned char *s = addr_list[i];
			    sprintf(nextserver_ip,
				"%hu.%hu.%hu.%hu", s[0], s[1], s[2], s[3]);
			    ipv6 = 0;
			} else {
			    unsigned char *s = addr_list[i];
			    sprintf(nextserver_ip,
				"%02hx%02hx:%02hx%02hx:%02hx%02hx:%02hx%02hx:"
				"%02hx%02hx:%02hx%02hx:%02hx%02hx:%02hx%02hx",
				s[ 0], s[ 1], s[ 2], s[ 3], s[ 4], s[ 5], s[ 6], s[ 7],
				s[ 8], s[ 9], s[10], s[11], s[12], s[13], s[14], s[15]);
			    ipv6 = 1;
			}
			printf("\n");

			retval += create_session(host,
			    nextserver_ip, ip == 1,
			    nextserver_name, rrauth->domainname_string,
			    depth + 1, s,
			    (rrauth->next == NULL && found <= 1) ? 1 : 0);
			ipfound++;
		    }
		}

		if (ipfound == 0) {
		    //
		    // No IP address was found for this hostname.
		    // Just call the function and let them print
		    // an error.
		    //
		    printf("\n");
		    nextserver_ip[0] = 0;
		    retval += create_session(host,
			nextserver_ip, 0,
			nextserver_name, rrauth->domainname_string,
			depth + 1, s,
			(rrauth->next == NULL && found <= 1) ? 1 : 0);
		}
	    }

	    //
	    // If there are no more IP addresses, then do the next
	    // authorityRR.
	    //
	    if (--found <= 0)
		break;
	    if (rradd != NULL)
		rradd = rradd->next;
	} while (rradd != NULL);
	rrauth = rrauth->next;
    }

    //
    // Cache it for later if there were no servers which went wrong.
    // Also remove the busy flag.
    //
    if (global_caching && retval == 0) add_answer(server_ip);
    remove_busy(server_ip);

    return retval;
}

/*****************************************************************************/

//
// Startup, usage and win32-initialization
// Win32-initialization by Mike Black <mblack@csihq.com>
//

void
usage(void)
{
    fprintf(stderr,
	"DNSTRACER version 1.8.1 - (c) Edwin Groothuis - http://www.mavetju.org\n"
	"Usage: dnstracer [options] [host]\n"
	"\t-c: disable local caching, default enabled\n"
	"\t-C: enable negative caching, default disabled\n"
	"\t-o: enable overview of received answers, default disabled\n"
	"\t-q <querytype>: query-type to use for the DNS requests, default A\n"
	"\t-r <retries>: amount of retries for DNS requests, default 3\n"
	"\t-s <server>: use this server for the initial request, default localhost\n"
	"\t             If . is specified, A.ROOT-SERVERS.NET will be used.\n"
	"\t-t <maximum timeout>: Limit time to wait per try\n"
	"\t-v: verbose\n"
	"\t-S <ip address>: use this source address.\n"
    );
#ifndef NOIPV6
    fprintf(stderr,
	"\t-4: don't query IPv6 servers\n"
    );
#endif
    exit(1);
}

#ifdef WIN32
int
wsockinit(void)
{
    WSADATA wsaData;		/* Structure for WinSock setup communication */

    if (WSAStartup(MAKEWORD(2, 0), &wsaData) != 0) { /* Load Winsock 2.0 DLL */
	fprintf(stderr, "WSAStartup() failed");
	exit(1);
    }
    return 1;
}
#endif


int
main1(int argc, char **argv)
{
    int		ch;
    char *	server_name = "127.0.0.1";
    char *	server_ip = "0000:0000:0000:0000:0000:0000:0000:0000";
    char	ipaddress[NS_MAXDNAME];
    char	argv0[NS_MAXDNAME];
    int		server_root = 0;
    int		ipv6 = 0;

#ifndef WIN32
    //
    // Get the first nameserver from /etc/resolv.conf
    //
    // This piece of code was donated by Moritz Barsnick. 
    //
    if (!(_res.options & RES_INIT))
	res_init();

    if (_res.nscount > 0) {
	server_ip = strdup(inet_ntoa(_res.nsaddr_list[0].sin_addr));
	server_name = strdup(server_ip);
    }
#endif

#ifdef WIN32
    wsockinit();
#endif
    printf("before getopt()\n");
    while ((ch = getopt(argc, argv, "4cCoq:r:S:s:t:v")) != -1) {
	switch (ch) {
	case '4':
#ifndef NOIPV6
	    global_noipv6 = 1;
#else
	    printf("Option -4 ignored\n");
#endif
	    break;

	case 'c':
	    global_caching = 0;
	    break;

	case 'C':
	    global_negative_caching = 1;
	    break;

	case 'o':
	    global_overview = 1;
	    break;

	case 'q':
	    if ((global_querytype = atoi(optarg)) < 1) {
		#define compare(s, v) \
			if (strcmp((s), optarg) == 0) global_querytype = (v)

		compare("a", 	ns_t_a		);
		compare("aaaa", ns_t_aaaa	);
		compare("a6", 	ns_t_aaaa	);
		compare("ptr", 	ns_t_ptr	);
		compare("cname",ns_t_cname	);
		compare("hinfo",ns_t_hinfo	);
		compare("mx", 	ns_t_mx		);
		compare("ns", 	ns_t_ns		);
		compare("txt", 	ns_t_txt	);
		compare("soa", 	ns_t_soa	);

		if (global_querytype < 1) {
		    fprintf(stderr,
			"Strange querytype, setting to default\n");
		    global_querytype = DEFAULT_QUERYTYPE;
		}
	    }
	    break;

	case 'r':
	    if ((global_retries = atoi(optarg)) < 1) {
		fprintf(stderr,
		    "Strange amount of retries, setting to default\n");
		global_retries = DEFAULT_RETRIES;
	    }
	    break;

	case 'S':
	    global_source_address = optarg;
	    break;

	case 's':
	    server_name = optarg;
	    if (strcmp(server_name, ".") == 0) {
		server_name = strdup("A.ROOT-SERVERS.NET");
		server_root = 1;
	    }
	    break;

	case 't':
	    global_timeout = atoi(optarg);
	    break;

	case 'v':
	    verbose = 1;
	    break;

	default:
	    usage();
	}
    }
    printf("end getopt()\n");
    printf("optind: %d\n", optind);
    argc -= optind;
    argv += optind;

    if (argv[0] == NULL) usage();

    // check for a trailing dot
    printf("before strcpy()\n");
    strcpy(argv0, argv[0]);
    if (argv0[strlen(argv[0]) - 1] == '.') argv0[strlen(argv[0]) - 1] = 0;

    printf("Tracing to %s[%s] via %s, maximum of %d retries\n",
	argv0, rr_types[global_querytype], server_name, global_retries);

    srandom(time(NULL));

    {
	struct hostent *h = NULL;

#ifndef NOIPV6
	h = gethostbyname2(server_name, AF_INET6);
#endif
	if (h == NULL || global_noipv6)
	    h = gethostbyname2(server_name, AF_INET);
	if (h == NULL) {
	    fprintf(stderr, "Cannot find IP address for %s\n", server_name);
	    return 1;
	}
	if (h->h_addrtype == AF_INET) {
	    unsigned char *s = h->h_addr_list[0];
	    sprintf(ipaddress, "%hu.%hu.%hu.%hu", s[0], s[1], s[2], s[3]);
	    ipv6 = 0;
	} else {
	    unsigned char *s = h->h_addr_list[0];
	    sprintf(ipaddress,
		"%02hx%02hx:%02hx%02hx:%02hx%02hx:%02hx%02hx:"
		"%02hx%02hx:%02hx%02hx:%02hx%02hx:%02hx%02hx",
		s[ 0], s[ 1], s[ 2], s[ 3], s[ 4], s[ 5], s[ 6], s[ 7],
		s[ 8], s[ 9], s[10], s[11], s[12], s[13], s[14], s[15]);
	    ipv6 = 1;
	}
    }

    create_session(argv0, ipaddress, ipv6, server_name,
	server_root == 0 ? NULL : ".", 0, "", 1);

    printf("\n");

    if (global_overview != 0) {
	printf("\n");
	display_arecords();
    }

    return 0;
}

int main(){
    int argc = 3;
    char *param;
    param = "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA";
    char *argv[] = {"dnstracer", "-v", param};
    main1(argc, argv);
}
