; ModuleID = '/home/zzhzz/ISSTA23-Artifacts/parser/testcases/dnstracer.c'
source_filename = "/home/zzhzz/ISSTA23-Artifacts/parser/testcases/dnstracer.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32:64-S128-ni:1:10:20"
target triple = "wasm32-unknown-wasi"

%struct._IO_FILE = type opaque
%struct.arecord = type { i8*, i8*, i32, i8*, i8*, %struct.arecord* }
%struct.answer = type { i8*, %struct.answer* }
%struct.busy = type { i8*, %struct.busy* }
%struct.__res_9_state = type { i32, i32, i32, i32, [3 x %struct.sockaddr_in], i16, [7 x i8*], [256 x i8], i32, i8, [3 x i8], [10 x %struct.anon], i32 (i32 (%struct.sockaddr**, i8**, i32*, i8*, i32, i32*)*)*, i32 (i32 (%struct.sockaddr*, i8*, i32, i8*, i32, i32*)*)*, i32, i32, i32, i32, %union.anon.1 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.anon = type { %struct.in_addr, i32 }
%struct.sockaddr = type { i16, [0 x i8], [14 x i8] }
%union.anon.1 = type { %struct.anon.2, [24 x i8] }
%struct.anon.2 = type { i16, [3 x i16], [3 x i32], %struct.__res_9_state_ext* }
%struct.__res_9_state_ext = type opaque
%struct.dnssession = type { %struct.dnsheader*, %struct.dnsquestion*, %struct.dnsheader*, %struct.dnsquestion*, %struct.dnsrr*, %struct.dnsrr*, %struct.dnsrr*, %struct.dnssession*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32 }
%struct.dnsheader = type { i16, %union.anon, i16, i16, i16, i16 }
%union.anon = type { i16 }
%struct.dnsquestion = type { i32, i8*, i16, i16 }
%struct.dnsrr = type { i8*, i8*, i16, i16, i32, i16, i8*, i8*, %struct.dnsrr* }
%struct.bit = type { i16 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32, [4 x i8] }
%struct.in6_addr = type { [16 x i8] }
%struct.addrinfo = type { i32, i32, i32, i32, i32, i8*, %struct.sockaddr*, %struct.addrinfo* }
%struct.addrinfo.0 = type opaque
%struct.fd_set = type { i32, [1024 x i32] }
%struct.timeval = type { i64, i64 }
%struct.hostent = type { i8*, i8**, i32, i32, i8** }

@verbose = global i32 0, align 4, !dbg !0
@global_overview = global i32 0, align 4, !dbg !111
@global_retries = global i32 3, align 4, !dbg !113
@global_caching = global i32 1, align 4, !dbg !115
@global_negative_caching = global i32 0, align 4, !dbg !117
@global_querytype = global i32 1, align 4, !dbg !119
@global_noipv6 = global i32 0, align 4, !dbg !121
@global_timeout = global i32 0, align 4, !dbg !123
@global_source_address = global i8* null, align 4, !dbg !125
@.str = private unnamed_addr constant [6 x i8] c"#0x00\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"ns\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"#0x03\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"#0x04\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"cname\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"soa\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"#0x07\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"#0x08\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"#0x09\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"#0x0a\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"#0x0b\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"#ptr\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"#hinfo\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"#0x0e\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"#mx\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"#txt\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"#0x11\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"#0x12\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"#0x13\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"#0x14\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"#0x15\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"#0x16\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"#0x17\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"#0x18\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"#0x19\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"#0x1a\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"#0x1b\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"#0x1c\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"#0x1d\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"#0x1e\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"#0x1f\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"#0x20\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"#0x21\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"#0x22\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"#0x23\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"#0x24\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"#0x25\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"#0x26\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"#0x27\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"#0x28\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"#0x29\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"#0x2a\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"#0x2b\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"#0x2c\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"#0x2d\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"#0x2e\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"#0x2f\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"#0x30\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"#0x31\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"#0x32\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"#0x33\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"#0x34\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"#0x35\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"#0x36\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"#0x37\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"#0x38\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"#0x39\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"#0x3a\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"#0x3b\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"#0x3c\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"#0x3d\00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"#0x3e\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"#0x3f\00", align 1
@.str.64 = private unnamed_addr constant [6 x i8] c"#0x40\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"#0x41\00", align 1
@.str.66 = private unnamed_addr constant [6 x i8] c"#0x42\00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"#0x43\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"#0x44\00", align 1
@.str.69 = private unnamed_addr constant [6 x i8] c"#0x45\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"#0x46\00", align 1
@.str.71 = private unnamed_addr constant [6 x i8] c"#0x47\00", align 1
@.str.72 = private unnamed_addr constant [6 x i8] c"#0x48\00", align 1
@.str.73 = private unnamed_addr constant [6 x i8] c"#0x49\00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"#0x4a\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"#0x4b\00", align 1
@.str.76 = private unnamed_addr constant [6 x i8] c"#0x4c\00", align 1
@.str.77 = private unnamed_addr constant [6 x i8] c"#0x4d\00", align 1
@.str.78 = private unnamed_addr constant [6 x i8] c"#0x4e\00", align 1
@.str.79 = private unnamed_addr constant [6 x i8] c"#0x4f\00", align 1
@.str.80 = private unnamed_addr constant [6 x i8] c"#0x50\00", align 1
@.str.81 = private unnamed_addr constant [6 x i8] c"#0x51\00", align 1
@.str.82 = private unnamed_addr constant [6 x i8] c"#0x52\00", align 1
@.str.83 = private unnamed_addr constant [6 x i8] c"#0x53\00", align 1
@.str.84 = private unnamed_addr constant [6 x i8] c"#0x54\00", align 1
@.str.85 = private unnamed_addr constant [6 x i8] c"#0x55\00", align 1
@.str.86 = private unnamed_addr constant [6 x i8] c"#0x56\00", align 1
@.str.87 = private unnamed_addr constant [6 x i8] c"#0x57\00", align 1
@.str.88 = private unnamed_addr constant [6 x i8] c"#0x58\00", align 1
@.str.89 = private unnamed_addr constant [6 x i8] c"#0x59\00", align 1
@.str.90 = private unnamed_addr constant [6 x i8] c"#0x5a\00", align 1
@.str.91 = private unnamed_addr constant [6 x i8] c"#0x5b\00", align 1
@.str.92 = private unnamed_addr constant [6 x i8] c"#0x5c\00", align 1
@.str.93 = private unnamed_addr constant [6 x i8] c"#0x5d\00", align 1
@.str.94 = private unnamed_addr constant [6 x i8] c"#0x5e\00", align 1
@.str.95 = private unnamed_addr constant [6 x i8] c"#0x5f\00", align 1
@.str.96 = private unnamed_addr constant [6 x i8] c"#0x60\00", align 1
@.str.97 = private unnamed_addr constant [6 x i8] c"#0x61\00", align 1
@.str.98 = private unnamed_addr constant [6 x i8] c"#0x62\00", align 1
@.str.99 = private unnamed_addr constant [6 x i8] c"#0x63\00", align 1
@.str.100 = private unnamed_addr constant [6 x i8] c"#0x64\00", align 1
@.str.101 = private unnamed_addr constant [6 x i8] c"#0x65\00", align 1
@.str.102 = private unnamed_addr constant [6 x i8] c"#0x66\00", align 1
@.str.103 = private unnamed_addr constant [6 x i8] c"#0x67\00", align 1
@.str.104 = private unnamed_addr constant [6 x i8] c"#0x68\00", align 1
@.str.105 = private unnamed_addr constant [6 x i8] c"#0x69\00", align 1
@.str.106 = private unnamed_addr constant [6 x i8] c"#0x6a\00", align 1
@.str.107 = private unnamed_addr constant [6 x i8] c"#0x6b\00", align 1
@.str.108 = private unnamed_addr constant [6 x i8] c"#0x6c\00", align 1
@.str.109 = private unnamed_addr constant [6 x i8] c"#0x6d\00", align 1
@.str.110 = private unnamed_addr constant [6 x i8] c"#0x6e\00", align 1
@.str.111 = private unnamed_addr constant [6 x i8] c"#0x6f\00", align 1
@.str.112 = private unnamed_addr constant [6 x i8] c"#0x70\00", align 1
@.str.113 = private unnamed_addr constant [6 x i8] c"#0x71\00", align 1
@.str.114 = private unnamed_addr constant [6 x i8] c"#0x72\00", align 1
@.str.115 = private unnamed_addr constant [6 x i8] c"#0x73\00", align 1
@.str.116 = private unnamed_addr constant [6 x i8] c"#0x74\00", align 1
@.str.117 = private unnamed_addr constant [6 x i8] c"#0x75\00", align 1
@.str.118 = private unnamed_addr constant [6 x i8] c"#0x76\00", align 1
@.str.119 = private unnamed_addr constant [6 x i8] c"#0x77\00", align 1
@.str.120 = private unnamed_addr constant [6 x i8] c"#0x78\00", align 1
@.str.121 = private unnamed_addr constant [6 x i8] c"#0x79\00", align 1
@.str.122 = private unnamed_addr constant [6 x i8] c"#0x7a\00", align 1
@.str.123 = private unnamed_addr constant [6 x i8] c"#0x7b\00", align 1
@.str.124 = private unnamed_addr constant [6 x i8] c"#0x7c\00", align 1
@.str.125 = private unnamed_addr constant [6 x i8] c"#0x7d\00", align 1
@.str.126 = private unnamed_addr constant [6 x i8] c"#0x7e\00", align 1
@.str.127 = private unnamed_addr constant [6 x i8] c"#0x7f\00", align 1
@.str.128 = private unnamed_addr constant [6 x i8] c"#0x80\00", align 1
@.str.129 = private unnamed_addr constant [6 x i8] c"#0x81\00", align 1
@.str.130 = private unnamed_addr constant [6 x i8] c"#0x82\00", align 1
@.str.131 = private unnamed_addr constant [6 x i8] c"#0x83\00", align 1
@.str.132 = private unnamed_addr constant [6 x i8] c"#0x84\00", align 1
@.str.133 = private unnamed_addr constant [6 x i8] c"#0x85\00", align 1
@.str.134 = private unnamed_addr constant [6 x i8] c"#0x86\00", align 1
@.str.135 = private unnamed_addr constant [6 x i8] c"#0x87\00", align 1
@.str.136 = private unnamed_addr constant [6 x i8] c"#0x88\00", align 1
@.str.137 = private unnamed_addr constant [6 x i8] c"#0x89\00", align 1
@.str.138 = private unnamed_addr constant [6 x i8] c"#0x8a\00", align 1
@.str.139 = private unnamed_addr constant [6 x i8] c"#0x8b\00", align 1
@.str.140 = private unnamed_addr constant [6 x i8] c"#0x8c\00", align 1
@.str.141 = private unnamed_addr constant [6 x i8] c"#0x8d\00", align 1
@.str.142 = private unnamed_addr constant [6 x i8] c"#0x8e\00", align 1
@.str.143 = private unnamed_addr constant [6 x i8] c"#0x8f\00", align 1
@.str.144 = private unnamed_addr constant [6 x i8] c"#0x90\00", align 1
@.str.145 = private unnamed_addr constant [6 x i8] c"#0x91\00", align 1
@.str.146 = private unnamed_addr constant [6 x i8] c"#0x92\00", align 1
@.str.147 = private unnamed_addr constant [6 x i8] c"#0x93\00", align 1
@.str.148 = private unnamed_addr constant [6 x i8] c"#0x94\00", align 1
@.str.149 = private unnamed_addr constant [6 x i8] c"#0x95\00", align 1
@.str.150 = private unnamed_addr constant [6 x i8] c"#0x96\00", align 1
@.str.151 = private unnamed_addr constant [6 x i8] c"#0x97\00", align 1
@.str.152 = private unnamed_addr constant [6 x i8] c"#0x98\00", align 1
@.str.153 = private unnamed_addr constant [6 x i8] c"#0x99\00", align 1
@.str.154 = private unnamed_addr constant [6 x i8] c"#0x9a\00", align 1
@.str.155 = private unnamed_addr constant [6 x i8] c"#0x9b\00", align 1
@.str.156 = private unnamed_addr constant [6 x i8] c"#0x9c\00", align 1
@.str.157 = private unnamed_addr constant [6 x i8] c"#0x9d\00", align 1
@.str.158 = private unnamed_addr constant [6 x i8] c"#0x9e\00", align 1
@.str.159 = private unnamed_addr constant [6 x i8] c"#0x9f\00", align 1
@.str.160 = private unnamed_addr constant [6 x i8] c"#0xa0\00", align 1
@.str.161 = private unnamed_addr constant [6 x i8] c"#0xa1\00", align 1
@.str.162 = private unnamed_addr constant [6 x i8] c"#0xa2\00", align 1
@.str.163 = private unnamed_addr constant [6 x i8] c"#0xa3\00", align 1
@.str.164 = private unnamed_addr constant [6 x i8] c"#0xa4\00", align 1
@.str.165 = private unnamed_addr constant [6 x i8] c"#0xa5\00", align 1
@.str.166 = private unnamed_addr constant [6 x i8] c"#0xa6\00", align 1
@.str.167 = private unnamed_addr constant [6 x i8] c"#0xa7\00", align 1
@.str.168 = private unnamed_addr constant [6 x i8] c"#0xa8\00", align 1
@.str.169 = private unnamed_addr constant [6 x i8] c"#0xa9\00", align 1
@.str.170 = private unnamed_addr constant [6 x i8] c"#0xaa\00", align 1
@.str.171 = private unnamed_addr constant [6 x i8] c"#0xab\00", align 1
@.str.172 = private unnamed_addr constant [6 x i8] c"#0xac\00", align 1
@.str.173 = private unnamed_addr constant [6 x i8] c"#0xad\00", align 1
@.str.174 = private unnamed_addr constant [6 x i8] c"#0xae\00", align 1
@.str.175 = private unnamed_addr constant [6 x i8] c"#0xaf\00", align 1
@.str.176 = private unnamed_addr constant [6 x i8] c"#0xb0\00", align 1
@.str.177 = private unnamed_addr constant [6 x i8] c"#0xb1\00", align 1
@.str.178 = private unnamed_addr constant [6 x i8] c"#0xb2\00", align 1
@.str.179 = private unnamed_addr constant [6 x i8] c"#0xb3\00", align 1
@.str.180 = private unnamed_addr constant [6 x i8] c"#0xb4\00", align 1
@.str.181 = private unnamed_addr constant [6 x i8] c"#0xb5\00", align 1
@.str.182 = private unnamed_addr constant [6 x i8] c"#0xb6\00", align 1
@.str.183 = private unnamed_addr constant [6 x i8] c"#0xb7\00", align 1
@.str.184 = private unnamed_addr constant [6 x i8] c"#0xb8\00", align 1
@.str.185 = private unnamed_addr constant [6 x i8] c"#0xb9\00", align 1
@.str.186 = private unnamed_addr constant [6 x i8] c"#0xba\00", align 1
@.str.187 = private unnamed_addr constant [6 x i8] c"#0xbb\00", align 1
@.str.188 = private unnamed_addr constant [6 x i8] c"#0xbc\00", align 1
@.str.189 = private unnamed_addr constant [6 x i8] c"#0xbd\00", align 1
@.str.190 = private unnamed_addr constant [6 x i8] c"#0xbe\00", align 1
@.str.191 = private unnamed_addr constant [6 x i8] c"#0xbf\00", align 1
@.str.192 = private unnamed_addr constant [6 x i8] c"#0xc0\00", align 1
@.str.193 = private unnamed_addr constant [6 x i8] c"#0xc1\00", align 1
@.str.194 = private unnamed_addr constant [6 x i8] c"#0xc2\00", align 1
@.str.195 = private unnamed_addr constant [6 x i8] c"#0xc3\00", align 1
@.str.196 = private unnamed_addr constant [6 x i8] c"#0xc4\00", align 1
@.str.197 = private unnamed_addr constant [6 x i8] c"#0xc5\00", align 1
@.str.198 = private unnamed_addr constant [6 x i8] c"#0xc6\00", align 1
@.str.199 = private unnamed_addr constant [6 x i8] c"#0xc7\00", align 1
@.str.200 = private unnamed_addr constant [6 x i8] c"#0xc8\00", align 1
@.str.201 = private unnamed_addr constant [6 x i8] c"#0xc9\00", align 1
@.str.202 = private unnamed_addr constant [6 x i8] c"#0xca\00", align 1
@.str.203 = private unnamed_addr constant [6 x i8] c"#0xcb\00", align 1
@.str.204 = private unnamed_addr constant [6 x i8] c"#0xcc\00", align 1
@.str.205 = private unnamed_addr constant [6 x i8] c"#0xcd\00", align 1
@.str.206 = private unnamed_addr constant [6 x i8] c"#0xce\00", align 1
@.str.207 = private unnamed_addr constant [6 x i8] c"#0xcf\00", align 1
@.str.208 = private unnamed_addr constant [6 x i8] c"#0xd0\00", align 1
@.str.209 = private unnamed_addr constant [6 x i8] c"#0xd1\00", align 1
@.str.210 = private unnamed_addr constant [6 x i8] c"#0xd2\00", align 1
@.str.211 = private unnamed_addr constant [6 x i8] c"#0xd3\00", align 1
@.str.212 = private unnamed_addr constant [6 x i8] c"#0xd4\00", align 1
@.str.213 = private unnamed_addr constant [6 x i8] c"#0xd5\00", align 1
@.str.214 = private unnamed_addr constant [6 x i8] c"#0xd6\00", align 1
@.str.215 = private unnamed_addr constant [6 x i8] c"#0xd7\00", align 1
@.str.216 = private unnamed_addr constant [6 x i8] c"#0xd8\00", align 1
@.str.217 = private unnamed_addr constant [6 x i8] c"#0xd9\00", align 1
@.str.218 = private unnamed_addr constant [6 x i8] c"#0xda\00", align 1
@.str.219 = private unnamed_addr constant [6 x i8] c"#0xdb\00", align 1
@.str.220 = private unnamed_addr constant [6 x i8] c"#0xdc\00", align 1
@.str.221 = private unnamed_addr constant [6 x i8] c"#0xdd\00", align 1
@.str.222 = private unnamed_addr constant [6 x i8] c"#0xde\00", align 1
@.str.223 = private unnamed_addr constant [6 x i8] c"#0xdf\00", align 1
@.str.224 = private unnamed_addr constant [6 x i8] c"#0xe0\00", align 1
@.str.225 = private unnamed_addr constant [6 x i8] c"#0xe1\00", align 1
@.str.226 = private unnamed_addr constant [6 x i8] c"#0xe2\00", align 1
@.str.227 = private unnamed_addr constant [6 x i8] c"#0xe3\00", align 1
@.str.228 = private unnamed_addr constant [6 x i8] c"#0xe4\00", align 1
@.str.229 = private unnamed_addr constant [6 x i8] c"#0xe5\00", align 1
@.str.230 = private unnamed_addr constant [6 x i8] c"#0xe6\00", align 1
@.str.231 = private unnamed_addr constant [6 x i8] c"#0xe7\00", align 1
@.str.232 = private unnamed_addr constant [6 x i8] c"#0xe8\00", align 1
@.str.233 = private unnamed_addr constant [6 x i8] c"#0xe9\00", align 1
@.str.234 = private unnamed_addr constant [6 x i8] c"#0xea\00", align 1
@.str.235 = private unnamed_addr constant [6 x i8] c"#0xeb\00", align 1
@.str.236 = private unnamed_addr constant [6 x i8] c"#0xec\00", align 1
@.str.237 = private unnamed_addr constant [6 x i8] c"#0xed\00", align 1
@.str.238 = private unnamed_addr constant [6 x i8] c"#0xee\00", align 1
@.str.239 = private unnamed_addr constant [6 x i8] c"#0xef\00", align 1
@.str.240 = private unnamed_addr constant [6 x i8] c"#0xf0\00", align 1
@.str.241 = private unnamed_addr constant [6 x i8] c"#0xf1\00", align 1
@.str.242 = private unnamed_addr constant [6 x i8] c"#0xf2\00", align 1
@.str.243 = private unnamed_addr constant [6 x i8] c"#0xf3\00", align 1
@.str.244 = private unnamed_addr constant [6 x i8] c"#0xf4\00", align 1
@.str.245 = private unnamed_addr constant [6 x i8] c"#0xf5\00", align 1
@.str.246 = private unnamed_addr constant [6 x i8] c"#0xf6\00", align 1
@.str.247 = private unnamed_addr constant [6 x i8] c"#0xf7\00", align 1
@.str.248 = private unnamed_addr constant [6 x i8] c"#0xf8\00", align 1
@.str.249 = private unnamed_addr constant [6 x i8] c"#0xf9\00", align 1
@.str.250 = private unnamed_addr constant [6 x i8] c"#0xfa\00", align 1
@.str.251 = private unnamed_addr constant [6 x i8] c"#0xfb\00", align 1
@.str.252 = private unnamed_addr constant [6 x i8] c"#0xfc\00", align 1
@.str.253 = private unnamed_addr constant [6 x i8] c"#0xfd\00", align 1
@.str.254 = private unnamed_addr constant [6 x i8] c"#0xfe\00", align 1
@.str.255 = private unnamed_addr constant [6 x i8] c"#0xff\00", align 1
@rr_types = global [256 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.114, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.116, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.120, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.121, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.123, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.126, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.129, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.130, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.131, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.132, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.133, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.134, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.135, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.136, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.137, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.138, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.139, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.140, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.141, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.142, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.143, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.144, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.145, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.146, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.147, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.148, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.149, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.150, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.151, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.152, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.153, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.154, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.155, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.156, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.157, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.158, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.159, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.160, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.161, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.162, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.163, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.164, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.165, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.166, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.167, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.168, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.169, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.170, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.171, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.172, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.173, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.174, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.175, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.176, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.177, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.178, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.180, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.181, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.182, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.183, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.184, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.185, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.187, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.188, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.189, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.192, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.193, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.194, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.195, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.196, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.197, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.198, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.199, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.200, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.201, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.202, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.203, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.204, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.205, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.206, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.207, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.208, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.209, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.210, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.211, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.212, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.213, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.215, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.216, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.217, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.218, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.219, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.220, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.221, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.222, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.223, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.224, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.225, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.226, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.227, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.228, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.229, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.230, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.231, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.232, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.233, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.234, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.235, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.236, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.237, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.238, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.239, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.240, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.241, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.242, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.243, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.244, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.245, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.246, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.247, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.248, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.249, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.250, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.251, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.252, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.253, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.254, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.255, i32 0, i32 0)], align 16, !dbg !127
@getname.hostname = internal global [1025 x i8] zeroinitializer, align 16, !dbg !132
@.str.256 = private unnamed_addr constant [3 x i8] c"\01.\00", align 1
@printablename.hostname = internal global [1025 x i8] zeroinitializer, align 16, !dbg !140
@.str.257 = private unnamed_addr constant [8 x i8] c"(0)root\00", align 1
@.str.258 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.259 = private unnamed_addr constant [5 x i8] c"(%d)\00", align 1
@.str.260 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.261 = private unnamed_addr constant [9 x i8] c"Internet\00", align 1
@.str.262 = private unnamed_addr constant [14 x i8] c"MIT Chaos-net\00", align 1
@.str.263 = private unnamed_addr constant [11 x i8] c"MIT Hesiod\00", align 1
@.str.264 = private unnamed_addr constant [18 x i8] c"Pre-req in update\00", align 1
@.str.265 = private unnamed_addr constant [9 x i8] c"Wildcard\00", align 1
@.str.266 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.267 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.268 = private unnamed_addr constant [3 x i8] c"NS\00", align 1
@.str.269 = private unnamed_addr constant [6 x i8] c"CNAME\00", align 1
@.str.270 = private unnamed_addr constant [4 x i8] c"SOA\00", align 1
@.str.271 = private unnamed_addr constant [4 x i8] c"PTR\00", align 1
@get_ttl.retval = internal global [1025 x i8] zeroinitializer, align 16, !dbg !145
@.str.272 = private unnamed_addr constant [4 x i8] c"%dw\00", align 1
@.str.273 = private unnamed_addr constant [4 x i8] c"%dd\00", align 1
@.str.274 = private unnamed_addr constant [4 x i8] c"%dh\00", align 1
@.str.275 = private unnamed_addr constant [4 x i8] c"%dm\00", align 1
@.str.276 = private unnamed_addr constant [4 x i8] c"%ds\00", align 1
@get_resource.retval = internal global [1025 x i8] zeroinitializer, align 16, !dbg !150
@.str.277 = private unnamed_addr constant [16 x i8] c"%hu.%hu.%hu.%hu\00", align 1
@.str.278 = private unnamed_addr constant [72 x i8] c"%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x\00", align 1
@.str.279 = private unnamed_addr constant [7 x i8] c"%hu %s\00", align 1
@get_resource.retval.280 = internal global [3075 x i8] zeroinitializer, align 16, !dbg !155
@.str.281 = private unnamed_addr constant [32 x i8] c"serial: %ld mname: %s rname: %s\00", align 1
@.str.282 = private unnamed_addr constant [28 x i8] c"- Queryname:            %s\0A\00", align 1
@.str.283 = private unnamed_addr constant [34 x i8] c"- Type:                 %hu (%s)\0A\00", align 1
@.str.284 = private unnamed_addr constant [34 x i8] c"- Class:                %hu (%s)\0A\00", align 1
@.str.285 = private unnamed_addr constant [33 x i8] c"- Identifier:           0x%04hX\0A\00", align 1
@.str.286 = private unnamed_addr constant [34 x i8] c"- Flags:                0x%02hX (\00", align 1
@.str.287 = private unnamed_addr constant [3 x i8] c"R \00", align 1
@.str.288 = private unnamed_addr constant [3 x i8] c"Q \00", align 1
@.str.289 = private unnamed_addr constant [4 x i8] c"AA \00", align 1
@.str.290 = private unnamed_addr constant [4 x i8] c"TC \00", align 1
@.str.291 = private unnamed_addr constant [4 x i8] c"RD \00", align 1
@.str.292 = private unnamed_addr constant [4 x i8] c"RA \00", align 1
@.str.293 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.294 = private unnamed_addr constant [29 x i8] c"- Opcode:               %hu \00", align 1
@.str.295 = private unnamed_addr constant [18 x i8] c"(Standard query)\0A\00", align 1
@.str.296 = private unnamed_addr constant [17 x i8] c"(Inverse query)\0A\00", align 1
@.str.297 = private unnamed_addr constant [25 x i8] c"(Server status request)\0A\00", align 1
@.str.298 = private unnamed_addr constant [10 x i8] c"(Notify)\0A\00", align 1
@.str.299 = private unnamed_addr constant [10 x i8] c"(Update)\0A\00", align 1
@.str.300 = private unnamed_addr constant [13 x i8] c"(Zone init)\0A\00", align 1
@.str.301 = private unnamed_addr constant [12 x i8] c"(Zone Ref)\0A\00", align 1
@.str.302 = private unnamed_addr constant [11 x i8] c"(unknown)\0A\00", align 1
@.str.303 = private unnamed_addr constant [29 x i8] c"- Return code:          %hu \00", align 1
@.str.304 = private unnamed_addr constant [12 x i8] c"(No error)\0A\00", align 1
@.str.305 = private unnamed_addr constant [16 x i8] c"(Format error)\0A\00", align 1
@.str.306 = private unnamed_addr constant [18 x i8] c"(Server failure)\0A\00", align 1
@.str.307 = private unnamed_addr constant [14 x i8] c"(Name error)\0A\00", align 1
@.str.308 = private unnamed_addr constant [19 x i8] c"(Not implemented)\0A\00", align 1
@.str.309 = private unnamed_addr constant [11 x i8] c"(Refused)\0A\00", align 1
@.str.310 = private unnamed_addr constant [15 x i8] c"(Name exists)\0A\00", align 1
@.str.311 = private unnamed_addr constant [16 x i8] c"(RRset exists)\0A\00", align 1
@.str.312 = private unnamed_addr constant [24 x i8] c"(RRset does not exist)\0A\00", align 1
@.str.313 = private unnamed_addr constant [19 x i8] c"(Not authoritive)\0A\00", align 1
@.str.314 = private unnamed_addr constant [46 x i8] c"(Zone of record different from zone section)\0A\00", align 1
@.str.315 = private unnamed_addr constant [29 x i8] c"- Number questions:     %hu\0A\00", align 1
@.str.316 = private unnamed_addr constant [29 x i8] c"- Number answer RR:     %hu\0A\00", align 1
@.str.317 = private unnamed_addr constant [29 x i8] c"- Number authority RR:  %hu\0A\00", align 1
@.str.318 = private unnamed_addr constant [29 x i8] c"- Number additional RR: %hu\0A\00", align 1
@.str.319 = private unnamed_addr constant [28 x i8] c"- Domainname:           %s\0A\00", align 1
@.str.320 = private unnamed_addr constant [33 x i8] c"- TTL:                  %u (%s)\0A\00", align 1
@.str.321 = private unnamed_addr constant [29 x i8] c"- Resource length:      %hu\0A\00", align 1
@.str.322 = private unnamed_addr constant [28 x i8] c"- Resource data:        %s\0A\00", align 1
@.str.323 = private unnamed_addr constant [11 x i8] c"IP HEADER\0A\00", align 1
@.str.324 = private unnamed_addr constant [28 x i8] c"- Destination address:  %s\0A\00", align 1
@.str.325 = private unnamed_addr constant [4 x i8] c"XXX\00", align 1
@.str.326 = private unnamed_addr constant [19 x i8] c"DNS HEADER (send)\0A\00", align 1
@.str.327 = private unnamed_addr constant [19 x i8] c"DNS HEADER (recv)\0A\00", align 1
@.str.328 = private unnamed_addr constant [18 x i8] c"QUESTIONS (send)\0A\00", align 1
@.str.329 = private unnamed_addr constant [18 x i8] c"QUESTIONS (recv)\0A\00", align 1
@.str.330 = private unnamed_addr constant [11 x i8] c"ANSWER RR\0A\00", align 1
@.str.331 = private unnamed_addr constant [14 x i8] c"AUTHORITY RR\0A\00", align 1
@.str.332 = private unnamed_addr constant [15 x i8] c"ADDITIONAL RR\0A\00", align 1
@.str.333 = private unnamed_addr constant [21 x i8] c"create_socket/socket\00", align 1
@.str.334 = private unnamed_addr constant [63 x i8] c"If this is an IPv6 problem, run configure with --disable-ipv6\0A\00", align 1
@.str.335 = private unnamed_addr constant [19 x i8] c"create_socket/bind\00", align 1
@.str.336 = private unnamed_addr constant [17 x i8] c"send_data/sendto\00", align 1
@stderr = external constant %struct._IO_FILE*, align 4
@.str.337 = private unnamed_addr constant [36 x i8] c"Expected id: %hx, received id: %hx\0A\00", align 1
@arecords = global %struct.arecord* null, align 4, !dbg !160
@.str.338 = private unnamed_addr constant [10 x i8] c"%s (%s)%n\00", align 1
@.str.339 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.340 = private unnamed_addr constant [6 x i8] c"%%%ds\00", align 1
@.str.341 = private unnamed_addr constant [10 x i8] c"%s -> %s\0A\00", align 1
@answers = global %struct.answer* null, align 4, !dbg !162
@busies = global %struct.busy* null, align 4, !dbg !164
@.str.342 = private unnamed_addr constant [5 x i8] c"%s%c\00", align 1
@.str.343 = private unnamed_addr constant [6 x i8] c"\\___ \00", align 1
@.str.344 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.345 = private unnamed_addr constant [6 x i8] c"[%s] \00", align 1
@.str.346 = private unnamed_addr constant [16 x i8] c"(No IP address)\00", align 1
@.str.347 = private unnamed_addr constant [17 x i8] c"(%s) Not queried\00", align 1
@.str.348 = private unnamed_addr constant [6 x i8] c"(%s) \00", align 1
@stdout = external constant %struct._IO_FILE*, align 4
@.str.349 = private unnamed_addr constant [13 x i8] c"Lame server \00", align 1
@.str.350 = private unnamed_addr constant [9 x i8] c"(cached)\00", align 1
@.str.351 = private unnamed_addr constant [3 x i8] c"* \00", align 1
@.str.352 = private unnamed_addr constant [26 x i8] c"Got authoritative answer \00", align 1
@.str.353 = private unnamed_addr constant [12 x i8] c"Got answer \00", align 1
@.str.354 = private unnamed_addr constant [23 x i8] c"[received type is %s] \00", align 1
@.str.355 = private unnamed_addr constant [18 x i8] c"Refers backwards \00", align 1
@.str.356 = private unnamed_addr constant [7 x i8] c"%s%c%s\00", align 1
@.str.357 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.358 = private unnamed_addr constant [6 x i8] c"     \00", align 1
@.str.359 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.360 = private unnamed_addr constant [88 x i8] c"%02hx%02hx:%02hx%02hx:%02hx%02hx:%02hx%02hx:%02hx%02hx:%02hx%02hx:%02hx%02hx:%02hx%02hx\00", align 1
@.str.361 = private unnamed_addr constant [629 x i8] c"DNSTRACER version 1.8.1 - (c) Edwin Groothuis - http://www.mavetju.org\0AUsage: dnstracer [options] [host]\0A\09-c: disable local caching, default enabled\0A\09-C: enable negative caching, default disabled\0A\09-o: enable overview of received answers, default disabled\0A\09-q <querytype>: query-type to use for the DNS requests, default A\0A\09-r <retries>: amount of retries for DNS requests, default 3\0A\09-s <server>: use this server for the initial request, default localhost\0A\09             If . is specified, A.ROOT-SERVERS.NET will be used.\0A\09-t <maximum timeout>: Limit time to wait per try\0A\09-v: verbose\0A\09-S <ip address>: use this source address.\0A\00", align 1
@.str.362 = private unnamed_addr constant [31 x i8] c"\09-4: don't query IPv6 servers\0A\00", align 1
@.str.363 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.364 = private unnamed_addr constant [40 x i8] c"0000:0000:0000:0000:0000:0000:0000:0000\00", align 1
@_res = external global %struct.__res_9_state, align 16
@.str.365 = private unnamed_addr constant [17 x i8] c"before getopt()\0A\00", align 1
@.str.366 = private unnamed_addr constant [16 x i8] c"4cCoq:r:S:s:t:v\00", align 1
@optarg = external global i8*, align 4
@.str.367 = private unnamed_addr constant [5 x i8] c"aaaa\00", align 1
@.str.368 = private unnamed_addr constant [3 x i8] c"a6\00", align 1
@.str.369 = private unnamed_addr constant [4 x i8] c"ptr\00", align 1
@.str.370 = private unnamed_addr constant [6 x i8] c"hinfo\00", align 1
@.str.371 = private unnamed_addr constant [3 x i8] c"mx\00", align 1
@.str.372 = private unnamed_addr constant [4 x i8] c"txt\00", align 1
@.str.373 = private unnamed_addr constant [39 x i8] c"Strange querytype, setting to default\0A\00", align 1
@.str.374 = private unnamed_addr constant [47 x i8] c"Strange amount of retries, setting to default\0A\00", align 1
@.str.375 = private unnamed_addr constant [19 x i8] c"A.ROOT-SERVERS.NET\00", align 1
@.str.376 = private unnamed_addr constant [14 x i8] c"end getopt()\0A\00", align 1
@.str.377 = private unnamed_addr constant [12 x i8] c"optind: %d\0A\00", align 1
@optind = external global i32, align 4
@.str.378 = private unnamed_addr constant [17 x i8] c"before strcpy()\0A\00", align 1
@.str.379 = private unnamed_addr constant [49 x i8] c"Tracing to %s[%s] via %s, maximum of %d retries\0A\00", align 1
@.str.380 = private unnamed_addr constant [31 x i8] c"Cannot find IP address for %s\0A\00", align 1
@.str.381 = private unnamed_addr constant [1201 x i8] c"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\00", align 1
@.str.382 = private unnamed_addr constant [10 x i8] c"dnstracer\00", align 1
@.str.383 = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @__main_void to i8*)], section "llvm.metadata"

@__main_void = alias i32 (), i32 ()* @main

; Function Attrs: noinline nounwind optnone
define i32 @strnrcasecmp(i8* %0, i8* %1, i32 %2) #0 !dbg !170 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 4
  %6 = alloca i8*, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 4
  call void @llvm.dbg.declare(metadata i8** %5, metadata !178, metadata !DIExpression()), !dbg !179
  store i8* %1, i8** %6, align 4
  call void @llvm.dbg.declare(metadata i8** %6, metadata !180, metadata !DIExpression()), !dbg !181
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !182, metadata !DIExpression()), !dbg !183
  call void @llvm.dbg.declare(metadata i8** %8, metadata !184, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.declare(metadata i32* %9, metadata !186, metadata !DIExpression()), !dbg !187
  call void @llvm.dbg.declare(metadata i32* %10, metadata !188, metadata !DIExpression()), !dbg !189
  %11 = load i8*, i8** %6, align 4, !dbg !190
  %12 = call i32 @strlen(i8* %11) #10, !dbg !191
  store i32 %12, i32* %9, align 4, !dbg !192
  %13 = load i8*, i8** %5, align 4, !dbg !193
  %14 = call i32 @strlen(i8* %13) #10, !dbg !194
  store i32 %14, i32* %10, align 4, !dbg !195
  %15 = load i32, i32* %9, align 4, !dbg !196
  %16 = load i32, i32* %10, align 4, !dbg !198
  %17 = icmp ugt i32 %15, %16, !dbg !199
  br i1 %17, label %18, label %19, !dbg !200

18:                                               ; preds = %3
  store i32 -1, i32* %4, align 4, !dbg !201
  br label %35, !dbg !201

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4, !dbg !202
  %21 = load i32, i32* %9, align 4, !dbg !204
  %22 = icmp ugt i32 %20, %21, !dbg !205
  br i1 %22, label %23, label %24, !dbg !206

23:                                               ; preds = %19
  store i32 -1, i32* %4, align 4, !dbg !207
  br label %35, !dbg !207

24:                                               ; preds = %19
  %25 = load i8*, i8** %5, align 4, !dbg !208
  %26 = load i32, i32* %10, align 4, !dbg !209
  %27 = getelementptr inbounds i8, i8* %25, i32 %26, !dbg !210
  %28 = load i32, i32* %7, align 4, !dbg !211
  %29 = sub i32 0, %28, !dbg !212
  %30 = getelementptr inbounds i8, i8* %27, i32 %29, !dbg !212
  store i8* %30, i8** %8, align 4, !dbg !213
  %31 = load i8*, i8** %8, align 4, !dbg !214
  %32 = load i8*, i8** %6, align 4, !dbg !215
  %33 = load i32, i32* %7, align 4, !dbg !216
  %34 = call i32 @strncasecmp(i8* %31, i8* %32, i32 %33), !dbg !217
  store i32 %34, i32* %4, align 4, !dbg !218
  br label %35, !dbg !218

35:                                               ; preds = %24, %23, %18
  %36 = load i32, i32* %4, align 4, !dbg !219
  ret i32 %36, !dbg !219
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nounwind readonly willreturn
declare i32 @strlen(i8*) #2

declare i32 @strncasecmp(i8*, i8*, i32) #3

; Function Attrs: noinline nounwind optnone
define i32 @getlong(i8* %0) #0 !dbg !220 {
  %2 = alloca i8*, align 4
  store i8* %0, i8** %2, align 4
  call void @llvm.dbg.declare(metadata i8** %2, metadata !223, metadata !DIExpression()), !dbg !224
  %3 = load i8*, i8** %2, align 4, !dbg !225
  %4 = getelementptr inbounds i8, i8* %3, i32 0, !dbg !225
  %5 = load i8, i8* %4, align 1, !dbg !225
  %6 = zext i8 %5 to i32, !dbg !225
  %7 = mul nsw i32 16777216, %6, !dbg !226
  %8 = load i8*, i8** %2, align 4, !dbg !227
  %9 = getelementptr inbounds i8, i8* %8, i32 1, !dbg !227
  %10 = load i8, i8* %9, align 1, !dbg !227
  %11 = zext i8 %10 to i32, !dbg !227
  %12 = mul nsw i32 65536, %11, !dbg !228
  %13 = add nsw i32 %7, %12, !dbg !229
  %14 = load i8*, i8** %2, align 4, !dbg !230
  %15 = getelementptr inbounds i8, i8* %14, i32 2, !dbg !230
  %16 = load i8, i8* %15, align 1, !dbg !230
  %17 = zext i8 %16 to i32, !dbg !230
  %18 = mul nsw i32 256, %17, !dbg !231
  %19 = add nsw i32 %13, %18, !dbg !232
  %20 = load i8*, i8** %2, align 4, !dbg !233
  %21 = getelementptr inbounds i8, i8* %20, i32 3, !dbg !233
  %22 = load i8, i8* %21, align 1, !dbg !233
  %23 = zext i8 %22 to i32, !dbg !233
  %24 = add nsw i32 %19, %23, !dbg !234
  ret i32 %24, !dbg !235
}

; Function Attrs: noinline nounwind optnone
define zeroext i16 @getshort(i8* %0) #0 !dbg !236 {
  %2 = alloca i8*, align 4
  store i8* %0, i8** %2, align 4
  call void @llvm.dbg.declare(metadata i8** %2, metadata !239, metadata !DIExpression()), !dbg !240
  %3 = load i8*, i8** %2, align 4, !dbg !241
  %4 = getelementptr inbounds i8, i8* %3, i32 0, !dbg !241
  %5 = load i8, i8* %4, align 1, !dbg !241
  %6 = zext i8 %5 to i32, !dbg !241
  %7 = mul nsw i32 256, %6, !dbg !242
  %8 = load i8*, i8** %2, align 4, !dbg !243
  %9 = getelementptr inbounds i8, i8* %8, i32 1, !dbg !243
  %10 = load i8, i8* %9, align 1, !dbg !243
  %11 = zext i8 %10 to i32, !dbg !243
  %12 = add nsw i32 %7, %11, !dbg !244
  %13 = trunc i32 %12 to i16, !dbg !245
  ret i16 %13, !dbg !246
}

; Function Attrs: noinline nounwind optnone
define i8* @getname(%struct.dnssession* %0, i8** %1) #0 !dbg !134 {
  %3 = alloca i8*, align 4
  %4 = alloca %struct.dnssession*, align 4
  %5 = alloca i8**, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  store %struct.dnssession* %0, %struct.dnssession** %4, align 4
  call void @llvm.dbg.declare(metadata %struct.dnssession** %4, metadata !247, metadata !DIExpression()), !dbg !248
  store i8** %1, i8*** %5, align 4
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !249, metadata !DIExpression()), !dbg !250
  call void @llvm.dbg.declare(metadata i32* %6, metadata !251, metadata !DIExpression()), !dbg !252
  store i32 0, i32* %6, align 4, !dbg !252
  call void @llvm.dbg.declare(metadata i8** %7, metadata !253, metadata !DIExpression()), !dbg !254
  %10 = load i8**, i8*** %5, align 4, !dbg !255
  %11 = getelementptr inbounds i8*, i8** %10, i32 0, !dbg !255
  %12 = load i8*, i8** %11, align 4, !dbg !255
  %13 = load i8, i8* %12, align 1, !dbg !257
  %14 = sext i8 %13 to i32, !dbg !257
  %15 = icmp eq i32 %14, 0, !dbg !258
  br i1 %15, label %16, label %21, !dbg !259

16:                                               ; preds = %2
  call void @"overflow$0"(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @getname.hostname, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.256, i32 0, i32 0))
  %17 = call i8* @strcpy(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @getname.hostname, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.256, i32 0, i32 0)), !dbg !260
  %18 = load i8**, i8*** %5, align 4, !dbg !262
  %19 = load i8*, i8** %18, align 4, !dbg !263
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !263
  store i8* %20, i8** %18, align 4, !dbg !263
  store i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @getname.hostname, i32 0, i32 0), i8** %3, align 4, !dbg !264
  br label %105, !dbg !264

21:                                               ; preds = %2
  %22 = load i8**, i8*** %5, align 4, !dbg !265
  %23 = load i8*, i8** %22, align 4, !dbg !266
  store i8* %23, i8** %7, align 4, !dbg !267
  call void @llvm.memset.p0i8.i32(i8* align 16 getelementptr inbounds ([1025 x i8], [1025 x i8]* @getname.hostname, i32 0, i32 0), i8 0, i32 1025, i1 false), !dbg !268
  br label %24, !dbg !269

24:                                               ; preds = %96, %64, %21
  %25 = load i8*, i8** %7, align 4, !dbg !270
  %26 = getelementptr inbounds i8, i8* %25, i32 0, !dbg !270
  %27 = load i8, i8* %26, align 1, !dbg !270
  %28 = sext i8 %27 to i32, !dbg !270
  %29 = icmp ne i32 %28, 0, !dbg !271
  br i1 %29, label %30, label %104, !dbg !269

30:                                               ; preds = %24
  %31 = load i8*, i8** %7, align 4, !dbg !272
  %32 = getelementptr inbounds i8, i8* %31, i32 0, !dbg !272
  %33 = load i8, i8* %32, align 1, !dbg !272
  %34 = sext i8 %33 to i32, !dbg !272
  %35 = and i32 %34, 192, !dbg !275
  %36 = icmp ne i32 %35, 0, !dbg !276
  br i1 %36, label %37, label %65, !dbg !277

37:                                               ; preds = %30
  call void @llvm.dbg.declare(metadata i32* %8, metadata !278, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.declare(metadata i8* %9, metadata !281, metadata !DIExpression()), !dbg !282
  %38 = load i8*, i8** %7, align 4, !dbg !283
  %39 = getelementptr inbounds i8, i8* %38, i32 0, !dbg !283
  %40 = load i8, i8* %39, align 1, !dbg !283
  store i8 %40, i8* %9, align 1, !dbg !284
  %41 = load i8*, i8** %7, align 4, !dbg !285
  %42 = getelementptr inbounds i8, i8* %41, i32 0, !dbg !285
  %43 = load i8, i8* %42, align 1, !dbg !286
  %44 = sext i8 %43 to i32, !dbg !286
  %45 = and i32 %44, 63, !dbg !286
  %46 = trunc i32 %45 to i8, !dbg !286
  store i8 %46, i8* %42, align 1, !dbg !286
  %47 = load i8*, i8** %7, align 4, !dbg !287
  %48 = call zeroext i16 @getshort(i8* %47), !dbg !288
  %49 = zext i16 %48 to i32, !dbg !288
  store i32 %49, i32* %8, align 4, !dbg !289
  %50 = load i8, i8* %9, align 1, !dbg !290
  %51 = load i8*, i8** %7, align 4, !dbg !291
  %52 = getelementptr inbounds i8, i8* %51, i32 0, !dbg !291
  store i8 %50, i8* %52, align 1, !dbg !292
  %53 = load %struct.dnssession*, %struct.dnssession** %4, align 4, !dbg !293
  %54 = getelementptr inbounds %struct.dnssession, %struct.dnssession* %53, i32 0, i32 11, !dbg !294
  %55 = load i8*, i8** %54, align 4, !dbg !294
  %56 = load i32, i32* %8, align 4, !dbg !295
  %57 = getelementptr inbounds i8, i8* %55, i32 %56, !dbg !296
  store i8* %57, i8** %7, align 4, !dbg !297
  %58 = load i32, i32* %6, align 4, !dbg !298
  %59 = icmp eq i32 %58, 0, !dbg !300
  br i1 %59, label %60, label %64, !dbg !301

60:                                               ; preds = %37
  %61 = load i8**, i8*** %5, align 4, !dbg !302
  %62 = load i8*, i8** %61, align 4, !dbg !303
  %63 = getelementptr inbounds i8, i8* %62, i32 2, !dbg !303
  store i8* %63, i8** %61, align 4, !dbg !303
  br label %64, !dbg !304

64:                                               ; preds = %60, %37
  store i32 1, i32* %6, align 4, !dbg !305
  br label %24, !dbg !306, !llvm.loop !307

65:                                               ; preds = %30
  %66 = call i32 @strlen(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @getname.hostname, i32 0, i32 0)) #10, !dbg !310
  %67 = getelementptr inbounds i8, i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @getname.hostname, i32 0, i32 0), i32 %66, !dbg !311
  %68 = load i8*, i8** %7, align 4, !dbg !312
  %69 = load i8*, i8** %7, align 4, !dbg !313
  %70 = getelementptr inbounds i8, i8* %69, i32 0, !dbg !313
  %71 = load i8, i8* %70, align 1, !dbg !313
  %72 = sext i8 %71 to i32, !dbg !313
  %73 = add nsw i32 %72, 1, !dbg !314
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %67, i8* align 1 %68, i32 %73, i1 false), !dbg !315
  %74 = load i32, i32* %6, align 4, !dbg !316
  %75 = icmp eq i32 %74, 0, !dbg !318
  br i1 %75, label %76, label %96, !dbg !319

76:                                               ; preds = %65
  %77 = load i8*, i8** %7, align 4, !dbg !320
  %78 = getelementptr inbounds i8, i8* %77, i32 0, !dbg !320
  %79 = load i8, i8* %78, align 1, !dbg !320
  %80 = sext i8 %79 to i32, !dbg !320
  %81 = add nsw i32 %80, 1, !dbg !322
  %82 = load i8**, i8*** %5, align 4, !dbg !323
  %83 = load i8*, i8** %82, align 4, !dbg !324
  %84 = getelementptr inbounds i8, i8* %83, i32 %81, !dbg !324
  store i8* %84, i8** %82, align 4, !dbg !324
  %85 = load i8**, i8*** %5, align 4, !dbg !325
  %86 = getelementptr inbounds i8*, i8** %85, i32 0, !dbg !325
  %87 = load i8*, i8** %86, align 4, !dbg !325
  %88 = load i8, i8* %87, align 1, !dbg !327
  %89 = sext i8 %88 to i32, !dbg !327
  %90 = icmp eq i32 %89, 0, !dbg !328
  br i1 %90, label %91, label %95, !dbg !329

91:                                               ; preds = %76
  %92 = load i8**, i8*** %5, align 4, !dbg !330
  %93 = load i8*, i8** %92, align 4, !dbg !331
  %94 = getelementptr inbounds i8, i8* %93, i32 1, !dbg !331
  store i8* %94, i8** %92, align 4, !dbg !331
  br label %95, !dbg !332

95:                                               ; preds = %91, %76
  br label %96, !dbg !333

96:                                               ; preds = %95, %65
  %97 = load i8*, i8** %7, align 4, !dbg !334
  %98 = getelementptr inbounds i8, i8* %97, i32 0, !dbg !334
  %99 = load i8, i8* %98, align 1, !dbg !334
  %100 = sext i8 %99 to i32, !dbg !334
  %101 = add nsw i32 %100, 1, !dbg !335
  %102 = load i8*, i8** %7, align 4, !dbg !336
  %103 = getelementptr inbounds i8, i8* %102, i32 %101, !dbg !336
  store i8* %103, i8** %7, align 4, !dbg !336
  br label %24, !dbg !269, !llvm.loop !307

104:                                              ; preds = %24
  store i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @getname.hostname, i32 0, i32 0), i8** %3, align 4, !dbg !337
  br label %105, !dbg !337

105:                                              ; preds = %104, %16
  %106 = load i8*, i8** %3, align 4, !dbg !338
  ret i8* %106, !dbg !338
}

declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: noinline nounwind optnone
define i8* @extract_rr(%struct.dnssession* %0, i8* %1, %struct.dnsrr** %2) #0 !dbg !339 {
  %4 = alloca %struct.dnssession*, align 4
  %5 = alloca i8*, align 4
  %6 = alloca %struct.dnsrr**, align 4
  %7 = alloca %struct.dnsrr*, align 4
  %8 = alloca i8*, align 4
  %9 = alloca i8*, align 4
  store %struct.dnssession* %0, %struct.dnssession** %4, align 4
  call void @llvm.dbg.declare(metadata %struct.dnssession** %4, metadata !343, metadata !DIExpression()), !dbg !344
  store i8* %1, i8** %5, align 4
  call void @llvm.dbg.declare(metadata i8** %5, metadata !345, metadata !DIExpression()), !dbg !346
  store %struct.dnsrr** %2, %struct.dnsrr*** %6, align 4
  call void @llvm.dbg.declare(metadata %struct.dnsrr*** %6, metadata !347, metadata !DIExpression()), !dbg !348
  call void @llvm.dbg.declare(metadata %struct.dnsrr** %7, metadata !349, metadata !DIExpression()), !dbg !350
  call void @llvm.dbg.declare(metadata i8** %8, metadata !351, metadata !DIExpression()), !dbg !352
  call void @llvm.dbg.declare(metadata i8** %9, metadata !353, metadata !DIExpression()), !dbg !354
  %10 = call noalias align 16 i8* @calloc(i32 1, i32 32), !dbg !355
  %11 = bitcast i8* %10 to %struct.dnsrr*, !dbg !356
  store %struct.dnsrr* %11, %struct.dnsrr** %7, align 4, !dbg !357
  %12 = load %struct.dnsrr**, %struct.dnsrr*** %6, align 4, !dbg !358
  %13 = load %struct.dnsrr*, %struct.dnsrr** %12, align 4, !dbg !359
  %14 = load %struct.dnsrr*, %struct.dnsrr** %7, align 4, !dbg !360
  %15 = getelementptr inbounds %struct.dnsrr, %struct.dnsrr* %14, i32 0, i32 8, !dbg !361
  store %struct.dnsrr* %13, %struct.dnsrr** %15, align 4, !dbg !362
  %16 = load %struct.dnssession*, %struct.dnssession** %4, align 4, !dbg !363
  %17 = call i8* @getname(%struct.dnssession* %16, i8** %5), !dbg !364
  store i8* %17, i8** %8, align 4, !dbg !365
  %18 = load i8*, i8** %8, align 4, !dbg !366
  %19 = call align 16 i8* @strdup(i8* %18) #11, !dbg !367
  %20 = load %struct.dnsrr*, %struct.dnsrr** %7, align 4, !dbg !368
  %21 = getelementptr inbounds %struct.dnsrr, %struct.dnsrr* %20, i32 0, i32 0, !dbg !369
  store i8* %19, i8** %21, align 4, !dbg !370
  %22 = load i8*, i8** %8, align 4, !dbg !371
  %23 = call i8* @printablename(i8* %22, i32 1), !dbg !372
  %24 = call align 16 i8* @strdup(i8* %23) #11, !dbg !373
  %25 = load %struct.dnsrr*, %struct.dnsrr** %7, align 4, !dbg !374
  %26 = getelementptr inbounds %struct.dnsrr, %struct.dnsrr* %25, i32 0, i32 1, !dbg !375
  store i8* %24, i8** %26, align 4, !dbg !376
  %27 = load i8*, i8** %5, align 4, !dbg !377
  %28 = call zeroext i16 @getshort(i8* %27), !dbg !378
  %29 = load %struct.dnsrr*, %struct.dnsrr** %7, align 4, !dbg !379
  %30 = getelementptr inbounds %struct.dnsrr, %struct.dnsrr* %29, i32 0, i32 2, !dbg !380
  store i16 %28, i16* %30, align 4, !dbg !381
  %31 = load i8*, i8** %5, align 4, !dbg !382
  %32 = getelementptr inbounds i8, i8* %31, i32 2, !dbg !383
  %33 = call zeroext i16 @getshort(i8* %32), !dbg !384
  %34 = load %struct.dnsrr*, %struct.dnsrr** %7, align 4, !dbg !385
  %35 = getelementptr inbounds %struct.dnsrr, %struct.dnsrr* %34, i32 0, i32 3, !dbg !386
  store i16 %33, i16* %35, align 2, !dbg !387
  %36 = load i8*, i8** %5, align 4, !dbg !388
  %37 = getelementptr inbounds i8, i8* %36, i32 4, !dbg !389
  %38 = call i32 @getlong(i8* %37), !dbg !390
  %39 = load %struct.dnsrr*, %struct.dnsrr** %7, align 4, !dbg !391
  %40 = getelementptr inbounds %struct.dnsrr, %struct.dnsrr* %39, i32 0, i32 4, !dbg !392
  store i32 %38, i32* %40, align 4, !dbg !393
  %41 = load i8*, i8** %5, align 4, !dbg !394
  %42 = getelementptr inbounds i8, i8* %41, i32 8, !dbg !395
  %43 = call zeroext i16 @getshort(i8* %42), !dbg !396
  %44 = load %struct.dnsrr*, %struct.dnsrr** %7, align 4, !dbg !397
  %45 = getelementptr inbounds %struct.dnsrr, %struct.dnsrr* %44, i32 0, i32 5, !dbg !398
  store i16 %43, i16* %45, align 4, !dbg !399
  %46 = load %struct.dnsrr*, %struct.dnsrr** %7, align 4, !dbg !400
  %47 = getelementptr inbounds %struct.dnsrr, %struct.dnsrr* %46, i32 0, i32 5, !dbg !401
  %48 = load i16, i16* %47, align 4, !dbg !401
  %49 = zext i16 %48 to i32, !dbg !400
  %50 = call noalias align 16 i8* @calloc(i32 1, i32 %49), !dbg !402
  %51 = load %struct.dnsrr*, %struct.dnsrr** %7, align 4, !dbg !403
  %52 = getelementptr inbounds %struct.dnsrr, %struct.dnsrr* %51, i32 0, i32 6, !dbg !404
  store i8* %50, i8** %52, align 4, !dbg !405
  %53 = load %struct.dnsrr*, %struct.dnsrr** %7, align 4, !dbg !406
  %54 = getelementptr inbounds %struct.dnsrr, %struct.dnsrr* %53, i32 0, i32 6, !dbg !407
  %55 = load i8*, i8** %54, align 4, !dbg !407
  %56 = load i8*, i8** %5, align 4, !dbg !408
  %57 = getelementptr inbounds i8, i8* %56, i32 10, !dbg !409
  %58 = load %struct.dnsrr*, %struct.dnsrr** %7, align 4, !dbg !410
  %59 = getelementptr inbounds %struct.dnsrr, %struct.dnsrr* %58, i32 0, i32 5, !dbg !411
  %60 = load i16, i16* %59, align 4, !dbg !411
  %61 = zext i16 %60 to i32, !dbg !410
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %55, i8* align 1 %57, i32 %61, i1 false), !dbg !412
  %62 = load i8*, i8** %5, align 4, !dbg !413
  %63 = getelementptr inbounds i8, i8* %62, i32 10, !dbg !414
  store i8* %63, i8** %9, align 4, !dbg !415
  %64 = load %struct.dnsrr*, %struct.dnsrr** %7, align 4, !dbg !416
  %65 = getelementptr inbounds %struct.dnsrr, %struct.dnsrr* %64, i32 0, i32 2, !dbg !417
  %66 = load i16, i16* %65, align 4, !dbg !417
  %67 = zext i16 %66 to i32, !dbg !416
  %68 = load %struct.dnssession*, %struct.dnssession** %4, align 4, !dbg !418
  %69 = load i8*, i8** %9, align 4, !dbg !419
  %70 = call i8* @get_resource(i32 %67, %struct.dnssession* %68, i8* %69, i32 1), !dbg !420
  %71 = call align 16 i8* @strdup(i8* %70) #11, !dbg !421
  %72 = load %struct.dnsrr*, %struct.dnsrr** %7, align 4, !dbg !422
  %73 = getelementptr inbounds %struct.dnsrr, %struct.dnsrr* %72, i32 0, i32 7, !dbg !423
  store i8* %71, i8** %73, align 4, !dbg !424
  %74 = load %struct.dnsrr*, %struct.dnsrr** %7, align 4, !dbg !425
  %75 = getelementptr inbounds %struct.dnsrr, %struct.dnsrr* %74, i32 0, i32 5, !dbg !426
  %76 = load i16, i16* %75, align 4, !dbg !426
  %77 = zext i16 %76 to i32, !dbg !425
  %78 = add nsw i32 10, %77, !dbg !427
  %79 = load i8*, i8** %5, align 4, !dbg !428
  %80 = getelementptr inbounds i8, i8* %79, i32 %78, !dbg !428
  store i8* %80, i8** %5, align 4, !dbg !428
  %81 = load %struct.dnsrr*, %struct.dnsrr** %7, align 4, !dbg !429
  %82 = load %struct.dnsrr**, %struct.dnsrr*** %6, align 4, !dbg !430
  store %struct.dnsrr* %81, %struct.dnsrr** %82, align 4, !dbg !431
  %83 = load i8*, i8** %5, align 4, !dbg !432
  ret i8* %83, !dbg !433
}

declare noalias align 16 i8* @calloc(i32, i32) #3

; Function Attrs: nounwind
declare align 16 i8* @strdup(i8*) #6

; Function Attrs: noinline nounwind optnone
define i8* @printablename(i8* %0, i32 %1) #0 !dbg !142 {
  %3 = alloca i8*, align 4
  %4 = alloca i8*, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 4
  %7 = alloca i8, align 1
  store i8* %0, i8** %4, align 4
  call void @llvm.dbg.declare(metadata i8** %4, metadata !434, metadata !DIExpression()), !dbg !435
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !436, metadata !DIExpression()), !dbg !437
  call void @llvm.dbg.declare(metadata i8** %6, metadata !438, metadata !DIExpression()), !dbg !439
  call void @llvm.dbg.declare(metadata i8* %7, metadata !440, metadata !DIExpression()), !dbg !441
  %8 = load i8*, i8** %4, align 4, !dbg !442
  %9 = icmp eq i8* %8, null, !dbg !444
  br i1 %9, label %16, label %10, !dbg !445

10:                                               ; preds = %2
  %11 = load i8*, i8** %4, align 4, !dbg !446
  %12 = getelementptr inbounds i8, i8* %11, i32 0, !dbg !446
  %13 = load i8, i8* %12, align 1, !dbg !446
  %14 = sext i8 %13 to i32, !dbg !446
  %15 = icmp eq i32 %14, 0, !dbg !447
  br i1 %15, label %16, label %24, !dbg !448

16:                                               ; preds = %10, %2
  %17 = load i32, i32* %5, align 4, !dbg !449
  %18 = icmp eq i32 %17, 0, !dbg !452
  br i1 %18, label %19, label %21, !dbg !453

19:                                               ; preds = %16
  call void @"overflow$0"(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @printablename.hostname, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.257, i32 0, i32 0))
  %20 = call i8* @strcpy(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @printablename.hostname, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.257, i32 0, i32 0)), !dbg !454
  br label %23, !dbg !454

21:                                               ; preds = %16
  call void @"overflow$0"(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @printablename.hostname, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.258, i32 0, i32 0))
  %22 = call i8* @strcpy(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @printablename.hostname, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.258, i32 0, i32 0)), !dbg !455
  br label %23

23:                                               ; preds = %21, %19
  store i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @printablename.hostname, i32 0, i32 0), i8** %3, align 4, !dbg !456
  br label %81, !dbg !456

24:                                               ; preds = %10
  store i8 0, i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @printablename.hostname, i32 0, i32 0), align 16, !dbg !457
  %25 = load i8*, i8** %4, align 4, !dbg !458
  store i8* %25, i8** %6, align 4, !dbg !459
  br label %26, !dbg !460

26:                                               ; preds = %45, %24
  %27 = load i8*, i8** %6, align 4, !dbg !461
  %28 = getelementptr inbounds i8, i8* %27, i32 0, !dbg !461
  %29 = load i8, i8* %28, align 1, !dbg !461
  %30 = sext i8 %29 to i32, !dbg !461
  %31 = icmp ne i32 %30, 0, !dbg !462
  br i1 %31, label %32, label %76, !dbg !460

32:                                               ; preds = %26
  %33 = load i32, i32* %5, align 4, !dbg !463
  %34 = icmp eq i32 %33, 0, !dbg !466
  br i1 %34, label %35, label %43, !dbg !467

35:                                               ; preds = %32
  %36 = call i32 @strlen(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @printablename.hostname, i32 0, i32 0)) #10, !dbg !468
  %37 = getelementptr inbounds i8, i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @printablename.hostname, i32 0, i32 0), i32 %36, !dbg !469
  %38 = load i8*, i8** %6, align 4, !dbg !470
  %39 = getelementptr inbounds i8, i8* %38, i32 0, !dbg !470
  %40 = load i8, i8* %39, align 1, !dbg !470
  %41 = sext i8 %40 to i32, !dbg !470
  %42 = call i32 (i8*, i8*, ...) @sprintf(i8* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.259, i32 0, i32 0), i32 %41), !dbg !471
  br label %45, !dbg !471

43:                                               ; preds = %32
  %44 = call i8* @strcat(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @printablename.hostname, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.258, i32 0, i32 0)), !dbg !472
  br label %45

45:                                               ; preds = %43, %35
  %46 = load i8*, i8** %6, align 4, !dbg !473
  %47 = load i8*, i8** %6, align 4, !dbg !474
  %48 = getelementptr inbounds i8, i8* %47, i32 0, !dbg !474
  %49 = load i8, i8* %48, align 1, !dbg !474
  %50 = sext i8 %49 to i32, !dbg !474
  %51 = add nsw i32 %50, 1, !dbg !475
  %52 = getelementptr inbounds i8, i8* %46, i32 %51, !dbg !473
  %53 = load i8, i8* %52, align 1, !dbg !473
  store i8 %53, i8* %7, align 1, !dbg !476
  %54 = load i8*, i8** %6, align 4, !dbg !477
  %55 = load i8*, i8** %6, align 4, !dbg !478
  %56 = getelementptr inbounds i8, i8* %55, i32 0, !dbg !478
  %57 = load i8, i8* %56, align 1, !dbg !478
  %58 = sext i8 %57 to i32, !dbg !478
  %59 = add nsw i32 %58, 1, !dbg !479
  %60 = getelementptr inbounds i8, i8* %54, i32 %59, !dbg !477
  store i8 0, i8* %60, align 1, !dbg !480
  %61 = call i32 @strlen(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @printablename.hostname, i32 0, i32 0)) #10, !dbg !481
  %62 = getelementptr inbounds i8, i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @printablename.hostname, i32 0, i32 0), i32 %61, !dbg !482
  %63 = load i8*, i8** %6, align 4, !dbg !483
  %64 = getelementptr inbounds i8, i8* %63, i32 1, !dbg !484
  %65 = call i32 (i8*, i8*, ...) @sprintf(i8* %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.260, i32 0, i32 0), i8* %64), !dbg !485
  %66 = load i8*, i8** %6, align 4, !dbg !486
  %67 = load i8*, i8** %6, align 4, !dbg !487
  %68 = getelementptr inbounds i8, i8* %67, i32 0, !dbg !487
  %69 = load i8, i8* %68, align 1, !dbg !487
  %70 = sext i8 %69 to i32, !dbg !487
  %71 = getelementptr inbounds i8, i8* %66, i32 %70, !dbg !488
  %72 = getelementptr inbounds i8, i8* %71, i32 1, !dbg !489
  store i8* %72, i8** %6, align 4, !dbg !490
  %73 = load i8, i8* %7, align 1, !dbg !491
  %74 = load i8*, i8** %6, align 4, !dbg !492
  %75 = getelementptr inbounds i8, i8* %74, i32 0, !dbg !492
  store i8 %73, i8* %75, align 1, !dbg !493
  br label %26, !dbg !460, !llvm.loop !494

76:                                               ; preds = %26
  %77 = load i32, i32* %5, align 4, !dbg !496
  %78 = icmp eq i32 %77, 0, !dbg !498
  br i1 %78, label %79, label %80, !dbg !499

79:                                               ; preds = %76
  store i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @printablename.hostname, i32 0, i32 0), i8** %3, align 4, !dbg !500
  br label %81, !dbg !500

80:                                               ; preds = %76
  store i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @printablename.hostname, i32 0, i32 1), i8** %3, align 4, !dbg !501
  br label %81, !dbg !501

81:                                               ; preds = %80, %79, %23
  %82 = load i8*, i8** %3, align 4, !dbg !502
  ret i8* %82, !dbg !502
}

; Function Attrs: noinline nounwind optnone
define i8* @get_resource(i32 %0, %struct.dnssession* %1, i8* %2, i32 %3) #0 !dbg !152 {
  %5 = alloca i8*, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dnssession*, align 4
  %8 = alloca i8*, align 4
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  %11 = alloca [1025 x i8], align 16
  %12 = alloca [1025 x i8], align 16
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !503, metadata !DIExpression()), !dbg !504
  store %struct.dnssession* %1, %struct.dnssession** %7, align 4
  call void @llvm.dbg.declare(metadata %struct.dnssession** %7, metadata !505, metadata !DIExpression()), !dbg !506
  store i8* %2, i8** %8, align 4
  call void @llvm.dbg.declare(metadata i8** %8, metadata !507, metadata !DIExpression()), !dbg !508
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !509, metadata !DIExpression()), !dbg !510
  %14 = load i32, i32* %6, align 4, !dbg !511
  switch i32 %14, label %160 [
    i32 1, label %15
    i32 28, label %33
    i32 5, label %99
    i32 16, label %105
    i32 15, label %111
    i32 13, label %123
    i32 2, label %129
    i32 12, label %135
    i32 6, label %141
  ], !dbg !512

15:                                               ; preds = %4
  %16 = load i8*, i8** %8, align 4, !dbg !513
  %17 = getelementptr inbounds i8, i8* %16, i32 0, !dbg !513
  %18 = load i8, i8* %17, align 1, !dbg !513
  %19 = zext i8 %18 to i32, !dbg !515
  %20 = load i8*, i8** %8, align 4, !dbg !516
  %21 = getelementptr inbounds i8, i8* %20, i32 1, !dbg !516
  %22 = load i8, i8* %21, align 1, !dbg !516
  %23 = zext i8 %22 to i32, !dbg !517
  %24 = load i8*, i8** %8, align 4, !dbg !518
  %25 = getelementptr inbounds i8, i8* %24, i32 2, !dbg !518
  %26 = load i8, i8* %25, align 1, !dbg !518
  %27 = zext i8 %26 to i32, !dbg !519
  %28 = load i8*, i8** %8, align 4, !dbg !520
  %29 = getelementptr inbounds i8, i8* %28, i32 3, !dbg !520
  %30 = load i8, i8* %29, align 1, !dbg !520
  %31 = zext i8 %30 to i32, !dbg !521
  %32 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @get_resource.retval, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.277, i32 0, i32 0), i32 %19, i32 %23, i32 %27, i32 %31), !dbg !522
  store i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @get_resource.retval, i32 0, i32 0), i8** %5, align 4, !dbg !523
  br label %161, !dbg !523

33:                                               ; preds = %4
  %34 = load i8*, i8** %8, align 4, !dbg !524
  %35 = getelementptr inbounds i8, i8* %34, i32 0, !dbg !524
  %36 = load i8, i8* %35, align 1, !dbg !524
  %37 = zext i8 %36 to i32, !dbg !525
  %38 = load i8*, i8** %8, align 4, !dbg !526
  %39 = getelementptr inbounds i8, i8* %38, i32 1, !dbg !526
  %40 = load i8, i8* %39, align 1, !dbg !526
  %41 = zext i8 %40 to i32, !dbg !527
  %42 = load i8*, i8** %8, align 4, !dbg !528
  %43 = getelementptr inbounds i8, i8* %42, i32 2, !dbg !528
  %44 = load i8, i8* %43, align 1, !dbg !528
  %45 = zext i8 %44 to i32, !dbg !529
  %46 = load i8*, i8** %8, align 4, !dbg !530
  %47 = getelementptr inbounds i8, i8* %46, i32 3, !dbg !530
  %48 = load i8, i8* %47, align 1, !dbg !530
  %49 = zext i8 %48 to i32, !dbg !531
  %50 = load i8*, i8** %8, align 4, !dbg !532
  %51 = getelementptr inbounds i8, i8* %50, i32 4, !dbg !532
  %52 = load i8, i8* %51, align 1, !dbg !532
  %53 = zext i8 %52 to i32, !dbg !533
  %54 = load i8*, i8** %8, align 4, !dbg !534
  %55 = getelementptr inbounds i8, i8* %54, i32 5, !dbg !534
  %56 = load i8, i8* %55, align 1, !dbg !534
  %57 = zext i8 %56 to i32, !dbg !535
  %58 = load i8*, i8** %8, align 4, !dbg !536
  %59 = getelementptr inbounds i8, i8* %58, i32 6, !dbg !536
  %60 = load i8, i8* %59, align 1, !dbg !536
  %61 = zext i8 %60 to i32, !dbg !537
  %62 = load i8*, i8** %8, align 4, !dbg !538
  %63 = getelementptr inbounds i8, i8* %62, i32 7, !dbg !538
  %64 = load i8, i8* %63, align 1, !dbg !538
  %65 = zext i8 %64 to i32, !dbg !539
  %66 = load i8*, i8** %8, align 4, !dbg !540
  %67 = getelementptr inbounds i8, i8* %66, i32 8, !dbg !540
  %68 = load i8, i8* %67, align 1, !dbg !540
  %69 = zext i8 %68 to i32, !dbg !541
  %70 = load i8*, i8** %8, align 4, !dbg !542
  %71 = getelementptr inbounds i8, i8* %70, i32 9, !dbg !542
  %72 = load i8, i8* %71, align 1, !dbg !542
  %73 = zext i8 %72 to i32, !dbg !543
  %74 = load i8*, i8** %8, align 4, !dbg !544
  %75 = getelementptr inbounds i8, i8* %74, i32 10, !dbg !544
  %76 = load i8, i8* %75, align 1, !dbg !544
  %77 = zext i8 %76 to i32, !dbg !545
  %78 = load i8*, i8** %8, align 4, !dbg !546
  %79 = getelementptr inbounds i8, i8* %78, i32 11, !dbg !546
  %80 = load i8, i8* %79, align 1, !dbg !546
  %81 = zext i8 %80 to i32, !dbg !547
  %82 = load i8*, i8** %8, align 4, !dbg !548
  %83 = getelementptr inbounds i8, i8* %82, i32 12, !dbg !548
  %84 = load i8, i8* %83, align 1, !dbg !548
  %85 = zext i8 %84 to i32, !dbg !549
  %86 = load i8*, i8** %8, align 4, !dbg !550
  %87 = getelementptr inbounds i8, i8* %86, i32 13, !dbg !550
  %88 = load i8, i8* %87, align 1, !dbg !550
  %89 = zext i8 %88 to i32, !dbg !551
  %90 = load i8*, i8** %8, align 4, !dbg !552
  %91 = getelementptr inbounds i8, i8* %90, i32 14, !dbg !552
  %92 = load i8, i8* %91, align 1, !dbg !552
  %93 = zext i8 %92 to i32, !dbg !553
  %94 = load i8*, i8** %8, align 4, !dbg !554
  %95 = getelementptr inbounds i8, i8* %94, i32 15, !dbg !554
  %96 = load i8, i8* %95, align 1, !dbg !554
  %97 = zext i8 %96 to i32, !dbg !555
  %98 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @get_resource.retval, i32 0, i32 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.278, i32 0, i32 0), i32 %37, i32 %41, i32 %45, i32 %49, i32 %53, i32 %57, i32 %61, i32 %65, i32 %69, i32 %73, i32 %77, i32 %81, i32 %85, i32 %89, i32 %93, i32 %97), !dbg !556
  store i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @get_resource.retval, i32 0, i32 0), i8** %5, align 4, !dbg !557
  br label %161, !dbg !557

99:                                               ; preds = %4
  %100 = load %struct.dnssession*, %struct.dnssession** %7, align 4, !dbg !558
  %101 = call i8* @getname(%struct.dnssession* %100, i8** %8), !dbg !559
  %102 = load i32, i32* %9, align 4, !dbg !560
  %103 = call i8* @printablename(i8* %101, i32 %102), !dbg !561
  call void @"overflow$0"(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @get_resource.retval, i32 0, i32 0), i8* %103)
  %104 = call i8* @strcpy(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @get_resource.retval, i32 0, i32 0), i8* %103), !dbg !562
  store i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @get_resource.retval, i32 0, i32 0), i8** %5, align 4, !dbg !563
  br label %161, !dbg !563

105:                                              ; preds = %4
  %106 = load %struct.dnssession*, %struct.dnssession** %7, align 4, !dbg !564
  %107 = call i8* @getname(%struct.dnssession* %106, i8** %8), !dbg !565
  %108 = load i32, i32* %9, align 4, !dbg !566
  %109 = call i8* @printablename(i8* %107, i32 %108), !dbg !567
  call void @"overflow$0"(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @get_resource.retval, i32 0, i32 0), i8* %109)
  %110 = call i8* @strcpy(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @get_resource.retval, i32 0, i32 0), i8* %109), !dbg !568
  store i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @get_resource.retval, i32 0, i32 0), i8** %5, align 4, !dbg !569
  br label %161, !dbg !569

111:                                              ; preds = %4
  call void @llvm.dbg.declare(metadata i16* %10, metadata !570, metadata !DIExpression()), !dbg !572
  %112 = load i8*, i8** %8, align 4, !dbg !573
  %113 = call zeroext i16 @getshort(i8* %112), !dbg !574
  store i16 %113, i16* %10, align 2, !dbg !575
  %114 = load i8*, i8** %8, align 4, !dbg !576
  %115 = getelementptr inbounds i8, i8* %114, i32 2, !dbg !576
  store i8* %115, i8** %8, align 4, !dbg !576
  %116 = load i16, i16* %10, align 2, !dbg !577
  %117 = zext i16 %116 to i32, !dbg !577
  %118 = load %struct.dnssession*, %struct.dnssession** %7, align 4, !dbg !578
  %119 = call i8* @getname(%struct.dnssession* %118, i8** %8), !dbg !579
  %120 = load i32, i32* %9, align 4, !dbg !580
  %121 = call i8* @printablename(i8* %119, i32 %120), !dbg !581
  %122 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @get_resource.retval, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.279, i32 0, i32 0), i32 %117, i8* %121), !dbg !582
  store i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @get_resource.retval, i32 0, i32 0), i8** %5, align 4, !dbg !583
  br label %161, !dbg !583

123:                                              ; preds = %4
  %124 = load %struct.dnssession*, %struct.dnssession** %7, align 4, !dbg !584
  %125 = call i8* @getname(%struct.dnssession* %124, i8** %8), !dbg !585
  %126 = load i32, i32* %9, align 4, !dbg !586
  %127 = call i8* @printablename(i8* %125, i32 %126), !dbg !587
  call void @"overflow$0"(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @get_resource.retval, i32 0, i32 0), i8* %127)
  %128 = call i8* @strcpy(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @get_resource.retval, i32 0, i32 0), i8* %127), !dbg !588
  store i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @get_resource.retval, i32 0, i32 0), i8** %5, align 4, !dbg !589
  br label %161, !dbg !589

129:                                              ; preds = %4
  %130 = load %struct.dnssession*, %struct.dnssession** %7, align 4, !dbg !590
  %131 = call i8* @getname(%struct.dnssession* %130, i8** %8), !dbg !591
  %132 = load i32, i32* %9, align 4, !dbg !592
  %133 = call i8* @printablename(i8* %131, i32 %132), !dbg !593
  call void @"overflow$0"(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @get_resource.retval, i32 0, i32 0), i8* %133)
  %134 = call i8* @strcpy(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @get_resource.retval, i32 0, i32 0), i8* %133), !dbg !594
  store i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @get_resource.retval, i32 0, i32 0), i8** %5, align 4, !dbg !595
  br label %161, !dbg !595

135:                                              ; preds = %4
  %136 = load %struct.dnssession*, %struct.dnssession** %7, align 4, !dbg !596
  %137 = call i8* @getname(%struct.dnssession* %136, i8** %8), !dbg !597
  %138 = load i32, i32* %9, align 4, !dbg !598
  %139 = call i8* @printablename(i8* %137, i32 %138), !dbg !599
  call void @"overflow$0"(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @get_resource.retval, i32 0, i32 0), i8* %139)
  %140 = call i8* @strcpy(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @get_resource.retval, i32 0, i32 0), i8* %139), !dbg !600
  store i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @get_resource.retval, i32 0, i32 0), i8** %5, align 4, !dbg !601
  br label %161, !dbg !601

141:                                              ; preds = %4
  call void @llvm.dbg.declare(metadata [1025 x i8]* %11, metadata !602, metadata !DIExpression()), !dbg !604
  call void @llvm.dbg.declare(metadata [1025 x i8]* %12, metadata !605, metadata !DIExpression()), !dbg !606
  call void @llvm.dbg.declare(metadata i32* %13, metadata !607, metadata !DIExpression()), !dbg !608
  %142 = getelementptr inbounds [1025 x i8], [1025 x i8]* %11, i32 0, i32 0, !dbg !609
  %143 = load %struct.dnssession*, %struct.dnssession** %7, align 4, !dbg !610
  %144 = call i8* @getname(%struct.dnssession* %143, i8** %8), !dbg !611
  %145 = load i32, i32* %9, align 4, !dbg !612
  %146 = call i8* @printablename(i8* %144, i32 %145), !dbg !613
  call void @"overflow$0"(i8* %142, i8* %146)
  %147 = call i8* @strcpy(i8* %142, i8* %146), !dbg !614
  %148 = getelementptr inbounds [1025 x i8], [1025 x i8]* %12, i32 0, i32 0, !dbg !615
  %149 = load %struct.dnssession*, %struct.dnssession** %7, align 4, !dbg !616
  %150 = call i8* @getname(%struct.dnssession* %149, i8** %8), !dbg !617
  %151 = load i32, i32* %9, align 4, !dbg !618
  %152 = call i8* @printablename(i8* %150, i32 %151), !dbg !619
  call void @"overflow$0"(i8* %148, i8* %152)
  %153 = call i8* @strcpy(i8* %148, i8* %152), !dbg !620
  %154 = load i8*, i8** %8, align 4, !dbg !621
  %155 = call i32 @getlong(i8* %154), !dbg !622
  store i32 %155, i32* %13, align 4, !dbg !623
  %156 = load i32, i32* %13, align 4, !dbg !624
  %157 = getelementptr inbounds [1025 x i8], [1025 x i8]* %11, i32 0, i32 0, !dbg !625
  %158 = getelementptr inbounds [1025 x i8], [1025 x i8]* %12, i32 0, i32 0, !dbg !626
  %159 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([3075 x i8], [3075 x i8]* @get_resource.retval.280, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.281, i32 0, i32 0), i32 %156, i8* %157, i8* %158), !dbg !627
  store i8* getelementptr inbounds ([3075 x i8], [3075 x i8]* @get_resource.retval.280, i32 0, i32 0), i8** %5, align 4, !dbg !628
  br label %161, !dbg !628

160:                                              ; preds = %4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.266, i32 0, i32 0), i8** %5, align 4, !dbg !629
  br label %161, !dbg !629

161:                                              ; preds = %160, %141, %135, %129, %123, %111, %105, %99, %33, %15
  %162 = load i8*, i8** %5, align 4, !dbg !630
  ret i8* %162, !dbg !630
}

; Function Attrs: noinline nounwind optnone
define void @extract_data(%struct.dnssession* %0) #0 !dbg !631 {
  %2 = alloca %struct.dnssession*, align 4
  %3 = alloca %struct.dnsheader*, align 4
  %4 = alloca %struct.dnsquestion*, align 4
  %5 = alloca %struct.dnsrr*, align 4
  %6 = alloca %struct.dnsrr*, align 4
  %7 = alloca %struct.dnsrr*, align 4
  %8 = alloca i8*, align 4
  %9 = alloca i8*, align 4
  %10 = alloca i8*, align 4
  %11 = alloca i8*, align 4
  %12 = alloca i8*, align 4
  %13 = alloca i8*, align 4
  %14 = alloca i32, align 4
  store %struct.dnssession* %0, %struct.dnssession** %2, align 4
  call void @llvm.dbg.declare(metadata %struct.dnssession** %2, metadata !634, metadata !DIExpression()), !dbg !635
  call void @llvm.dbg.declare(metadata %struct.dnsheader** %3, metadata !636, metadata !DIExpression()), !dbg !637
  store %struct.dnsheader* null, %struct.dnsheader** %3, align 4, !dbg !637
  call void @llvm.dbg.declare(metadata %struct.dnsquestion** %4, metadata !638, metadata !DIExpression()), !dbg !639
  store %struct.dnsquestion* null, %struct.dnsquestion** %4, align 4, !dbg !639
  call void @llvm.dbg.declare(metadata %struct.dnsrr** %5, metadata !640, metadata !DIExpression()), !dbg !641
  store %struct.dnsrr* null, %struct.dnsrr** %5, align 4, !dbg !641
  call void @llvm.dbg.declare(metadata %struct.dnsrr** %6, metadata !642, metadata !DIExpression()), !dbg !643
  store %struct.dnsrr* null, %struct.dnsrr** %6, align 4, !dbg !643
  call void @llvm.dbg.declare(metadata %struct.dnsrr** %7, metadata !644, metadata !DIExpression()), !dbg !645
  store %struct.dnsrr* null, %struct.dnsrr** %7, align 4, !dbg !645
  call void @llvm.dbg.declare(metadata i8** %8, metadata !646, metadata !DIExpression()), !dbg !647
  call void @llvm.dbg.declare(metadata i8** %9, metadata !648, metadata !DIExpression()), !dbg !649
  call void @llvm.dbg.declare(metadata i8** %10, metadata !650, metadata !DIExpression()), !dbg !651
  call void @llvm.dbg.declare(metadata i8** %11, metadata !652, metadata !DIExpression()), !dbg !653
  call void @llvm.dbg.declare(metadata i8** %12, metadata !654, metadata !DIExpression()), !dbg !655
  call void @llvm.dbg.declare(metadata i8** %13, metadata !656, metadata !DIExpression()), !dbg !657
  call void @llvm.dbg.declare(metadata i32* %14, metadata !658, metadata !DIExpression()), !dbg !659
  %15 = load %struct.dnssession*, %struct.dnssession** %2, align 4, !dbg !660
  %16 = getelementptr inbounds %struct.dnssession, %struct.dnssession* %15, i32 0, i32 11, !dbg !661
  %17 = load i8*, i8** %16, align 4, !dbg !661
  store i8* %17, i8** %13, align 4, !dbg !662
  %18 = load i8*, i8** %13, align 4, !dbg !663
  %19 = load %struct.dnssession*, %struct.dnssession** %2, align 4, !dbg !664
  %20 = getelementptr inbounds %struct.dnssession, %struct.dnssession* %19, i32 0, i32 12, !dbg !665
  store i8* %18, i8** %20, align 4, !dbg !666
  %21 = load i8*, i8** %13, align 4, !dbg !667
  store i8* %21, i8** %8, align 4, !dbg !668
  %22 = call noalias align 16 i8* @calloc(i32 1, i32 12), !dbg !669
  %23 = bitcast i8* %22 to %struct.dnsheader*, !dbg !670
  store %struct.dnsheader* %23, %struct.dnsheader** %3, align 4, !dbg !671
  %24 = load %struct.dnsheader*, %struct.dnsheader** %3, align 4, !dbg !672
  %25 = bitcast %struct.dnsheader* %24 to i8*, !dbg !673
  %26 = load %struct.dnssession*, %struct.dnssession** %2, align 4, !dbg !674
  %27 = getelementptr inbounds %struct.dnssession, %struct.dnssession* %26, i32 0, i32 11, !dbg !675
  %28 = load i8*, i8** %27, align 4, !dbg !675
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 2 %25, i8* align 1 %28, i32 12, i1 false), !dbg !673
  %29 = load %struct.dnsheader*, %struct.dnsheader** %3, align 4, !dbg !676
  %30 = getelementptr inbounds %struct.dnsheader, %struct.dnsheader* %29, i32 0, i32 0, !dbg !677
  %31 = load i16, i16* %30, align 2, !dbg !677
  %32 = call zeroext i16 @ntohs(i16 zeroext %31), !dbg !678
  %33 = load %struct.dnsheader*, %struct.dnsheader** %3, align 4, !dbg !679
  %34 = getelementptr inbounds %struct.dnsheader, %struct.dnsheader* %33, i32 0, i32 0, !dbg !680
  store i16 %32, i16* %34, align 2, !dbg !681
  %35 = load %struct.dnsheader*, %struct.dnsheader** %3, align 4, !dbg !682
  %36 = getelementptr inbounds %struct.dnsheader, %struct.dnsheader* %35, i32 0, i32 1, !dbg !683
  %37 = bitcast %union.anon* %36 to i16*, !dbg !684
  %38 = load i16, i16* %37, align 2, !dbg !684
  %39 = call zeroext i16 @ntohs(i16 zeroext %38), !dbg !685
  %40 = load %struct.dnsheader*, %struct.dnsheader** %3, align 4, !dbg !686
  %41 = getelementptr inbounds %struct.dnsheader, %struct.dnsheader* %40, i32 0, i32 1, !dbg !687
  %42 = bitcast %union.anon* %41 to i16*, !dbg !688
  store i16 %39, i16* %42, align 2, !dbg !689
  %43 = load %struct.dnsheader*, %struct.dnsheader** %3, align 4, !dbg !690
  %44 = getelementptr inbounds %struct.dnsheader, %struct.dnsheader* %43, i32 0, i32 2, !dbg !691
  %45 = load i16, i16* %44, align 2, !dbg !691
  %46 = call zeroext i16 @ntohs(i16 zeroext %45), !dbg !692
  %47 = load %struct.dnsheader*, %struct.dnsheader** %3, align 4, !dbg !693
  %48 = getelementptr inbounds %struct.dnsheader, %struct.dnsheader* %47, i32 0, i32 2, !dbg !694
  store i16 %46, i16* %48, align 2, !dbg !695
  %49 = load %struct.dnsheader*, %struct.dnsheader** %3, align 4, !dbg !696
  %50 = getelementptr inbounds %struct.dnsheader, %struct.dnsheader* %49, i32 0, i32 3, !dbg !697
  %51 = load i16, i16* %50, align 2, !dbg !697
  %52 = call zeroext i16 @ntohs(i16 zeroext %51), !dbg !698
  %53 = load %struct.dnsheader*, %struct.dnsheader** %3, align 4, !dbg !699
  %54 = getelementptr inbounds %struct.dnsheader, %struct.dnsheader* %53, i32 0, i32 3, !dbg !700
  store i16 %52, i16* %54, align 2, !dbg !701
  %55 = load %struct.dnsheader*, %struct.dnsheader** %3, align 4, !dbg !702
  %56 = getelementptr inbounds %struct.dnsheader, %struct.dnsheader* %55, i32 0, i32 4, !dbg !703
  %57 = load i16, i16* %56, align 2, !dbg !703
  %58 = call zeroext i16 @ntohs(i16 zeroext %57), !dbg !704
  %59 = load %struct.dnsheader*, %struct.dnsheader** %3, align 4, !dbg !705
  %60 = getelementptr inbounds %struct.dnsheader, %struct.dnsheader* %59, i32 0, i32 4, !dbg !706
  store i16 %58, i16* %60, align 2, !dbg !707
  %61 = load %struct.dnsheader*, %struct.dnsheader** %3, align 4, !dbg !708
  %62 = getelementptr inbounds %struct.dnsheader, %struct.dnsheader* %61, i32 0, i32 5, !dbg !709
  %63 = load i16, i16* %62, align 2, !dbg !709
  %64 = call zeroext i16 @ntohs(i16 zeroext %63), !dbg !710
  %65 = load %struct.dnsheader*, %struct.dnsheader** %3, align 4, !dbg !711
  %66 = getelementptr inbounds %struct.dnsheader, %struct.dnsheader* %65, i32 0, i32 5, !dbg !712
  store i16 %64, i16* %66, align 2, !dbg !713
  %67 = load i8*, i8** %13, align 4, !dbg !714
  %68 = getelementptr inbounds i8, i8* %67, i32 12, !dbg !714
  store i8* %68, i8** %13, align 4, !dbg !714
  %69 = load i8*, i8** %13, align 4, !dbg !715
  %70 = load %struct.dnssession*, %struct.dnssession** %2, align 4, !dbg !716
  %71 = getelementptr inbounds %struct.dnssession, %struct.dnssession* %70, i32 0, i32 13, !dbg !717
  store i8* %69, i8** %71, align 4, !dbg !718
  %72 = load i8*, i8** %13, align 4, !dbg !719
  store i8* %72, i8** %9, align 4, !dbg !720
  %73 = call noalias align 16 i8* @calloc(i32 1, i32 12), !dbg !721
  %74 = bitcast i8* %73 to %struct.dnsquestion*, !dbg !722
  store %struct.dnsquestion* %74, %struct.dnsquestion** %4, align 4, !dbg !723
  %75 = load %struct.dnssession*, %struct.dnssession** %2, align 4, !dbg !724
  %76 = call i8* @getname(%struct.dnssession* %75, i8** %9), !dbg !725
  %77 = call align 16 i8* @strdup(i8* %76) #11, !dbg !726
  %78 = load %struct.dnsquestion*, %struct.dnsquestion** %4, align 4, !dbg !727
  %79 = getelementptr inbounds %struct.dnsquestion, %struct.dnsquestion* %78, i32 0, i32 1, !dbg !728
  store i8* %77, i8** %79, align 4, !dbg !729
  %80 = load i8*, i8** %9, align 4, !dbg !730
  %81 = call zeroext i16 @getshort(i8* %80), !dbg !731
  %82 = load %struct.dnsquestion*, %struct.dnsquestion** %4, align 4, !dbg !732
  %83 = getelementptr inbounds %struct.dnsquestion, %struct.dnsquestion* %82, i32 0, i32 2, !dbg !733
  store i16 %81, i16* %83, align 4, !dbg !734
  %84 = load i8*, i8** %9, align 4, !dbg !735
  %85 = getelementptr inbounds i8, i8* %84, i32 2, !dbg !736
  %86 = call zeroext i16 @getshort(i8* %85), !dbg !737
  %87 = load %struct.dnsquestion*, %struct.dnsquestion** %4, align 4, !dbg !738
  %88 = getelementptr inbounds %struct.dnsquestion, %struct.dnsquestion* %87, i32 0, i32 3, !dbg !739
  store i16 %86, i16* %88, align 2, !dbg !740
  %89 = load i8*, i8** %9, align 4, !dbg !741
  %90 = getelementptr inbounds i8, i8* %89, i32 4, !dbg !742
  store i8* %90, i8** %13, align 4, !dbg !743
  %91 = load i8*, i8** %13, align 4, !dbg !744
  %92 = load %struct.dnssession*, %struct.dnssession** %2, align 4, !dbg !745
  %93 = getelementptr inbounds %struct.dnssession, %struct.dnssession* %92, i32 0, i32 14, !dbg !746
  store i8* %91, i8** %93, align 4, !dbg !747
  store i32 0, i32* %14, align 4, !dbg !748
  br label %94, !dbg !750

94:                                               ; preds = %106, %1
  %95 = load i32, i32* %14, align 4, !dbg !751
  %96 = load %struct.dnsheader*, %struct.dnsheader** %3, align 4, !dbg !753
  %97 = getelementptr inbounds %struct.dnsheader, %struct.dnsheader* %96, i32 0, i32 3, !dbg !754
  %98 = load i16, i16* %97, align 2, !dbg !754
  %99 = zext i16 %98 to i32, !dbg !753
  %100 = icmp slt i32 %95, %99, !dbg !755
  br i1 %100, label %101, label %109, !dbg !756

101:                                              ; preds = %94
  %102 = load i8*, i8** %13, align 4, !dbg !757
  store i8* %102, i8** %10, align 4, !dbg !759
  %103 = load %struct.dnssession*, %struct.dnssession** %2, align 4, !dbg !760
  %104 = load i8*, i8** %10, align 4, !dbg !761
  %105 = call i8* @extract_rr(%struct.dnssession* %103, i8* %104, %struct.dnsrr** %5), !dbg !762
  store i8* %105, i8** %13, align 4, !dbg !763
  br label %106, !dbg !764

106:                                              ; preds = %101
  %107 = load i32, i32* %14, align 4, !dbg !765
  %108 = add nsw i32 %107, 1, !dbg !765
  store i32 %108, i32* %14, align 4, !dbg !765
  br label %94, !dbg !766, !llvm.loop !767

109:                                              ; preds = %94
  %110 = load i8*, i8** %13, align 4, !dbg !769
  %111 = load %struct.dnssession*, %struct.dnssession** %2, align 4, !dbg !770
  %112 = getelementptr inbounds %struct.dnssession, %struct.dnssession* %111, i32 0, i32 15, !dbg !771
  store i8* %110, i8** %112, align 4, !dbg !772
  store i32 0, i32* %14, align 4, !dbg !773
  br label %113, !dbg !775

113:                                              ; preds = %125, %109
  %114 = load i32, i32* %14, align 4, !dbg !776
  %115 = load %struct.dnsheader*, %struct.dnsheader** %3, align 4, !dbg !778
  %116 = getelementptr inbounds %struct.dnsheader, %struct.dnsheader* %115, i32 0, i32 4, !dbg !779
  %117 = load i16, i16* %116, align 2, !dbg !779
  %118 = zext i16 %117 to i32, !dbg !778
  %119 = icmp slt i32 %114, %118, !dbg !780
  br i1 %119, label %120, label %128, !dbg !781

120:                                              ; preds = %113
  %121 = load i8*, i8** %13, align 4, !dbg !782
  store i8* %121, i8** %11, align 4, !dbg !784
  %122 = load %struct.dnssession*, %struct.dnssession** %2, align 4, !dbg !785
  %123 = load i8*, i8** %11, align 4, !dbg !786
  %124 = call i8* @extract_rr(%struct.dnssession* %122, i8* %123, %struct.dnsrr** %6), !dbg !787
  store i8* %124, i8** %13, align 4, !dbg !788
  br label %125, !dbg !789

125:                                              ; preds = %120
  %126 = load i32, i32* %14, align 4, !dbg !790
  %127 = add nsw i32 %126, 1, !dbg !790
  store i32 %127, i32* %14, align 4, !dbg !790
  br label %113, !dbg !791, !llvm.loop !792

128:                                              ; preds = %113
  %129 = load i8*, i8** %13, align 4, !dbg !794
  %130 = load %struct.dnssession*, %struct.dnssession** %2, align 4, !dbg !795
  %131 = getelementptr inbounds %struct.dnssession, %struct.dnssession* %130, i32 0, i32 16, !dbg !796
  store i8* %129, i8** %131, align 4, !dbg !797
  store i32 0, i32* %14, align 4, !dbg !798
  br label %132, !dbg !800

132:                                              ; preds = %144, %128
  %133 = load i32, i32* %14, align 4, !dbg !801
  %134 = load %struct.dnsheader*, %struct.dnsheader** %3, align 4, !dbg !803
  %135 = getelementptr inbounds %struct.dnsheader, %struct.dnsheader* %134, i32 0, i32 5, !dbg !804
  %136 = load i16, i16* %135, align 2, !dbg !804
  %137 = zext i16 %136 to i32, !dbg !803
  %138 = icmp slt i32 %133, %137, !dbg !805
  br i1 %138, label %139, label %147, !dbg !806

139:                                              ; preds = %132
  %140 = load i8*, i8** %13, align 4, !dbg !807
  store i8* %140, i8** %12, align 4, !dbg !809
  %141 = load %struct.dnssession*, %struct.dnssession** %2, align 4, !dbg !810
  %142 = load i8*, i8** %12, align 4, !dbg !811
  %143 = call i8* @extract_rr(%struct.dnssession* %141, i8* %142, %struct.dnsrr** %7), !dbg !812
  store i8* %143, i8** %13, align 4, !dbg !813
  br label %144, !dbg !814

144:                                              ; preds = %139
  %145 = load i32, i32* %14, align 4, !dbg !815
  %146 = add nsw i32 %145, 1, !dbg !815
  store i32 %146, i32* %14, align 4, !dbg !815
  br label %132, !dbg !816, !llvm.loop !817

147:                                              ; preds = %132
  %148 = load %struct.dnsheader*, %struct.dnsheader** %3, align 4, !dbg !819
  %149 = load %struct.dnssession*, %struct.dnssession** %2, align 4, !dbg !820
  %150 = getelementptr inbounds %struct.dnssession, %struct.dnssession* %149, i32 0, i32 2, !dbg !821
  store %struct.dnsheader* %148, %struct.dnsheader** %150, align 4, !dbg !822
  %151 = load %struct.dnsquestion*, %struct.dnsquestion** %4, align 4, !dbg !823
  %152 = load %struct.dnssession*, %struct.dnssession** %2, align 4, !dbg !824
  %153 = getelementptr inbounds %struct.dnssession, %struct.dnssession* %152, i32 0, i32 3, !dbg !825
  store %struct.dnsquestion* %151, %struct.dnsquestion** %153, align 4, !dbg !826
  %154 = load %struct.dnsrr*, %struct.dnsrr** %5, align 4, !dbg !827
  %155 = load %struct.dnssession*, %struct.dnssession** %2, align 4, !dbg !828
  %156 = getelementptr inbounds %struct.dnssession, %struct.dnssession* %155, i32 0, i32 4, !dbg !829
  store %struct.dnsrr* %154, %struct.dnsrr** %156, align 4, !dbg !830
  %157 = load %struct.dnsrr*, %struct.dnsrr** %7, align 4, !dbg !831
  %158 = load %struct.dnssession*, %struct.dnssession** %2, align 4, !dbg !832
  %159 = getelementptr inbounds %struct.dnssession, %struct.dnssession* %158, i32 0, i32 6, !dbg !833
  store %struct.dnsrr* %157, %struct.dnsrr** %159, align 4, !dbg !834
  %160 = load %struct.dnsrr*, %struct.dnsrr** %6, align 4, !dbg !835
  %161 = load %struct.dnssession*, %struct.dnssession** %2, align 4, !dbg !836
  %162 = getelementptr inbounds %struct.dnssession, %struct.dnssession* %161, i32 0, i32 5, !dbg !837
  store %struct.dnsrr* %160, %struct.dnsrr** %162, align 4, !dbg !838
  ret void, !dbg !839
}

declare zeroext i16 @ntohs(i16 zeroext) #3

declare i32 @sprintf(i8*, i8*, ...) #3

declare i8* @strcat(i8*, i8*) #3

; Function Attrs: noinline nounwind optnone
define i8* @get_class(i32 %0) #0 !dbg !840 {
  %2 = alloca i8*, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !841, metadata !DIExpression()), !dbg !842
  %4 = load i32, i32* %3, align 4, !dbg !843
  switch i32 %4, label %10 [
    i32 1, label %5
    i32 3, label %6
    i32 4, label %7
    i32 254, label %8
    i32 255, label %9
  ], !dbg !844

5:                                                ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.261, i32 0, i32 0), i8** %2, align 4, !dbg !845
  br label %11, !dbg !845

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.262, i32 0, i32 0), i8** %2, align 4, !dbg !847
  br label %11, !dbg !847

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.263, i32 0, i32 0), i8** %2, align 4, !dbg !848
  br label %11, !dbg !848

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.264, i32 0, i32 0), i8** %2, align 4, !dbg !849
  br label %11, !dbg !849

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.265, i32 0, i32 0), i8** %2, align 4, !dbg !850
  br label %11, !dbg !850

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.266, i32 0, i32 0), i8** %2, align 4, !dbg !851
  br label %11, !dbg !851

11:                                               ; preds = %10, %9, %8, %7, %6, %5
  %12 = load i8*, i8** %2, align 4, !dbg !852
  ret i8* %12, !dbg !852
}

; Function Attrs: noinline nounwind optnone
define i8* @get_type(i32 %0) #0 !dbg !853 {
  %2 = alloca i8*, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !854, metadata !DIExpression()), !dbg !855
  %4 = load i32, i32* %3, align 4, !dbg !856
  switch i32 %4, label %10 [
    i32 1, label %5
    i32 2, label %6
    i32 5, label %7
    i32 6, label %8
    i32 12, label %9
  ], !dbg !857

5:                                                ; preds = %1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.267, i32 0, i32 0), i8** %2, align 4, !dbg !858
  br label %11, !dbg !858

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.268, i32 0, i32 0), i8** %2, align 4, !dbg !860
  br label %11, !dbg !860

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.269, i32 0, i32 0), i8** %2, align 4, !dbg !861
  br label %11, !dbg !861

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.270, i32 0, i32 0), i8** %2, align 4, !dbg !862
  br label %11, !dbg !862

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.271, i32 0, i32 0), i8** %2, align 4, !dbg !863
  br label %11, !dbg !863

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.266, i32 0, i32 0), i8** %2, align 4, !dbg !864
  br label %11, !dbg !864

11:                                               ; preds = %10, %9, %8, %7, %6, %5
  %12 = load i8*, i8** %2, align 4, !dbg !865
  ret i8* %12, !dbg !865
}

; Function Attrs: noinline nounwind optnone
define i8* @get_ttl(i32 %0) #0 !dbg !147 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !866, metadata !DIExpression()), !dbg !867
  store i8 0, i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @get_ttl.retval, i32 0, i32 0), align 16, !dbg !868
  %3 = load i32, i32* %2, align 4, !dbg !869
  %4 = icmp sgt i32 %3, 604800, !dbg !871
  br i1 %4, label %5, label %11, !dbg !872

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4, !dbg !873
  %7 = sdiv i32 %6, 604800, !dbg !875
  %8 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @get_ttl.retval, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.272, i32 0, i32 0), i32 %7), !dbg !876
  %9 = load i32, i32* %2, align 4, !dbg !877
  %10 = srem i32 %9, 604800, !dbg !877
  store i32 %10, i32* %2, align 4, !dbg !877
  br label %11, !dbg !878

11:                                               ; preds = %5, %1
  %12 = load i32, i32* %2, align 4, !dbg !879
  %13 = icmp sgt i32 %12, 86400, !dbg !881
  br i1 %13, label %14, label %22, !dbg !882

14:                                               ; preds = %11
  %15 = call i32 @strlen(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @get_ttl.retval, i32 0, i32 0)) #10, !dbg !883
  %16 = getelementptr inbounds i8, i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @get_ttl.retval, i32 0, i32 0), i32 %15, !dbg !885
  %17 = load i32, i32* %2, align 4, !dbg !886
  %18 = sdiv i32 %17, 86400, !dbg !887
  %19 = call i32 (i8*, i8*, ...) @sprintf(i8* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.273, i32 0, i32 0), i32 %18), !dbg !888
  %20 = load i32, i32* %2, align 4, !dbg !889
  %21 = srem i32 %20, 86400, !dbg !889
  store i32 %21, i32* %2, align 4, !dbg !889
  br label %22, !dbg !890

22:                                               ; preds = %14, %11
  %23 = load i32, i32* %2, align 4, !dbg !891
  %24 = icmp sgt i32 %23, 3600, !dbg !893
  br i1 %24, label %25, label %33, !dbg !894

25:                                               ; preds = %22
  %26 = call i32 @strlen(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @get_ttl.retval, i32 0, i32 0)) #10, !dbg !895
  %27 = getelementptr inbounds i8, i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @get_ttl.retval, i32 0, i32 0), i32 %26, !dbg !897
  %28 = load i32, i32* %2, align 4, !dbg !898
  %29 = sdiv i32 %28, 3600, !dbg !899
  %30 = call i32 (i8*, i8*, ...) @sprintf(i8* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.274, i32 0, i32 0), i32 %29), !dbg !900
  %31 = load i32, i32* %2, align 4, !dbg !901
  %32 = srem i32 %31, 3600, !dbg !901
  store i32 %32, i32* %2, align 4, !dbg !901
  br label %33, !dbg !902

33:                                               ; preds = %25, %22
  %34 = load i32, i32* %2, align 4, !dbg !903
  %35 = icmp sgt i32 %34, 60, !dbg !905
  br i1 %35, label %36, label %44, !dbg !906

36:                                               ; preds = %33
  %37 = call i32 @strlen(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @get_ttl.retval, i32 0, i32 0)) #10, !dbg !907
  %38 = getelementptr inbounds i8, i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @get_ttl.retval, i32 0, i32 0), i32 %37, !dbg !909
  %39 = load i32, i32* %2, align 4, !dbg !910
  %40 = sdiv i32 %39, 60, !dbg !911
  %41 = call i32 (i8*, i8*, ...) @sprintf(i8* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.275, i32 0, i32 0), i32 %40), !dbg !912
  %42 = load i32, i32* %2, align 4, !dbg !913
  %43 = srem i32 %42, 60, !dbg !913
  store i32 %43, i32* %2, align 4, !dbg !913
  br label %44, !dbg !914

44:                                               ; preds = %36, %33
  %45 = load i32, i32* %2, align 4, !dbg !915
  %46 = icmp sgt i32 %45, 0, !dbg !917
  br i1 %46, label %47, label %52, !dbg !918

47:                                               ; preds = %44
  %48 = call i32 @strlen(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @get_ttl.retval, i32 0, i32 0)) #10, !dbg !919
  %49 = getelementptr inbounds i8, i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @get_ttl.retval, i32 0, i32 0), i32 %48, !dbg !921
  %50 = load i32, i32* %2, align 4, !dbg !922
  %51 = call i32 (i8*, i8*, ...) @sprintf(i8* %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.276, i32 0, i32 0), i32 %50), !dbg !923
  br label %52, !dbg !924

52:                                               ; preds = %47, %44
  ret i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @get_ttl.retval, i32 0, i32 0), !dbg !925
}

; Function Attrs: noinline nounwind optnone
define void @dump_question(%struct.dnsquestion* %0) #0 !dbg !926 {
  %2 = alloca %struct.dnsquestion*, align 4
  store %struct.dnsquestion* %0, %struct.dnsquestion** %2, align 4
  call void @llvm.dbg.declare(metadata %struct.dnsquestion** %2, metadata !929, metadata !DIExpression()), !dbg !930
  %3 = load %struct.dnsquestion*, %struct.dnsquestion** %2, align 4, !dbg !931
  %4 = getelementptr inbounds %struct.dnsquestion, %struct.dnsquestion* %3, i32 0, i32 1, !dbg !932
  %5 = load i8*, i8** %4, align 4, !dbg !932
  %6 = call i8* @printablename(i8* %5, i32 0), !dbg !933
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.282, i32 0, i32 0), i8* %6), !dbg !934
  %8 = load %struct.dnsquestion*, %struct.dnsquestion** %2, align 4, !dbg !935
  %9 = getelementptr inbounds %struct.dnsquestion, %struct.dnsquestion* %8, i32 0, i32 2, !dbg !936
  %10 = load i16, i16* %9, align 4, !dbg !936
  %11 = zext i16 %10 to i32, !dbg !935
  %12 = load %struct.dnsquestion*, %struct.dnsquestion** %2, align 4, !dbg !937
  %13 = getelementptr inbounds %struct.dnsquestion, %struct.dnsquestion* %12, i32 0, i32 2, !dbg !938
  %14 = load i16, i16* %13, align 4, !dbg !938
  %15 = zext i16 %14 to i32, !dbg !937
  %16 = call i8* @get_type(i32 %15), !dbg !939
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.283, i32 0, i32 0), i32 %11, i8* %16), !dbg !940
  %18 = load %struct.dnsquestion*, %struct.dnsquestion** %2, align 4, !dbg !941
  %19 = getelementptr inbounds %struct.dnsquestion, %struct.dnsquestion* %18, i32 0, i32 3, !dbg !942
  %20 = load i16, i16* %19, align 2, !dbg !942
  %21 = zext i16 %20 to i32, !dbg !941
  %22 = load %struct.dnsquestion*, %struct.dnsquestion** %2, align 4, !dbg !943
  %23 = getelementptr inbounds %struct.dnsquestion, %struct.dnsquestion* %22, i32 0, i32 3, !dbg !944
  %24 = load i16, i16* %23, align 2, !dbg !944
  %25 = zext i16 %24 to i32, !dbg !943
  %26 = call i8* @get_class(i32 %25), !dbg !945
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.284, i32 0, i32 0), i32 %21, i8* %26), !dbg !946
  ret void, !dbg !947
}

declare i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind optnone
define void @dump_header(%struct.dnsheader* %0) #0 !dbg !948 {
  %2 = alloca %struct.dnsheader*, align 4
  store %struct.dnsheader* %0, %struct.dnsheader** %2, align 4
  call void @llvm.dbg.declare(metadata %struct.dnsheader** %2, metadata !951, metadata !DIExpression()), !dbg !952
  %3 = load %struct.dnsheader*, %struct.dnsheader** %2, align 4, !dbg !953
  %4 = getelementptr inbounds %struct.dnsheader, %struct.dnsheader* %3, i32 0, i32 0, !dbg !954
  %5 = load i16, i16* %4, align 2, !dbg !954
  %6 = zext i16 %5 to i32, !dbg !953
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.285, i32 0, i32 0), i32 %6), !dbg !955
  %8 = load %struct.dnsheader*, %struct.dnsheader** %2, align 4, !dbg !956
  %9 = getelementptr inbounds %struct.dnsheader, %struct.dnsheader* %8, i32 0, i32 1, !dbg !957
  %10 = bitcast %union.anon* %9 to i16*, !dbg !958
  %11 = load i16, i16* %10, align 2, !dbg !958
  %12 = zext i16 %11 to i32, !dbg !956
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.286, i32 0, i32 0), i32 %12), !dbg !959
  %14 = load %struct.dnsheader*, %struct.dnsheader** %2, align 4, !dbg !960
  %15 = getelementptr inbounds %struct.dnsheader, %struct.dnsheader* %14, i32 0, i32 1, !dbg !962
  %16 = bitcast %union.anon* %15 to %struct.bit*, !dbg !963
  %17 = bitcast %struct.bit* %16 to i16*, !dbg !964
  %18 = load i16, i16* %17, align 2, !dbg !964
  %19 = lshr i16 %18, 15, !dbg !964
  %20 = trunc i16 %19 to i8, !dbg !964
  %21 = icmp ne i8 %20, 0, !dbg !960
  br i1 %21, label %22, label %24, !dbg !965

22:                                               ; preds = %1
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.287, i32 0, i32 0)), !dbg !966
  br label %26, !dbg !966

24:                                               ; preds = %1
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.288, i32 0, i32 0)), !dbg !967
  br label %26

26:                                               ; preds = %24, %22
  %27 = load %struct.dnsheader*, %struct.dnsheader** %2, align 4, !dbg !968
  %28 = getelementptr inbounds %struct.dnsheader, %struct.dnsheader* %27, i32 0, i32 1, !dbg !970
  %29 = bitcast %union.anon* %28 to %struct.bit*, !dbg !971
  %30 = bitcast %struct.bit* %29 to i16*, !dbg !972
  %31 = load i16, i16* %30, align 2, !dbg !972
  %32 = lshr i16 %31, 10, !dbg !972
  %33 = and i16 %32, 1, !dbg !972
  %34 = trunc i16 %33 to i8, !dbg !972
  %35 = icmp ne i8 %34, 0, !dbg !968
  br i1 %35, label %36, label %38, !dbg !973

36:                                               ; preds = %26
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.289, i32 0, i32 0)), !dbg !974
  br label %38, !dbg !974

38:                                               ; preds = %36, %26
  %39 = load %struct.dnsheader*, %struct.dnsheader** %2, align 4, !dbg !975
  %40 = getelementptr inbounds %struct.dnsheader, %struct.dnsheader* %39, i32 0, i32 1, !dbg !977
  %41 = bitcast %union.anon* %40 to %struct.bit*, !dbg !978
  %42 = bitcast %struct.bit* %41 to i16*, !dbg !979
  %43 = load i16, i16* %42, align 2, !dbg !979
  %44 = lshr i16 %43, 9, !dbg !979
  %45 = and i16 %44, 1, !dbg !979
  %46 = trunc i16 %45 to i8, !dbg !979
  %47 = icmp ne i8 %46, 0, !dbg !975
  br i1 %47, label %48, label %50, !dbg !980

48:                                               ; preds = %38
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.290, i32 0, i32 0)), !dbg !981
  br label %50, !dbg !981

50:                                               ; preds = %48, %38
  %51 = load %struct.dnsheader*, %struct.dnsheader** %2, align 4, !dbg !982
  %52 = getelementptr inbounds %struct.dnsheader, %struct.dnsheader* %51, i32 0, i32 1, !dbg !984
  %53 = bitcast %union.anon* %52 to %struct.bit*, !dbg !985
  %54 = bitcast %struct.bit* %53 to i16*, !dbg !986
  %55 = load i16, i16* %54, align 2, !dbg !986
  %56 = lshr i16 %55, 8, !dbg !986
  %57 = and i16 %56, 1, !dbg !986
  %58 = trunc i16 %57 to i8, !dbg !986
  %59 = icmp ne i8 %58, 0, !dbg !982
  br i1 %59, label %60, label %62, !dbg !987

60:                                               ; preds = %50
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.291, i32 0, i32 0)), !dbg !988
  br label %62, !dbg !988

62:                                               ; preds = %60, %50
  %63 = load %struct.dnsheader*, %struct.dnsheader** %2, align 4, !dbg !989
  %64 = getelementptr inbounds %struct.dnsheader, %struct.dnsheader* %63, i32 0, i32 1, !dbg !991
  %65 = bitcast %union.anon* %64 to %struct.bit*, !dbg !992
  %66 = bitcast %struct.bit* %65 to i16*, !dbg !993
  %67 = load i16, i16* %66, align 2, !dbg !993
  %68 = lshr i16 %67, 7, !dbg !993
  %69 = and i16 %68, 1, !dbg !993
  %70 = trunc i16 %69 to i8, !dbg !993
  %71 = icmp ne i8 %70, 0, !dbg !989
  br i1 %71, label %72, label %74, !dbg !994

72:                                               ; preds = %62
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.292, i32 0, i32 0)), !dbg !995
  br label %74, !dbg !995

74:                                               ; preds = %72, %62
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.293, i32 0, i32 0)), !dbg !996
  %76 = load %struct.dnsheader*, %struct.dnsheader** %2, align 4, !dbg !997
  %77 = getelementptr inbounds %struct.dnsheader, %struct.dnsheader* %76, i32 0, i32 1, !dbg !998
  %78 = bitcast %union.anon* %77 to %struct.bit*, !dbg !999
  %79 = bitcast %struct.bit* %78 to i16*, !dbg !1000
  %80 = load i16, i16* %79, align 2, !dbg !1000
  %81 = lshr i16 %80, 11, !dbg !1000
  %82 = and i16 %81, 15, !dbg !1000
  %83 = trunc i16 %82 to i8, !dbg !1000
  %84 = zext i8 %83 to i32, !dbg !997
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.294, i32 0, i32 0), i32 %84), !dbg !1001
  %86 = load %struct.dnsheader*, %struct.dnsheader** %2, align 4, !dbg !1002
  %87 = getelementptr inbounds %struct.dnsheader, %struct.dnsheader* %86, i32 0, i32 1, !dbg !1003
  %88 = bitcast %union.anon* %87 to %struct.bit*, !dbg !1004
  %89 = bitcast %struct.bit* %88 to i16*, !dbg !1005
  %90 = load i16, i16* %89, align 2, !dbg !1005
  %91 = lshr i16 %90, 11, !dbg !1005
  %92 = and i16 %91, 15, !dbg !1005
  %93 = trunc i16 %92 to i8, !dbg !1005
  %94 = zext i8 %93 to i32, !dbg !1002
  switch i32 %94, label %109 [
    i32 0, label %95
    i32 1, label %97
    i32 2, label %99
    i32 4, label %101
    i32 5, label %103
    i32 14, label %105
    i32 15, label %107
  ], !dbg !1006

95:                                               ; preds = %74
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.295, i32 0, i32 0)), !dbg !1007
  br label %111, !dbg !1009

97:                                               ; preds = %74
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.296, i32 0, i32 0)), !dbg !1010
  br label %111, !dbg !1011

99:                                               ; preds = %74
  %100 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.297, i32 0, i32 0)), !dbg !1012
  br label %111, !dbg !1013

101:                                              ; preds = %74
  %102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.298, i32 0, i32 0)), !dbg !1014
  br label %111, !dbg !1015

103:                                              ; preds = %74
  %104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.299, i32 0, i32 0)), !dbg !1016
  br label %111, !dbg !1017

105:                                              ; preds = %74
  %106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.300, i32 0, i32 0)), !dbg !1018
  br label %111, !dbg !1019

107:                                              ; preds = %74
  %108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.301, i32 0, i32 0)), !dbg !1020
  br label %111, !dbg !1021

109:                                              ; preds = %74
  %110 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.302, i32 0, i32 0)), !dbg !1022
  br label %111, !dbg !1023

111:                                              ; preds = %109, %107, %105, %103, %101, %99, %97, %95
  %112 = load %struct.dnsheader*, %struct.dnsheader** %2, align 4, !dbg !1024
  %113 = getelementptr inbounds %struct.dnsheader, %struct.dnsheader* %112, i32 0, i32 1, !dbg !1025
  %114 = bitcast %union.anon* %113 to %struct.bit*, !dbg !1026
  %115 = bitcast %struct.bit* %114 to i16*, !dbg !1027
  %116 = load i16, i16* %115, align 2, !dbg !1027
  %117 = and i16 %116, 15, !dbg !1027
  %118 = trunc i16 %117 to i8, !dbg !1027
  %119 = zext i8 %118 to i32, !dbg !1024
  %120 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.303, i32 0, i32 0), i32 %119), !dbg !1028
  %121 = load %struct.dnsheader*, %struct.dnsheader** %2, align 4, !dbg !1029
  %122 = getelementptr inbounds %struct.dnsheader, %struct.dnsheader* %121, i32 0, i32 1, !dbg !1030
  %123 = bitcast %union.anon* %122 to %struct.bit*, !dbg !1031
  %124 = bitcast %struct.bit* %123 to i16*, !dbg !1032
  %125 = load i16, i16* %124, align 2, !dbg !1032
  %126 = and i16 %125, 15, !dbg !1032
  %127 = trunc i16 %126 to i8, !dbg !1032
  %128 = zext i8 %127 to i32, !dbg !1029
  switch i32 %128, label %151 [
    i32 0, label %129
    i32 1, label %131
    i32 2, label %133
    i32 3, label %135
    i32 4, label %137
    i32 5, label %139
    i32 6, label %141
    i32 7, label %143
    i32 8, label %145
    i32 9, label %147
    i32 10, label %149
  ], !dbg !1033

129:                                              ; preds = %111
  %130 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.304, i32 0, i32 0)), !dbg !1034
  br label %153, !dbg !1036

131:                                              ; preds = %111
  %132 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.305, i32 0, i32 0)), !dbg !1037
  br label %153, !dbg !1038

133:                                              ; preds = %111
  %134 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.306, i32 0, i32 0)), !dbg !1039
  br label %153, !dbg !1040

135:                                              ; preds = %111
  %136 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.307, i32 0, i32 0)), !dbg !1041
  br label %153, !dbg !1042

137:                                              ; preds = %111
  %138 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.308, i32 0, i32 0)), !dbg !1043
  br label %153, !dbg !1044

139:                                              ; preds = %111
  %140 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.309, i32 0, i32 0)), !dbg !1045
  br label %153, !dbg !1046

141:                                              ; preds = %111
  %142 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.310, i32 0, i32 0)), !dbg !1047
  br label %153, !dbg !1048

143:                                              ; preds = %111
  %144 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.311, i32 0, i32 0)), !dbg !1049
  br label %153, !dbg !1050

145:                                              ; preds = %111
  %146 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.312, i32 0, i32 0)), !dbg !1051
  br label %153, !dbg !1052

147:                                              ; preds = %111
  %148 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.313, i32 0, i32 0)), !dbg !1053
  br label %153, !dbg !1054

149:                                              ; preds = %111
  %150 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.314, i32 0, i32 0)), !dbg !1055
  br label %153, !dbg !1056

151:                                              ; preds = %111
  %152 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.302, i32 0, i32 0)), !dbg !1057
  br label %153, !dbg !1058

153:                                              ; preds = %151, %149, %147, %145, %143, %141, %139, %137, %135, %133, %131, %129
  %154 = load %struct.dnsheader*, %struct.dnsheader** %2, align 4, !dbg !1059
  %155 = getelementptr inbounds %struct.dnsheader, %struct.dnsheader* %154, i32 0, i32 2, !dbg !1060
  %156 = load i16, i16* %155, align 2, !dbg !1060
  %157 = zext i16 %156 to i32, !dbg !1059
  %158 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.315, i32 0, i32 0), i32 %157), !dbg !1061
  %159 = load %struct.dnsheader*, %struct.dnsheader** %2, align 4, !dbg !1062
  %160 = getelementptr inbounds %struct.dnsheader, %struct.dnsheader* %159, i32 0, i32 3, !dbg !1063
  %161 = load i16, i16* %160, align 2, !dbg !1063
  %162 = zext i16 %161 to i32, !dbg !1062
  %163 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.316, i32 0, i32 0), i32 %162), !dbg !1064
  %164 = load %struct.dnsheader*, %struct.dnsheader** %2, align 4, !dbg !1065
  %165 = getelementptr inbounds %struct.dnsheader, %struct.dnsheader* %164, i32 0, i32 4, !dbg !1066
  %166 = load i16, i16* %165, align 2, !dbg !1066
  %167 = zext i16 %166 to i32, !dbg !1065
  %168 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.317, i32 0, i32 0), i32 %167), !dbg !1067
  %169 = load %struct.dnsheader*, %struct.dnsheader** %2, align 4, !dbg !1068
  %170 = getelementptr inbounds %struct.dnsheader, %struct.dnsheader* %169, i32 0, i32 5, !dbg !1069
  %171 = load i16, i16* %170, align 2, !dbg !1069
  %172 = zext i16 %171 to i32, !dbg !1068
  %173 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.318, i32 0, i32 0), i32 %172), !dbg !1070
  ret void, !dbg !1071
}

; Function Attrs: noinline nounwind optnone
define void @dump_rr(%struct.dnsrr* %0, %struct.dnssession* %1) #0 !dbg !1072 {
  %3 = alloca %struct.dnsrr*, align 4
  %4 = alloca %struct.dnssession*, align 4
  store %struct.dnsrr* %0, %struct.dnsrr** %3, align 4
  call void @llvm.dbg.declare(metadata %struct.dnsrr** %3, metadata !1075, metadata !DIExpression()), !dbg !1076
  store %struct.dnssession* %1, %struct.dnssession** %4, align 4
  call void @llvm.dbg.declare(metadata %struct.dnssession** %4, metadata !1077, metadata !DIExpression()), !dbg !1078
  %5 = load %struct.dnsrr*, %struct.dnsrr** %3, align 4, !dbg !1079
  %6 = getelementptr inbounds %struct.dnsrr, %struct.dnsrr* %5, i32 0, i32 0, !dbg !1080
  %7 = load i8*, i8** %6, align 4, !dbg !1080
  %8 = call i8* @printablename(i8* %7, i32 0), !dbg !1081
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.319, i32 0, i32 0), i8* %8), !dbg !1082
  %10 = load %struct.dnsrr*, %struct.dnsrr** %3, align 4, !dbg !1083
  %11 = getelementptr inbounds %struct.dnsrr, %struct.dnsrr* %10, i32 0, i32 2, !dbg !1084
  %12 = load i16, i16* %11, align 4, !dbg !1084
  %13 = zext i16 %12 to i32, !dbg !1083
  %14 = load %struct.dnsrr*, %struct.dnsrr** %3, align 4, !dbg !1085
  %15 = getelementptr inbounds %struct.dnsrr, %struct.dnsrr* %14, i32 0, i32 2, !dbg !1086
  %16 = load i16, i16* %15, align 4, !dbg !1086
  %17 = zext i16 %16 to i32, !dbg !1085
  %18 = call i8* @get_type(i32 %17), !dbg !1087
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.283, i32 0, i32 0), i32 %13, i8* %18), !dbg !1088
  %20 = load %struct.dnsrr*, %struct.dnsrr** %3, align 4, !dbg !1089
  %21 = getelementptr inbounds %struct.dnsrr, %struct.dnsrr* %20, i32 0, i32 3, !dbg !1090
  %22 = load i16, i16* %21, align 2, !dbg !1090
  %23 = zext i16 %22 to i32, !dbg !1089
  %24 = load %struct.dnsrr*, %struct.dnsrr** %3, align 4, !dbg !1091
  %25 = getelementptr inbounds %struct.dnsrr, %struct.dnsrr* %24, i32 0, i32 3, !dbg !1092
  %26 = load i16, i16* %25, align 2, !dbg !1092
  %27 = zext i16 %26 to i32, !dbg !1091
  %28 = call i8* @get_class(i32 %27), !dbg !1093
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.284, i32 0, i32 0), i32 %23, i8* %28), !dbg !1094
  %30 = load %struct.dnsrr*, %struct.dnsrr** %3, align 4, !dbg !1095
  %31 = getelementptr inbounds %struct.dnsrr, %struct.dnsrr* %30, i32 0, i32 4, !dbg !1096
  %32 = load i32, i32* %31, align 4, !dbg !1096
  %33 = load %struct.dnsrr*, %struct.dnsrr** %3, align 4, !dbg !1097
  %34 = getelementptr inbounds %struct.dnsrr, %struct.dnsrr* %33, i32 0, i32 4, !dbg !1098
  %35 = load i32, i32* %34, align 4, !dbg !1098
  %36 = call i8* @get_ttl(i32 %35), !dbg !1099
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.320, i32 0, i32 0), i32 %32, i8* %36), !dbg !1100
  %38 = load %struct.dnsrr*, %struct.dnsrr** %3, align 4, !dbg !1101
  %39 = getelementptr inbounds %struct.dnsrr, %struct.dnsrr* %38, i32 0, i32 5, !dbg !1102
  %40 = load i16, i16* %39, align 4, !dbg !1102
  %41 = zext i16 %40 to i32, !dbg !1101
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.321, i32 0, i32 0), i32 %41), !dbg !1103
  %43 = load %struct.dnsrr*, %struct.dnsrr** %3, align 4, !dbg !1104
  %44 = getelementptr inbounds %struct.dnsrr, %struct.dnsrr* %43, i32 0, i32 2, !dbg !1105
  %45 = load i16, i16* %44, align 4, !dbg !1105
  %46 = zext i16 %45 to i32, !dbg !1104
  %47 = load %struct.dnssession*, %struct.dnssession** %4, align 4, !dbg !1106
  %48 = load %struct.dnsrr*, %struct.dnsrr** %3, align 4, !dbg !1107
  %49 = getelementptr inbounds %struct.dnsrr, %struct.dnsrr* %48, i32 0, i32 6, !dbg !1108
  %50 = load i8*, i8** %49, align 4, !dbg !1108
  %51 = call i8* @get_resource(i32 %46, %struct.dnssession* %47, i8* %50, i32 0), !dbg !1109
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.322, i32 0, i32 0), i8* %51), !dbg !1110
  ret void, !dbg !1111
}

; Function Attrs: noinline nounwind optnone
define void @dump_data(%struct.sockaddr_in* %0, %struct.sockaddr_in6* %1, %struct.dnssession* %2) #0 !dbg !1112 {
  %4 = alloca %struct.sockaddr_in*, align 4
  %5 = alloca %struct.sockaddr_in6*, align 4
  %6 = alloca %struct.dnssession*, align 4
  %7 = alloca %struct.dnsrr*, align 4
  %8 = alloca %struct.dnsrr*, align 4
  %9 = alloca %struct.dnsrr*, align 4
  store %struct.sockaddr_in* %0, %struct.sockaddr_in** %4, align 4
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in** %4, metadata !1147, metadata !DIExpression()), !dbg !1148
  store %struct.sockaddr_in6* %1, %struct.sockaddr_in6** %5, align 4
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in6** %5, metadata !1149, metadata !DIExpression()), !dbg !1150
  store %struct.dnssession* %2, %struct.dnssession** %6, align 4
  call void @llvm.dbg.declare(metadata %struct.dnssession** %6, metadata !1151, metadata !DIExpression()), !dbg !1152
  call void @llvm.dbg.declare(metadata %struct.dnsrr** %7, metadata !1153, metadata !DIExpression()), !dbg !1154
  call void @llvm.dbg.declare(metadata %struct.dnsrr** %8, metadata !1155, metadata !DIExpression()), !dbg !1156
  call void @llvm.dbg.declare(metadata %struct.dnsrr** %9, metadata !1157, metadata !DIExpression()), !dbg !1158
  %10 = load i32, i32* @verbose, align 4, !dbg !1159
  %11 = icmp eq i32 %10, 0, !dbg !1161
  br i1 %11, label %12, label %13, !dbg !1162

12:                                               ; preds = %3
  br label %122, !dbg !1163

13:                                               ; preds = %3
  %14 = load %struct.sockaddr_in*, %struct.sockaddr_in** %4, align 4, !dbg !1164
  %15 = icmp ne %struct.sockaddr_in* %14, null, !dbg !1166
  br i1 %15, label %16, label %24, !dbg !1167

16:                                               ; preds = %13
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.323, i32 0, i32 0)), !dbg !1168
  %18 = load %struct.sockaddr_in*, %struct.sockaddr_in** %4, align 4, !dbg !1170
  %19 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %18, i32 0, i32 2, !dbg !1171
  %20 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %19, i32 0, i32 0, !dbg !1172
  %21 = load i32, i32* %20, align 4, !dbg !1172
  %22 = call i8* @inet_ntoa(i32 %21), !dbg !1172
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.324, i32 0, i32 0), i8* %22), !dbg !1173
  br label %24, !dbg !1174

24:                                               ; preds = %16, %13
  %25 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %5, align 4, !dbg !1175
  %26 = icmp ne %struct.sockaddr_in6* %25, null, !dbg !1177
  br i1 %26, label %27, label %30, !dbg !1178

27:                                               ; preds = %24
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.323, i32 0, i32 0)), !dbg !1179
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.324, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.325, i32 0, i32 0)), !dbg !1181
  br label %30, !dbg !1182

30:                                               ; preds = %27, %24
  %31 = load %struct.dnssession*, %struct.dnssession** %6, align 4, !dbg !1183
  %32 = getelementptr inbounds %struct.dnssession, %struct.dnssession* %31, i32 0, i32 0, !dbg !1185
  %33 = load %struct.dnsheader*, %struct.dnsheader** %32, align 4, !dbg !1185
  %34 = icmp ne %struct.dnsheader* %33, null, !dbg !1186
  br i1 %34, label %35, label %45, !dbg !1187

35:                                               ; preds = %30
  %36 = load %struct.dnssession*, %struct.dnssession** %6, align 4, !dbg !1188
  %37 = getelementptr inbounds %struct.dnssession, %struct.dnssession* %36, i32 0, i32 2, !dbg !1189
  %38 = load %struct.dnsheader*, %struct.dnsheader** %37, align 4, !dbg !1189
  %39 = icmp eq %struct.dnsheader* %38, null, !dbg !1190
  br i1 %39, label %40, label %45, !dbg !1191

40:                                               ; preds = %35
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.326, i32 0, i32 0)), !dbg !1192
  %42 = load %struct.dnssession*, %struct.dnssession** %6, align 4, !dbg !1194
  %43 = getelementptr inbounds %struct.dnssession, %struct.dnssession* %42, i32 0, i32 0, !dbg !1195
  %44 = load %struct.dnsheader*, %struct.dnsheader** %43, align 4, !dbg !1195
  call void @dump_header(%struct.dnsheader* %44), !dbg !1196
  br label %45, !dbg !1197

45:                                               ; preds = %40, %35, %30
  %46 = load %struct.dnssession*, %struct.dnssession** %6, align 4, !dbg !1198
  %47 = getelementptr inbounds %struct.dnssession, %struct.dnssession* %46, i32 0, i32 2, !dbg !1200
  %48 = load %struct.dnsheader*, %struct.dnsheader** %47, align 4, !dbg !1200
  %49 = icmp ne %struct.dnsheader* %48, null, !dbg !1201
  br i1 %49, label %50, label %55, !dbg !1202

50:                                               ; preds = %45
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.327, i32 0, i32 0)), !dbg !1203
  %52 = load %struct.dnssession*, %struct.dnssession** %6, align 4, !dbg !1205
  %53 = getelementptr inbounds %struct.dnssession, %struct.dnssession* %52, i32 0, i32 2, !dbg !1206
  %54 = load %struct.dnsheader*, %struct.dnsheader** %53, align 4, !dbg !1206
  call void @dump_header(%struct.dnsheader* %54), !dbg !1207
  br label %55, !dbg !1208

55:                                               ; preds = %50, %45
  %56 = load %struct.dnssession*, %struct.dnssession** %6, align 4, !dbg !1209
  %57 = getelementptr inbounds %struct.dnssession, %struct.dnssession* %56, i32 0, i32 1, !dbg !1211
  %58 = load %struct.dnsquestion*, %struct.dnsquestion** %57, align 4, !dbg !1211
  %59 = icmp ne %struct.dnsquestion* %58, null, !dbg !1212
  br i1 %59, label %60, label %70, !dbg !1213

60:                                               ; preds = %55
  %61 = load %struct.dnssession*, %struct.dnssession** %6, align 4, !dbg !1214
  %62 = getelementptr inbounds %struct.dnssession, %struct.dnssession* %61, i32 0, i32 3, !dbg !1215
  %63 = load %struct.dnsquestion*, %struct.dnsquestion** %62, align 4, !dbg !1215
  %64 = icmp eq %struct.dnsquestion* %63, null, !dbg !1216
  br i1 %64, label %65, label %70, !dbg !1217

65:                                               ; preds = %60
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.328, i32 0, i32 0)), !dbg !1218
  %67 = load %struct.dnssession*, %struct.dnssession** %6, align 4, !dbg !1220
  %68 = getelementptr inbounds %struct.dnssession, %struct.dnssession* %67, i32 0, i32 1, !dbg !1221
  %69 = load %struct.dnsquestion*, %struct.dnsquestion** %68, align 4, !dbg !1221
  call void @dump_question(%struct.dnsquestion* %69), !dbg !1222
  br label %70, !dbg !1223

70:                                               ; preds = %65, %60, %55
  %71 = load %struct.dnssession*, %struct.dnssession** %6, align 4, !dbg !1224
  %72 = getelementptr inbounds %struct.dnssession, %struct.dnssession* %71, i32 0, i32 3, !dbg !1226
  %73 = load %struct.dnsquestion*, %struct.dnsquestion** %72, align 4, !dbg !1226
  %74 = icmp ne %struct.dnsquestion* %73, null, !dbg !1227
  br i1 %74, label %75, label %80, !dbg !1228

75:                                               ; preds = %70
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.329, i32 0, i32 0)), !dbg !1229
  %77 = load %struct.dnssession*, %struct.dnssession** %6, align 4, !dbg !1231
  %78 = getelementptr inbounds %struct.dnssession, %struct.dnssession* %77, i32 0, i32 3, !dbg !1232
  %79 = load %struct.dnsquestion*, %struct.dnsquestion** %78, align 4, !dbg !1232
  call void @dump_question(%struct.dnsquestion* %79), !dbg !1233
  br label %80, !dbg !1234

80:                                               ; preds = %75, %70
  %81 = load %struct.dnssession*, %struct.dnssession** %6, align 4, !dbg !1235
  %82 = getelementptr inbounds %struct.dnssession, %struct.dnssession* %81, i32 0, i32 4, !dbg !1236
  %83 = load %struct.dnsrr*, %struct.dnsrr** %82, align 4, !dbg !1236
  store %struct.dnsrr* %83, %struct.dnsrr** %7, align 4, !dbg !1237
  br label %84, !dbg !1238

84:                                               ; preds = %87, %80
  %85 = load %struct.dnsrr*, %struct.dnsrr** %7, align 4, !dbg !1239
  %86 = icmp ne %struct.dnsrr* %85, null, !dbg !1240
  br i1 %86, label %87, label %94, !dbg !1238

87:                                               ; preds = %84
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.330, i32 0, i32 0)), !dbg !1241
  %89 = load %struct.dnsrr*, %struct.dnsrr** %7, align 4, !dbg !1243
  %90 = load %struct.dnssession*, %struct.dnssession** %6, align 4, !dbg !1244
  call void @dump_rr(%struct.dnsrr* %89, %struct.dnssession* %90), !dbg !1245
  %91 = load %struct.dnsrr*, %struct.dnsrr** %7, align 4, !dbg !1246
  %92 = getelementptr inbounds %struct.dnsrr, %struct.dnsrr* %91, i32 0, i32 8, !dbg !1247
  %93 = load %struct.dnsrr*, %struct.dnsrr** %92, align 4, !dbg !1247
  store %struct.dnsrr* %93, %struct.dnsrr** %7, align 4, !dbg !1248
  br label %84, !dbg !1238, !llvm.loop !1249

94:                                               ; preds = %84
  %95 = load %struct.dnssession*, %struct.dnssession** %6, align 4, !dbg !1251
  %96 = getelementptr inbounds %struct.dnssession, %struct.dnssession* %95, i32 0, i32 5, !dbg !1252
  %97 = load %struct.dnsrr*, %struct.dnsrr** %96, align 4, !dbg !1252
  store %struct.dnsrr* %97, %struct.dnsrr** %8, align 4, !dbg !1253
  br label %98, !dbg !1254

98:                                               ; preds = %101, %94
  %99 = load %struct.dnsrr*, %struct.dnsrr** %8, align 4, !dbg !1255
  %100 = icmp ne %struct.dnsrr* %99, null, !dbg !1256
  br i1 %100, label %101, label %108, !dbg !1254

101:                                              ; preds = %98
  %102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.331, i32 0, i32 0)), !dbg !1257
  %103 = load %struct.dnsrr*, %struct.dnsrr** %8, align 4, !dbg !1259
  %104 = load %struct.dnssession*, %struct.dnssession** %6, align 4, !dbg !1260
  call void @dump_rr(%struct.dnsrr* %103, %struct.dnssession* %104), !dbg !1261
  %105 = load %struct.dnsrr*, %struct.dnsrr** %8, align 4, !dbg !1262
  %106 = getelementptr inbounds %struct.dnsrr, %struct.dnsrr* %105, i32 0, i32 8, !dbg !1263
  %107 = load %struct.dnsrr*, %struct.dnsrr** %106, align 4, !dbg !1263
  store %struct.dnsrr* %107, %struct.dnsrr** %8, align 4, !dbg !1264
  br label %98, !dbg !1254, !llvm.loop !1265

108:                                              ; preds = %98
  %109 = load %struct.dnssession*, %struct.dnssession** %6, align 4, !dbg !1267
  %110 = getelementptr inbounds %struct.dnssession, %struct.dnssession* %109, i32 0, i32 6, !dbg !1268
  %111 = load %struct.dnsrr*, %struct.dnsrr** %110, align 4, !dbg !1268
  store %struct.dnsrr* %111, %struct.dnsrr** %9, align 4, !dbg !1269
  br label %112, !dbg !1270

112:                                              ; preds = %115, %108
  %113 = load %struct.dnsrr*, %struct.dnsrr** %9, align 4, !dbg !1271
  %114 = icmp ne %struct.dnsrr* %113, null, !dbg !1272
  br i1 %114, label %115, label %122, !dbg !1270

115:                                              ; preds = %112
  %116 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.332, i32 0, i32 0)), !dbg !1273
  %117 = load %struct.dnsrr*, %struct.dnsrr** %9, align 4, !dbg !1275
  %118 = load %struct.dnssession*, %struct.dnssession** %6, align 4, !dbg !1276
  call void @dump_rr(%struct.dnsrr* %117, %struct.dnssession* %118), !dbg !1277
  %119 = load %struct.dnsrr*, %struct.dnsrr** %9, align 4, !dbg !1278
  %120 = getelementptr inbounds %struct.dnsrr, %struct.dnsrr* %119, i32 0, i32 8, !dbg !1279
  %121 = load %struct.dnsrr*, %struct.dnsrr** %120, align 4, !dbg !1279
  store %struct.dnsrr* %121, %struct.dnsrr** %9, align 4, !dbg !1280
  br label %112, !dbg !1270, !llvm.loop !1281

122:                                              ; preds = %12, %112
  ret void, !dbg !1283
}

declare i8* @inet_ntoa(i32) #3

; Function Attrs: noinline nounwind optnone
define i8* @create_packet(%struct.dnssession* %0) #0 !dbg !1284 {
  %2 = alloca %struct.dnssession*, align 4
  %3 = alloca i8*, align 4
  %4 = alloca %struct.dnsheader, align 2
  %5 = alloca %struct.dnsquestion, align 4
  %6 = alloca i32, align 4
  store %struct.dnssession* %0, %struct.dnssession** %2, align 4
  call void @llvm.dbg.declare(metadata %struct.dnssession** %2, metadata !1287, metadata !DIExpression()), !dbg !1288
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1289, metadata !DIExpression()), !dbg !1290
  call void @llvm.dbg.declare(metadata %struct.dnsheader* %4, metadata !1291, metadata !DIExpression()), !dbg !1292
  call void @llvm.dbg.declare(metadata %struct.dnsquestion* %5, metadata !1293, metadata !DIExpression()), !dbg !1294
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1295, metadata !DIExpression()), !dbg !1296
  %7 = load %struct.dnssession*, %struct.dnssession** %2, align 4, !dbg !1297
  %8 = getelementptr inbounds %struct.dnssession, %struct.dnssession* %7, i32 0, i32 1, !dbg !1298
  %9 = load %struct.dnsquestion*, %struct.dnsquestion** %8, align 4, !dbg !1298
  %10 = getelementptr inbounds %struct.dnsquestion, %struct.dnsquestion* %9, i32 0, i32 0, !dbg !1299
  %11 = load i32, i32* %10, align 4, !dbg !1299
  %12 = add i32 12, %11, !dbg !1300
  %13 = add i32 %12, 4, !dbg !1301
  store i32 %13, i32* %6, align 4, !dbg !1302
  %14 = load i32, i32* %6, align 4, !dbg !1303
  %15 = call noalias align 16 i8* @calloc(i32 1, i32 %14), !dbg !1304
  store i8* %15, i8** %3, align 4, !dbg !1305
  %16 = bitcast %struct.dnsheader* %4 to i8*, !dbg !1306
  %17 = load %struct.dnssession*, %struct.dnssession** %2, align 4, !dbg !1307
  %18 = getelementptr inbounds %struct.dnssession, %struct.dnssession* %17, i32 0, i32 0, !dbg !1308
  %19 = load %struct.dnsheader*, %struct.dnsheader** %18, align 4, !dbg !1308
  %20 = bitcast %struct.dnsheader* %19 to i8*, !dbg !1306
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 2 %16, i8* align 2 %20, i32 12, i1 false), !dbg !1306
  %21 = bitcast %struct.dnsquestion* %5 to i8*, !dbg !1309
  %22 = load %struct.dnssession*, %struct.dnssession** %2, align 4, !dbg !1310
  %23 = getelementptr inbounds %struct.dnssession, %struct.dnssession* %22, i32 0, i32 1, !dbg !1311
  %24 = load %struct.dnsquestion*, %struct.dnsquestion** %23, align 4, !dbg !1311
  %25 = bitcast %struct.dnsquestion* %24 to i8*, !dbg !1309
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %21, i8* align 4 %25, i32 12, i1 false), !dbg !1309
  %26 = load %struct.dnssession*, %struct.dnssession** %2, align 4, !dbg !1312
  %27 = getelementptr inbounds %struct.dnssession, %struct.dnssession* %26, i32 0, i32 0, !dbg !1313
  %28 = load %struct.dnsheader*, %struct.dnsheader** %27, align 4, !dbg !1313
  %29 = getelementptr inbounds %struct.dnsheader, %struct.dnsheader* %28, i32 0, i32 0, !dbg !1314
  %30 = load i16, i16* %29, align 2, !dbg !1314
  %31 = call zeroext i16 @htons(i16 zeroext %30), !dbg !1315
  %32 = getelementptr inbounds %struct.dnsheader, %struct.dnsheader* %4, i32 0, i32 0, !dbg !1316
  store i16 %31, i16* %32, align 2, !dbg !1317
  %33 = load %struct.dnssession*, %struct.dnssession** %2, align 4, !dbg !1318
  %34 = getelementptr inbounds %struct.dnssession, %struct.dnssession* %33, i32 0, i32 0, !dbg !1319
  %35 = load %struct.dnsheader*, %struct.dnsheader** %34, align 4, !dbg !1319
  %36 = getelementptr inbounds %struct.dnsheader, %struct.dnsheader* %35, i32 0, i32 1, !dbg !1320
  %37 = bitcast %union.anon* %36 to i16*, !dbg !1321
  %38 = load i16, i16* %37, align 2, !dbg !1321
  %39 = call zeroext i16 @htons(i16 zeroext %38), !dbg !1322
  %40 = getelementptr inbounds %struct.dnsheader, %struct.dnsheader* %4, i32 0, i32 1, !dbg !1323
  %41 = bitcast %union.anon* %40 to i16*, !dbg !1324
  store i16 %39, i16* %41, align 2, !dbg !1325
  %42 = load %struct.dnssession*, %struct.dnssession** %2, align 4, !dbg !1326
  %43 = getelementptr inbounds %struct.dnssession, %struct.dnssession* %42, i32 0, i32 0, !dbg !1327
  %44 = load %struct.dnsheader*, %struct.dnsheader** %43, align 4, !dbg !1327
  %45 = getelementptr inbounds %struct.dnsheader, %struct.dnsheader* %44, i32 0, i32 2, !dbg !1328
  %46 = load i16, i16* %45, align 2, !dbg !1328
  %47 = call zeroext i16 @htons(i16 zeroext %46), !dbg !1329
  %48 = getelementptr inbounds %struct.dnsheader, %struct.dnsheader* %4, i32 0, i32 2, !dbg !1330
  store i16 %47, i16* %48, align 2, !dbg !1331
  %49 = load %struct.dnssession*, %struct.dnssession** %2, align 4, !dbg !1332
  %50 = getelementptr inbounds %struct.dnssession, %struct.dnssession* %49, i32 0, i32 0, !dbg !1333
  %51 = load %struct.dnsheader*, %struct.dnsheader** %50, align 4, !dbg !1333
  %52 = getelementptr inbounds %struct.dnsheader, %struct.dnsheader* %51, i32 0, i32 3, !dbg !1334
  %53 = load i16, i16* %52, align 2, !dbg !1334
  %54 = call zeroext i16 @htons(i16 zeroext %53), !dbg !1335
  %55 = getelementptr inbounds %struct.dnsheader, %struct.dnsheader* %4, i32 0, i32 3, !dbg !1336
  store i16 %54, i16* %55, align 2, !dbg !1337
  %56 = load %struct.dnssession*, %struct.dnssession** %2, align 4, !dbg !1338
  %57 = getelementptr inbounds %struct.dnssession, %struct.dnssession* %56, i32 0, i32 0, !dbg !1339
  %58 = load %struct.dnsheader*, %struct.dnsheader** %57, align 4, !dbg !1339
  %59 = getelementptr inbounds %struct.dnsheader, %struct.dnsheader* %58, i32 0, i32 4, !dbg !1340
  %60 = load i16, i16* %59, align 2, !dbg !1340
  %61 = call zeroext i16 @htons(i16 zeroext %60), !dbg !1341
  %62 = getelementptr inbounds %struct.dnsheader, %struct.dnsheader* %4, i32 0, i32 4, !dbg !1342
  store i16 %61, i16* %62, align 2, !dbg !1343
  %63 = load %struct.dnssession*, %struct.dnssession** %2, align 4, !dbg !1344
  %64 = getelementptr inbounds %struct.dnssession, %struct.dnssession* %63, i32 0, i32 0, !dbg !1345
  %65 = load %struct.dnsheader*, %struct.dnsheader** %64, align 4, !dbg !1345
  %66 = getelementptr inbounds %struct.dnsheader, %struct.dnsheader* %65, i32 0, i32 5, !dbg !1346
  %67 = load i16, i16* %66, align 2, !dbg !1346
  %68 = call zeroext i16 @htons(i16 zeroext %67), !dbg !1347
  %69 = getelementptr inbounds %struct.dnsheader, %struct.dnsheader* %4, i32 0, i32 5, !dbg !1348
  store i16 %68, i16* %69, align 2, !dbg !1349
  %70 = load %struct.dnssession*, %struct.dnssession** %2, align 4, !dbg !1350
  %71 = getelementptr inbounds %struct.dnssession, %struct.dnssession* %70, i32 0, i32 1, !dbg !1351
  %72 = load %struct.dnsquestion*, %struct.dnsquestion** %71, align 4, !dbg !1351
  %73 = getelementptr inbounds %struct.dnsquestion, %struct.dnsquestion* %72, i32 0, i32 2, !dbg !1352
  %74 = load i16, i16* %73, align 4, !dbg !1352
  %75 = call zeroext i16 @htons(i16 zeroext %74), !dbg !1353
  %76 = getelementptr inbounds %struct.dnsquestion, %struct.dnsquestion* %5, i32 0, i32 2, !dbg !1354
  store i16 %75, i16* %76, align 4, !dbg !1355
  %77 = load %struct.dnssession*, %struct.dnssession** %2, align 4, !dbg !1356
  %78 = getelementptr inbounds %struct.dnssession, %struct.dnssession* %77, i32 0, i32 1, !dbg !1357
  %79 = load %struct.dnsquestion*, %struct.dnsquestion** %78, align 4, !dbg !1357
  %80 = getelementptr inbounds %struct.dnsquestion, %struct.dnsquestion* %79, i32 0, i32 3, !dbg !1358
  %81 = load i16, i16* %80, align 2, !dbg !1358
  %82 = call zeroext i16 @htons(i16 zeroext %81), !dbg !1359
  %83 = getelementptr inbounds %struct.dnsquestion, %struct.dnsquestion* %5, i32 0, i32 3, !dbg !1360
  store i16 %82, i16* %83, align 2, !dbg !1361
  %84 = load i8*, i8** %3, align 4, !dbg !1362
  %85 = bitcast %struct.dnsheader* %4 to i8*, !dbg !1363
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %84, i8* align 2 %85, i32 12, i1 false), !dbg !1363
  %86 = load i8*, i8** %3, align 4, !dbg !1364
  %87 = getelementptr inbounds i8, i8* %86, i32 12, !dbg !1365
  %88 = getelementptr inbounds %struct.dnsquestion, %struct.dnsquestion* %5, i32 0, i32 1, !dbg !1366
  %89 = load i8*, i8** %88, align 4, !dbg !1366
  %90 = getelementptr inbounds %struct.dnsquestion, %struct.dnsquestion* %5, i32 0, i32 0, !dbg !1367
  %91 = load i32, i32* %90, align 4, !dbg !1367
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %87, i8* align 1 %89, i32 %91, i1 false), !dbg !1368
  %92 = load i8*, i8** %3, align 4, !dbg !1369
  %93 = getelementptr inbounds i8, i8* %92, i32 12, !dbg !1370
  %94 = getelementptr inbounds %struct.dnsquestion, %struct.dnsquestion* %5, i32 0, i32 0, !dbg !1371
  %95 = load i32, i32* %94, align 4, !dbg !1371
  %96 = getelementptr inbounds i8, i8* %93, i32 %95, !dbg !1372
  %97 = getelementptr inbounds %struct.dnsquestion, %struct.dnsquestion* %5, i32 0, i32 2, !dbg !1373
  %98 = bitcast i16* %97 to i8*, !dbg !1374
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %96, i8* align 4 %98, i32 4, i1 false), !dbg !1374
  %99 = load i8*, i8** %3, align 4, !dbg !1375
  ret i8* %99, !dbg !1376
}

declare zeroext i16 @htons(i16 zeroext) #3

; Function Attrs: noinline nounwind optnone
define i32 @create_socket(i32 %0) #0 !dbg !1377 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.addrinfo, align 4
  %5 = alloca %struct.addrinfo*, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1380, metadata !DIExpression()), !dbg !1381
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1382, metadata !DIExpression()), !dbg !1383
  %7 = load i32, i32* %2, align 4, !dbg !1384
  %8 = call i32 bitcast (i32 (...)* @socket to i32 (i32, i32, i32)*)(i32 %7, i32 5, i32 0), !dbg !1386
  store i32 %8, i32* %3, align 4, !dbg !1387
  %9 = icmp slt i32 %8, 0, !dbg !1388
  br i1 %9, label %10, label %12, !dbg !1389

10:                                               ; preds = %1
  call void @perror(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.333, i32 0, i32 0)), !dbg !1390
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.334, i32 0, i32 0)), !dbg !1392
  call void @exit(i32 1) #12, !dbg !1393
  unreachable, !dbg !1393

12:                                               ; preds = %1
  %13 = load i8*, i8** @global_source_address, align 4, !dbg !1394
  %14 = icmp ne i8* %13, null, !dbg !1396
  br i1 %14, label %15, label %54, !dbg !1397

15:                                               ; preds = %12
  call void @llvm.dbg.declare(metadata %struct.addrinfo* %4, metadata !1398, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.declare(metadata %struct.addrinfo** %5, metadata !1413, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1415, metadata !DIExpression()), !dbg !1416
  %16 = bitcast %struct.addrinfo* %4 to i8*, !dbg !1417
  call void @llvm.memset.p0i8.i32(i8* align 4 %16, i8 0, i32 32, i1 false), !dbg !1417
  %17 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %4, i32 0, i32 0, !dbg !1418
  store i32 4, i32* %17, align 4, !dbg !1419
  %18 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %4, i32 0, i32 1, !dbg !1420
  store i32 1, i32* %18, align 4, !dbg !1421
  %19 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %4, i32 0, i32 2, !dbg !1422
  store i32 5, i32* %19, align 4, !dbg !1423
  %20 = load i8*, i8** @global_source_address, align 4, !dbg !1424
  %21 = bitcast %struct.addrinfo* %4 to %struct.addrinfo.0*, !dbg !1425
  %22 = bitcast %struct.addrinfo** %5 to %struct.addrinfo.0**, !dbg !1426
  %23 = call i32 @getaddrinfo(i8* %20, i8* null, %struct.addrinfo.0* %21, %struct.addrinfo.0** %22), !dbg !1427
  store i32 %23, i32* %6, align 4, !dbg !1428
  %24 = load i32, i32* %6, align 4, !dbg !1429
  %25 = icmp eq i32 %24, 8, !dbg !1431
  br i1 %25, label %26, label %32, !dbg !1432

26:                                               ; preds = %15
  %27 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %4, i32 0, i32 0, !dbg !1433
  store i32 0, i32* %27, align 4, !dbg !1435
  %28 = load i8*, i8** @global_source_address, align 4, !dbg !1436
  %29 = bitcast %struct.addrinfo* %4 to %struct.addrinfo.0*, !dbg !1437
  %30 = bitcast %struct.addrinfo** %5 to %struct.addrinfo.0**, !dbg !1438
  %31 = call i32 @getaddrinfo(i8* %28, i8* null, %struct.addrinfo.0* %29, %struct.addrinfo.0** %30), !dbg !1439
  store i32 %31, i32* %6, align 4, !dbg !1440
  br label %32, !dbg !1441

32:                                               ; preds = %26, %15
  %33 = load i32, i32* %6, align 4, !dbg !1442
  %34 = icmp ne i32 %33, 0, !dbg !1444
  br i1 %34, label %35, label %42, !dbg !1445

35:                                               ; preds = %32
  %36 = load i8*, i8** @global_source_address, align 4, !dbg !1446
  call void @perror(i8* %36), !dbg !1448
  %37 = load i32, i32* %6, align 4, !dbg !1449
  %38 = icmp eq i32 %37, 11, !dbg !1451
  br i1 %38, label %39, label %41, !dbg !1452

39:                                               ; preds = %35
  %40 = load i8*, i8** @global_source_address, align 4, !dbg !1453
  call void @perror(i8* %40), !dbg !1454
  br label %41, !dbg !1454

41:                                               ; preds = %39, %35
  call void @exit(i32 1) #12, !dbg !1455
  unreachable, !dbg !1455

42:                                               ; preds = %32
  %43 = load i32, i32* %3, align 4, !dbg !1456
  %44 = load %struct.addrinfo*, %struct.addrinfo** %5, align 4, !dbg !1458
  %45 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %44, i32 0, i32 6, !dbg !1459
  %46 = load %struct.sockaddr*, %struct.sockaddr** %45, align 4, !dbg !1459
  %47 = load %struct.addrinfo*, %struct.addrinfo** %5, align 4, !dbg !1460
  %48 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %47, i32 0, i32 4, !dbg !1461
  %49 = load i32, i32* %48, align 4, !dbg !1461
  %50 = call i32 bitcast (i32 (...)* @bind to i32 (i32, %struct.sockaddr*, i32)*)(i32 %43, %struct.sockaddr* %46, i32 %49), !dbg !1462
  %51 = icmp slt i32 %50, 0, !dbg !1463
  br i1 %51, label %52, label %53, !dbg !1464

52:                                               ; preds = %42
  call void @perror(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.335, i32 0, i32 0)), !dbg !1465
  call void @exit(i32 1) #12, !dbg !1467
  unreachable, !dbg !1467

53:                                               ; preds = %42
  br label %54, !dbg !1468

54:                                               ; preds = %53, %12
  %55 = load i32, i32* %3, align 4, !dbg !1469
  ret i32 %55, !dbg !1470
}

declare i32 @socket(...) #7

declare void @perror(i8*) #3

; Function Attrs: noreturn
declare void @exit(i32) #8

declare i32 @getaddrinfo(i8*, i8*, %struct.addrinfo.0*, %struct.addrinfo.0**) #3

declare i32 @bind(...) #7

; Function Attrs: noinline nounwind optnone
define i32 @send_data(i8* %0, %struct.dnssession* %1) #0 !dbg !1471 {
  %3 = alloca i8*, align 4
  %4 = alloca %struct.dnssession*, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_in, align 16
  %9 = alloca %struct.sockaddr_in6, align 16
  store i8* %0, i8** %3, align 4
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1474, metadata !DIExpression()), !dbg !1475
  store %struct.dnssession* %1, %struct.dnssession** %4, align 4
  call void @llvm.dbg.declare(metadata %struct.dnssession** %4, metadata !1476, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1478, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1480, metadata !DIExpression()), !dbg !1481
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1482, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %8, metadata !1484, metadata !DIExpression()), !dbg !1485
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in6* %9, metadata !1486, metadata !DIExpression()), !dbg !1487
  %10 = load %struct.dnssession*, %struct.dnssession** %4, align 4, !dbg !1488
  %11 = getelementptr inbounds %struct.dnssession, %struct.dnssession* %10, i32 0, i32 1, !dbg !1489
  %12 = load %struct.dnsquestion*, %struct.dnsquestion** %11, align 4, !dbg !1489
  %13 = getelementptr inbounds %struct.dnsquestion, %struct.dnsquestion* %12, i32 0, i32 0, !dbg !1490
  %14 = load i32, i32* %13, align 4, !dbg !1490
  %15 = add i32 12, %14, !dbg !1491
  %16 = add i32 %15, 4, !dbg !1492
  store i32 %16, i32* %7, align 4, !dbg !1493
  %17 = load %struct.dnssession*, %struct.dnssession** %4, align 4, !dbg !1494
  %18 = getelementptr inbounds %struct.dnssession, %struct.dnssession* %17, i32 0, i32 18, !dbg !1496
  %19 = load i32, i32* %18, align 4, !dbg !1496
  %20 = icmp ne i32 %19, 0, !dbg !1494
  br i1 %20, label %21, label %31, !dbg !1497

21:                                               ; preds = %2
  %22 = bitcast %struct.sockaddr_in6* %9 to i8*, !dbg !1498
  call void @llvm.memset.p0i8.i32(i8* align 16 %22, i8 0, i32 32, i1 false), !dbg !1498
  %23 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %9, i32 0, i32 0, !dbg !1500
  store i16 2, i16* %23, align 16, !dbg !1501
  %24 = call zeroext i16 @htons(i16 zeroext 53), !dbg !1502
  %25 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %9, i32 0, i32 1, !dbg !1503
  store i16 %24, i16* %25, align 2, !dbg !1504
  %26 = load i8*, i8** %3, align 4, !dbg !1505
  %27 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %9, i32 0, i32 3, !dbg !1506
  %28 = bitcast %struct.in6_addr* %27 to i8*, !dbg !1507
  %29 = call i32 @inet_pton(i32 2, i8* %26, i8* %28), !dbg !1508
  %30 = load %struct.dnssession*, %struct.dnssession** %4, align 4, !dbg !1509
  call void @dump_data(%struct.sockaddr_in* null, %struct.sockaddr_in6* %9, %struct.dnssession* %30), !dbg !1510
  br label %41, !dbg !1511

31:                                               ; preds = %2
  %32 = bitcast %struct.sockaddr_in* %8 to i8*, !dbg !1512
  call void @llvm.memset.p0i8.i32(i8* align 16 %32, i8 0, i32 16, i1 false), !dbg !1512
  %33 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 0, !dbg !1514
  store i16 1, i16* %33, align 16, !dbg !1515
  %34 = call zeroext i16 @htons(i16 zeroext 53), !dbg !1516
  %35 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 1, !dbg !1517
  store i16 %34, i16* %35, align 2, !dbg !1518
  %36 = load i8*, i8** %3, align 4, !dbg !1519
  %37 = call i32 bitcast (i32 (...)* @inet_addr to i32 (i8*)*)(i8* %36), !dbg !1520
  %38 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 2, !dbg !1521
  %39 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %38, i32 0, i32 0, !dbg !1522
  store i32 %37, i32* %39, align 4, !dbg !1523
  %40 = load %struct.dnssession*, %struct.dnssession** %4, align 4, !dbg !1524
  call void @dump_data(%struct.sockaddr_in* %8, %struct.sockaddr_in6* null, %struct.dnssession* %40), !dbg !1525
  br label %41

41:                                               ; preds = %31, %21
  %42 = load %struct.dnssession*, %struct.dnssession** %4, align 4, !dbg !1526
  %43 = call i8* @create_packet(%struct.dnssession* %42), !dbg !1527
  store i8* %43, i8** %6, align 4, !dbg !1528
  %44 = load %struct.dnssession*, %struct.dnssession** %4, align 4, !dbg !1529
  %45 = getelementptr inbounds %struct.dnssession, %struct.dnssession* %44, i32 0, i32 17, !dbg !1531
  %46 = load i32, i32* %45, align 4, !dbg !1531
  %47 = load i8*, i8** %6, align 4, !dbg !1532
  %48 = load i32, i32* %7, align 4, !dbg !1533
  %49 = load %struct.dnssession*, %struct.dnssession** %4, align 4, !dbg !1534
  %50 = getelementptr inbounds %struct.dnssession, %struct.dnssession* %49, i32 0, i32 18, !dbg !1535
  %51 = load i32, i32* %50, align 4, !dbg !1535
  %52 = icmp ne i32 %51, 0, !dbg !1534
  br i1 %52, label %53, label %55, !dbg !1534

53:                                               ; preds = %41
  %54 = bitcast %struct.sockaddr_in6* %9 to %struct.sockaddr*, !dbg !1536
  br label %57, !dbg !1534

55:                                               ; preds = %41
  %56 = bitcast %struct.sockaddr_in* %8 to %struct.sockaddr*, !dbg !1537
  br label %57, !dbg !1534

57:                                               ; preds = %55, %53
  %58 = phi %struct.sockaddr* [ %54, %53 ], [ %56, %55 ], !dbg !1534
  %59 = load %struct.dnssession*, %struct.dnssession** %4, align 4, !dbg !1538
  %60 = getelementptr inbounds %struct.dnssession, %struct.dnssession* %59, i32 0, i32 18, !dbg !1539
  %61 = load i32, i32* %60, align 4, !dbg !1539
  %62 = icmp ne i32 %61, 0, !dbg !1538
  %63 = zext i1 %62 to i64, !dbg !1538
  %64 = select i1 %62, i32 32, i32 16, !dbg !1538
  %65 = call i32 bitcast (i32 (...)* @sendto to i32 (i32, i8*, i32, i32, %struct.sockaddr*, i32)*)(i32 %46, i8* %47, i32 %48, i32 0, %struct.sockaddr* %58, i32 %64), !dbg !1540
  store i32 %65, i32* %5, align 4, !dbg !1541
  %66 = icmp eq i32 %65, -1, !dbg !1542
  br i1 %66, label %67, label %68, !dbg !1543

67:                                               ; preds = %57
  call void @perror(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.336, i32 0, i32 0)), !dbg !1544
  br label %68, !dbg !1546

68:                                               ; preds = %67, %57
  %69 = load i8*, i8** %6, align 4, !dbg !1547
  call void @free(i8* %69), !dbg !1548
  %70 = load i32, i32* %5, align 4, !dbg !1549
  ret i32 %70, !dbg !1550
}

declare i32 @inet_pton(i32, i8*, i8*) #3

declare i32 @inet_addr(...) #7

declare i32 @sendto(...) #7

declare void @free(i8*) #3

; Function Attrs: noinline nounwind optnone
define i32 @receive_data(%struct.dnssession* %0, i32 %1) #0 !dbg !1551 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dnssession*, align 4
  %5 = alloca i32, align 4
  %6 = alloca [2048 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca %struct.fd_set, align 4
  %9 = alloca %struct.timeval, align 8
  store %struct.dnssession* %0, %struct.dnssession** %4, align 4
  call void @llvm.dbg.declare(metadata %struct.dnssession** %4, metadata !1554, metadata !DIExpression()), !dbg !1555
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1556, metadata !DIExpression()), !dbg !1557
  call void @llvm.dbg.declare(metadata [2048 x i8]* %6, metadata !1558, metadata !DIExpression()), !dbg !1562
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1563, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.declare(metadata %struct.fd_set* %8, metadata !1565, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.declare(metadata %struct.timeval* %9, metadata !1576, metadata !DIExpression()), !dbg !1587
  %10 = load i32, i32* %5, align 4, !dbg !1588
  %11 = shl i32 1, %10, !dbg !1589
  %12 = mul nsw i32 5, %11, !dbg !1590
  %13 = sext i32 %12 to i64, !dbg !1591
  %14 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0, !dbg !1592
  store i64 %13, i64* %14, align 8, !dbg !1593
  %15 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1, !dbg !1594
  store i64 0, i64* %15, align 8, !dbg !1595
  %16 = load i32, i32* @global_timeout, align 4, !dbg !1596
  %17 = icmp ne i32 %16, 0, !dbg !1596
  br i1 %17, label %18, label %28, !dbg !1598

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0, !dbg !1599
  %20 = load i64, i64* %19, align 8, !dbg !1599
  %21 = load i32, i32* @global_timeout, align 4, !dbg !1600
  %22 = sext i32 %21 to i64, !dbg !1600
  %23 = icmp sgt i64 %20, %22, !dbg !1601
  br i1 %23, label %24, label %28, !dbg !1602

24:                                               ; preds = %18
  %25 = load i32, i32* @global_timeout, align 4, !dbg !1603
  %26 = sext i32 %25 to i64, !dbg !1603
  %27 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0, !dbg !1604
  store i64 %26, i64* %27, align 8, !dbg !1605
  br label %28, !dbg !1606

28:                                               ; preds = %24, %18, %2
  call void @FD_ZERO(%struct.fd_set* %8), !dbg !1607
  %29 = load %struct.dnssession*, %struct.dnssession** %4, align 4, !dbg !1608
  %30 = getelementptr inbounds %struct.dnssession, %struct.dnssession* %29, i32 0, i32 17, !dbg !1608
  %31 = load i32, i32* %30, align 4, !dbg !1608
  call void @FD_SET(i32 %31, %struct.fd_set* %8), !dbg !1608
  %32 = load %struct.dnssession*, %struct.dnssession** %4, align 4, !dbg !1609
  %33 = getelementptr inbounds %struct.dnssession, %struct.dnssession* %32, i32 0, i32 17, !dbg !1611
  %34 = load i32, i32* %33, align 4, !dbg !1611
  %35 = add nsw i32 %34, 1, !dbg !1612
  %36 = call i32 @select(i32 %35, %struct.fd_set* %8, %struct.fd_set* null, %struct.fd_set* null, %struct.timeval* %9), !dbg !1613
  %37 = icmp slt i32 %36, 0, !dbg !1614
  br i1 %37, label %38, label %39, !dbg !1615

38:                                               ; preds = %28
  store i32 2, i32* %3, align 4, !dbg !1616
  br label %91, !dbg !1616

39:                                               ; preds = %28
  %40 = load %struct.dnssession*, %struct.dnssession** %4, align 4, !dbg !1617
  %41 = getelementptr inbounds %struct.dnssession, %struct.dnssession* %40, i32 0, i32 17, !dbg !1617
  %42 = load i32, i32* %41, align 4, !dbg !1617
  %43 = call zeroext i1 @FD_ISSET(i32 %42, %struct.fd_set* %8), !dbg !1617
  br i1 %43, label %45, label %44, !dbg !1619

44:                                               ; preds = %39
  store i32 3, i32* %3, align 4, !dbg !1620
  br label %91, !dbg !1620

45:                                               ; preds = %39
  %46 = load %struct.dnssession*, %struct.dnssession** %4, align 4, !dbg !1621
  %47 = getelementptr inbounds %struct.dnssession, %struct.dnssession* %46, i32 0, i32 17, !dbg !1623
  %48 = load i32, i32* %47, align 4, !dbg !1623
  %49 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i32 0, i32 0, !dbg !1624
  %50 = call i32 @recv(i32 %48, i8* %49, i32 2048, i32 0), !dbg !1625
  store i32 %50, i32* %7, align 4, !dbg !1626
  %51 = icmp eq i32 %50, -1, !dbg !1627
  br i1 %51, label %52, label %53, !dbg !1628

52:                                               ; preds = %45
  store i32 1, i32* %3, align 4, !dbg !1629
  br label %91, !dbg !1629

53:                                               ; preds = %45
  %54 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i32 0, i32 0, !dbg !1630
  %55 = call zeroext i16 @getshort(i8* %54), !dbg !1632
  %56 = zext i16 %55 to i32, !dbg !1632
  %57 = load %struct.dnssession*, %struct.dnssession** %4, align 4, !dbg !1633
  %58 = getelementptr inbounds %struct.dnssession, %struct.dnssession* %57, i32 0, i32 0, !dbg !1634
  %59 = load %struct.dnsheader*, %struct.dnsheader** %58, align 4, !dbg !1634
  %60 = getelementptr inbounds %struct.dnsheader, %struct.dnsheader* %59, i32 0, i32 0, !dbg !1635
  %61 = load i16, i16* %60, align 2, !dbg !1635
  %62 = zext i16 %61 to i32, !dbg !1633
  %63 = icmp ne i32 %56, %62, !dbg !1636
  br i1 %63, label %64, label %76, !dbg !1637

64:                                               ; preds = %53
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4, !dbg !1638
  %66 = load %struct.dnssession*, %struct.dnssession** %4, align 4, !dbg !1640
  %67 = getelementptr inbounds %struct.dnssession, %struct.dnssession* %66, i32 0, i32 0, !dbg !1641
  %68 = load %struct.dnsheader*, %struct.dnsheader** %67, align 4, !dbg !1641
  %69 = getelementptr inbounds %struct.dnsheader, %struct.dnsheader* %68, i32 0, i32 0, !dbg !1642
  %70 = load i16, i16* %69, align 2, !dbg !1642
  %71 = zext i16 %70 to i32, !dbg !1640
  %72 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i32 0, i32 0, !dbg !1643
  %73 = call zeroext i16 @getshort(i8* %72), !dbg !1644
  %74 = zext i16 %73 to i32, !dbg !1644
  %75 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %65, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.337, i32 0, i32 0), i32 %71, i32 %74), !dbg !1645
  store i32 4, i32* %3, align 4, !dbg !1646
  br label %91, !dbg !1646

76:                                               ; preds = %53
  %77 = load i32, i32* %7, align 4, !dbg !1647
  %78 = load %struct.dnssession*, %struct.dnssession** %4, align 4, !dbg !1648
  %79 = getelementptr inbounds %struct.dnssession, %struct.dnssession* %78, i32 0, i32 10, !dbg !1649
  store i32 %77, i32* %79, align 4, !dbg !1650
  %80 = load i32, i32* %7, align 4, !dbg !1651
  %81 = call noalias align 16 i8* @calloc(i32 1, i32 %80), !dbg !1652
  %82 = load %struct.dnssession*, %struct.dnssession** %4, align 4, !dbg !1653
  %83 = getelementptr inbounds %struct.dnssession, %struct.dnssession* %82, i32 0, i32 11, !dbg !1654
  store i8* %81, i8** %83, align 4, !dbg !1655
  %84 = load %struct.dnssession*, %struct.dnssession** %4, align 4, !dbg !1656
  %85 = getelementptr inbounds %struct.dnssession, %struct.dnssession* %84, i32 0, i32 11, !dbg !1657
  %86 = load i8*, i8** %85, align 4, !dbg !1657
  %87 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i32 0, i32 0, !dbg !1658
  %88 = load i32, i32* %7, align 4, !dbg !1659
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %86, i8* align 16 %87, i32 %88, i1 false), !dbg !1658
  %89 = load %struct.dnssession*, %struct.dnssession** %4, align 4, !dbg !1660
  call void @extract_data(%struct.dnssession* %89), !dbg !1661
  %90 = load %struct.dnssession*, %struct.dnssession** %4, align 4, !dbg !1662
  call void @dump_data(%struct.sockaddr_in* null, %struct.sockaddr_in6* null, %struct.dnssession* %90), !dbg !1663
  store i32 0, i32* %3, align 4, !dbg !1664
  br label %91, !dbg !1664

91:                                               ; preds = %76, %64, %52, %44, %38
  %92 = load i32, i32* %3, align 4, !dbg !1665
  ret i32 %92, !dbg !1665
}

; Function Attrs: noinline nounwind optnone
define internal void @FD_ZERO(%struct.fd_set* %0) #0 !dbg !1666 {
  %2 = alloca %struct.fd_set*, align 4
  store %struct.fd_set* %0, %struct.fd_set** %2, align 4
  call void @llvm.dbg.declare(metadata %struct.fd_set** %2, metadata !1671, metadata !DIExpression()), !dbg !1672
  %3 = load %struct.fd_set*, %struct.fd_set** %2, align 4, !dbg !1673
  %4 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %3, i32 0, i32 0, !dbg !1674
  store i32 0, i32* %4, align 4, !dbg !1675
  ret void, !dbg !1676
}

; Function Attrs: noinline nounwind optnone
define internal void @FD_SET(i32 %0, %struct.fd_set* %1) #0 !dbg !1677 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fd_set*, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 4
  %7 = alloca i32*, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1680, metadata !DIExpression()), !dbg !1681
  store %struct.fd_set* %1, %struct.fd_set** %4, align 4
  call void @llvm.dbg.declare(metadata %struct.fd_set** %4, metadata !1682, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1684, metadata !DIExpression()), !dbg !1685
  %8 = load %struct.fd_set*, %struct.fd_set** %4, align 4, !dbg !1686
  %9 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %8, i32 0, i32 0, !dbg !1687
  %10 = load i32, i32* %9, align 4, !dbg !1687
  store i32 %10, i32* %5, align 4, !dbg !1685
  call void @llvm.dbg.declare(metadata i32** %6, metadata !1688, metadata !DIExpression()), !dbg !1692
  %11 = load %struct.fd_set*, %struct.fd_set** %4, align 4, !dbg !1693
  %12 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %11, i32 0, i32 1, !dbg !1694
  %13 = getelementptr inbounds [1024 x i32], [1024 x i32]* %12, i32 0, i32 0, !dbg !1693
  store i32* %13, i32** %6, align 4, !dbg !1692
  call void @llvm.dbg.declare(metadata i32** %7, metadata !1695, metadata !DIExpression()), !dbg !1696
  %14 = load i32*, i32** %6, align 4, !dbg !1697
  %15 = load i32, i32* %5, align 4, !dbg !1698
  %16 = getelementptr inbounds i32, i32* %14, i32 %15, !dbg !1699
  store i32* %16, i32** %7, align 4, !dbg !1696
  br label %17, !dbg !1700

17:                                               ; preds = %28, %2
  %18 = load i32*, i32** %6, align 4, !dbg !1701
  %19 = load i32*, i32** %7, align 4, !dbg !1703
  %20 = icmp ult i32* %18, %19, !dbg !1704
  br i1 %20, label %21, label %31, !dbg !1705

21:                                               ; preds = %17
  %22 = load i32*, i32** %6, align 4, !dbg !1706
  %23 = load i32, i32* %22, align 4, !dbg !1709
  %24 = load i32, i32* %3, align 4, !dbg !1710
  %25 = icmp eq i32 %23, %24, !dbg !1711
  br i1 %25, label %26, label %27, !dbg !1712

26:                                               ; preds = %21
  br label %41, !dbg !1713

27:                                               ; preds = %21
  br label %28, !dbg !1715

28:                                               ; preds = %27
  %29 = load i32*, i32** %6, align 4, !dbg !1716
  %30 = getelementptr inbounds i32, i32* %29, i32 1, !dbg !1716
  store i32* %30, i32** %6, align 4, !dbg !1716
  br label %17, !dbg !1717, !llvm.loop !1718

31:                                               ; preds = %17
  %32 = load i32, i32* %5, align 4, !dbg !1720
  %33 = add i32 %32, 1, !dbg !1721
  %34 = load %struct.fd_set*, %struct.fd_set** %4, align 4, !dbg !1722
  %35 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %34, i32 0, i32 0, !dbg !1723
  store i32 %33, i32* %35, align 4, !dbg !1724
  %36 = load i32, i32* %3, align 4, !dbg !1725
  %37 = load %struct.fd_set*, %struct.fd_set** %4, align 4, !dbg !1726
  %38 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %37, i32 0, i32 1, !dbg !1727
  %39 = load i32, i32* %5, align 4, !dbg !1728
  %40 = getelementptr inbounds [1024 x i32], [1024 x i32]* %38, i32 0, i32 %39, !dbg !1726
  store i32 %36, i32* %40, align 4, !dbg !1729
  br label %41, !dbg !1730

41:                                               ; preds = %31, %26
  ret void, !dbg !1730
}

declare i32 @select(i32, %struct.fd_set*, %struct.fd_set*, %struct.fd_set*, %struct.timeval*) #3

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @FD_ISSET(i32 %0, %struct.fd_set* %1) #0 !dbg !1731 {
  %3 = alloca i1, align 1
  %4 = alloca i32, align 4
  %5 = alloca %struct.fd_set*, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 4
  %8 = alloca i32*, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1737, metadata !DIExpression()), !dbg !1738
  store %struct.fd_set* %1, %struct.fd_set** %5, align 4
  call void @llvm.dbg.declare(metadata %struct.fd_set** %5, metadata !1739, metadata !DIExpression()), !dbg !1740
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1741, metadata !DIExpression()), !dbg !1742
  %9 = load %struct.fd_set*, %struct.fd_set** %5, align 4, !dbg !1743
  %10 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %9, i32 0, i32 0, !dbg !1744
  %11 = load i32, i32* %10, align 4, !dbg !1744
  store i32 %11, i32* %6, align 4, !dbg !1742
  call void @llvm.dbg.declare(metadata i32** %7, metadata !1745, metadata !DIExpression()), !dbg !1747
  %12 = load %struct.fd_set*, %struct.fd_set** %5, align 4, !dbg !1748
  %13 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %12, i32 0, i32 1, !dbg !1749
  %14 = getelementptr inbounds [1024 x i32], [1024 x i32]* %13, i32 0, i32 0, !dbg !1748
  store i32* %14, i32** %7, align 4, !dbg !1747
  call void @llvm.dbg.declare(metadata i32** %8, metadata !1750, metadata !DIExpression()), !dbg !1751
  %15 = load i32*, i32** %7, align 4, !dbg !1752
  %16 = load i32, i32* %6, align 4, !dbg !1753
  %17 = getelementptr inbounds i32, i32* %15, i32 %16, !dbg !1754
  store i32* %17, i32** %8, align 4, !dbg !1751
  br label %18, !dbg !1755

18:                                               ; preds = %29, %2
  %19 = load i32*, i32** %7, align 4, !dbg !1756
  %20 = load i32*, i32** %8, align 4, !dbg !1758
  %21 = icmp ult i32* %19, %20, !dbg !1759
  br i1 %21, label %22, label %32, !dbg !1760

22:                                               ; preds = %18
  %23 = load i32*, i32** %7, align 4, !dbg !1761
  %24 = load i32, i32* %23, align 4, !dbg !1764
  %25 = load i32, i32* %4, align 4, !dbg !1765
  %26 = icmp eq i32 %24, %25, !dbg !1766
  br i1 %26, label %27, label %28, !dbg !1767

27:                                               ; preds = %22
  store i1 true, i1* %3, align 1, !dbg !1768
  br label %33, !dbg !1768

28:                                               ; preds = %22
  br label %29, !dbg !1770

29:                                               ; preds = %28
  %30 = load i32*, i32** %7, align 4, !dbg !1771
  %31 = getelementptr inbounds i32, i32* %30, i32 1, !dbg !1771
  store i32* %31, i32** %7, align 4, !dbg !1771
  br label %18, !dbg !1772, !llvm.loop !1773

32:                                               ; preds = %18
  store i1 false, i1* %3, align 1, !dbg !1775
  br label %33, !dbg !1775

33:                                               ; preds = %32, %27
  %34 = load i1, i1* %3, align 1, !dbg !1776
  ret i1 %34, !dbg !1776
}

declare i32 @recv(i32, i8*, i32, i32) #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: noinline nounwind optnone
define void @create_header(%struct.dnssession* %0) #0 !dbg !1777 {
  %2 = alloca %struct.dnssession*, align 4
  store %struct.dnssession* %0, %struct.dnssession** %2, align 4
  call void @llvm.dbg.declare(metadata %struct.dnssession** %2, metadata !1778, metadata !DIExpression()), !dbg !1779
  %3 = call noalias align 16 i8* @calloc(i32 1, i32 12), !dbg !1780
  %4 = bitcast i8* %3 to %struct.dnsheader*, !dbg !1781
  %5 = load %struct.dnssession*, %struct.dnssession** %2, align 4, !dbg !1782
  %6 = getelementptr inbounds %struct.dnssession, %struct.dnssession* %5, i32 0, i32 0, !dbg !1783
  store %struct.dnsheader* %4, %struct.dnsheader** %6, align 4, !dbg !1784
  %7 = call i32 @random(), !dbg !1785
  %8 = and i32 %7, 32639, !dbg !1786
  %9 = trunc i32 %8 to i16, !dbg !1785
  %10 = load %struct.dnssession*, %struct.dnssession** %2, align 4, !dbg !1787
  %11 = getelementptr inbounds %struct.dnssession, %struct.dnssession* %10, i32 0, i32 0, !dbg !1788
  %12 = load %struct.dnsheader*, %struct.dnsheader** %11, align 4, !dbg !1788
  %13 = getelementptr inbounds %struct.dnsheader, %struct.dnsheader* %12, i32 0, i32 0, !dbg !1789
  store i16 %9, i16* %13, align 2, !dbg !1790
  %14 = load %struct.dnssession*, %struct.dnssession** %2, align 4, !dbg !1791
  %15 = getelementptr inbounds %struct.dnssession, %struct.dnssession* %14, i32 0, i32 0, !dbg !1792
  %16 = load %struct.dnsheader*, %struct.dnsheader** %15, align 4, !dbg !1792
  %17 = getelementptr inbounds %struct.dnsheader, %struct.dnsheader* %16, i32 0, i32 2, !dbg !1793
  store i16 1, i16* %17, align 2, !dbg !1794
  ret void, !dbg !1795
}

declare i32 @random() #3

; Function Attrs: noinline nounwind optnone
define void @create_question(%struct.dnssession* %0, i8* %1) #0 !dbg !1796 {
  %3 = alloca %struct.dnssession*, align 4
  %4 = alloca i8*, align 4
  %5 = alloca i8*, align 4
  %6 = alloca i8*, align 4
  store %struct.dnssession* %0, %struct.dnssession** %3, align 4
  call void @llvm.dbg.declare(metadata %struct.dnssession** %3, metadata !1799, metadata !DIExpression()), !dbg !1800
  store i8* %1, i8** %4, align 4
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1801, metadata !DIExpression()), !dbg !1802
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1803, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1805, metadata !DIExpression()), !dbg !1806
  %7 = call noalias align 16 i8* @calloc(i32 1, i32 12), !dbg !1807
  %8 = bitcast i8* %7 to %struct.dnsquestion*, !dbg !1808
  %9 = load %struct.dnssession*, %struct.dnssession** %3, align 4, !dbg !1809
  %10 = getelementptr inbounds %struct.dnssession, %struct.dnssession* %9, i32 0, i32 1, !dbg !1810
  store %struct.dnsquestion* %8, %struct.dnsquestion** %10, align 4, !dbg !1811
  %11 = load i8*, i8** %4, align 4, !dbg !1812
  %12 = call i32 @strlen(i8* %11) #10, !dbg !1813
  %13 = add i32 %12, 2, !dbg !1814
  %14 = load %struct.dnssession*, %struct.dnssession** %3, align 4, !dbg !1815
  %15 = getelementptr inbounds %struct.dnssession, %struct.dnssession* %14, i32 0, i32 1, !dbg !1816
  %16 = load %struct.dnsquestion*, %struct.dnsquestion** %15, align 4, !dbg !1816
  %17 = getelementptr inbounds %struct.dnsquestion, %struct.dnsquestion* %16, i32 0, i32 0, !dbg !1817
  store i32 %13, i32* %17, align 4, !dbg !1818
  %18 = load %struct.dnssession*, %struct.dnssession** %3, align 4, !dbg !1819
  %19 = getelementptr inbounds %struct.dnssession, %struct.dnssession* %18, i32 0, i32 1, !dbg !1820
  %20 = load %struct.dnsquestion*, %struct.dnsquestion** %19, align 4, !dbg !1820
  %21 = getelementptr inbounds %struct.dnsquestion, %struct.dnsquestion* %20, i32 0, i32 0, !dbg !1821
  %22 = load i32, i32* %21, align 4, !dbg !1821
  %23 = add i32 %22, 2, !dbg !1822
  %24 = call noalias align 16 i8* @calloc(i32 1, i32 %23), !dbg !1823
  %25 = load %struct.dnssession*, %struct.dnssession** %3, align 4, !dbg !1824
  %26 = getelementptr inbounds %struct.dnssession, %struct.dnssession* %25, i32 0, i32 1, !dbg !1825
  %27 = load %struct.dnsquestion*, %struct.dnsquestion** %26, align 4, !dbg !1825
  %28 = getelementptr inbounds %struct.dnsquestion, %struct.dnsquestion* %27, i32 0, i32 1, !dbg !1826
  store i8* %24, i8** %28, align 4, !dbg !1827
  %29 = load %struct.dnssession*, %struct.dnssession** %3, align 4, !dbg !1828
  %30 = getelementptr inbounds %struct.dnssession, %struct.dnssession* %29, i32 0, i32 1, !dbg !1829
  %31 = load %struct.dnsquestion*, %struct.dnsquestion** %30, align 4, !dbg !1829
  %32 = getelementptr inbounds %struct.dnsquestion, %struct.dnsquestion* %31, i32 0, i32 1, !dbg !1830
  %33 = load i8*, i8** %32, align 4, !dbg !1830
  %34 = getelementptr inbounds i8, i8* %33, i32 1, !dbg !1831
  %35 = load i8*, i8** %4, align 4, !dbg !1832
  call void @"overflow$0"(i8* %34, i8* %35)
  %36 = call i8* @strcpy(i8* %34, i8* %35), !dbg !1833
  %37 = load %struct.dnssession*, %struct.dnssession** %3, align 4, !dbg !1834
  %38 = getelementptr inbounds %struct.dnssession, %struct.dnssession* %37, i32 0, i32 1, !dbg !1835
  %39 = load %struct.dnsquestion*, %struct.dnsquestion** %38, align 4, !dbg !1835
  %40 = getelementptr inbounds %struct.dnsquestion, %struct.dnsquestion* %39, i32 0, i32 1, !dbg !1836
  %41 = load i8*, i8** %40, align 4, !dbg !1836
  %42 = getelementptr inbounds i8, i8* %41, i32 1, !dbg !1837
  store i8* %42, i8** %5, align 4, !dbg !1838
  %43 = load %struct.dnssession*, %struct.dnssession** %3, align 4, !dbg !1839
  %44 = getelementptr inbounds %struct.dnssession, %struct.dnssession* %43, i32 0, i32 1, !dbg !1840
  %45 = load %struct.dnsquestion*, %struct.dnsquestion** %44, align 4, !dbg !1840
  %46 = getelementptr inbounds %struct.dnsquestion, %struct.dnsquestion* %45, i32 0, i32 1, !dbg !1841
  %47 = load i8*, i8** %46, align 4, !dbg !1841
  store i8* %47, i8** %6, align 4, !dbg !1842
  br label %48, !dbg !1843

48:                                               ; preds = %71, %2
  %49 = load i8*, i8** %5, align 4, !dbg !1844
  %50 = getelementptr inbounds i8, i8* %49, i32 0, !dbg !1844
  %51 = load i8, i8* %50, align 1, !dbg !1844
  %52 = sext i8 %51 to i32, !dbg !1844
  %53 = icmp ne i32 %52, 0, !dbg !1845
  br i1 %53, label %54, label %74, !dbg !1843

54:                                               ; preds = %48
  %55 = load i8*, i8** %5, align 4, !dbg !1846
  %56 = getelementptr inbounds i8, i8* %55, i32 0, !dbg !1846
  %57 = load i8, i8* %56, align 1, !dbg !1846
  %58 = sext i8 %57 to i32, !dbg !1846
  %59 = icmp eq i32 %58, 46, !dbg !1849
  br i1 %59, label %60, label %71, !dbg !1850

60:                                               ; preds = %54
  %61 = load i8*, i8** %5, align 4, !dbg !1851
  %62 = load i8*, i8** %6, align 4, !dbg !1853
  %63 = ptrtoint i8* %61 to i32, !dbg !1854
  %64 = ptrtoint i8* %62 to i32, !dbg !1854
  %65 = sub i32 %63, %64, !dbg !1854
  %66 = sub nsw i32 %65, 1, !dbg !1855
  %67 = trunc i32 %66 to i8, !dbg !1851
  %68 = load i8*, i8** %6, align 4, !dbg !1856
  %69 = getelementptr inbounds i8, i8* %68, i32 0, !dbg !1856
  store i8 %67, i8* %69, align 1, !dbg !1857
  %70 = load i8*, i8** %5, align 4, !dbg !1858
  store i8* %70, i8** %6, align 4, !dbg !1859
  br label %71, !dbg !1860

71:                                               ; preds = %60, %54
  %72 = load i8*, i8** %5, align 4, !dbg !1861
  %73 = getelementptr inbounds i8, i8* %72, i32 1, !dbg !1861
  store i8* %73, i8** %5, align 4, !dbg !1861
  br label %48, !dbg !1843, !llvm.loop !1862

74:                                               ; preds = %48
  %75 = load i8*, i8** %5, align 4, !dbg !1864
  %76 = load i8*, i8** %6, align 4, !dbg !1865
  %77 = ptrtoint i8* %75 to i32, !dbg !1866
  %78 = ptrtoint i8* %76 to i32, !dbg !1866
  %79 = sub i32 %77, %78, !dbg !1866
  %80 = sub nsw i32 %79, 1, !dbg !1867
  %81 = trunc i32 %80 to i8, !dbg !1864
  %82 = load i8*, i8** %6, align 4, !dbg !1868
  %83 = getelementptr inbounds i8, i8* %82, i32 0, !dbg !1868
  store i8 %81, i8* %83, align 1, !dbg !1869
  %84 = load i32, i32* @global_querytype, align 4, !dbg !1870
  %85 = trunc i32 %84 to i16, !dbg !1870
  %86 = load %struct.dnssession*, %struct.dnssession** %3, align 4, !dbg !1871
  %87 = getelementptr inbounds %struct.dnssession, %struct.dnssession* %86, i32 0, i32 1, !dbg !1872
  %88 = load %struct.dnsquestion*, %struct.dnsquestion** %87, align 4, !dbg !1872
  %89 = getelementptr inbounds %struct.dnsquestion, %struct.dnsquestion* %88, i32 0, i32 2, !dbg !1873
  store i16 %85, i16* %89, align 4, !dbg !1874
  %90 = load %struct.dnssession*, %struct.dnssession** %3, align 4, !dbg !1875
  %91 = getelementptr inbounds %struct.dnssession, %struct.dnssession* %90, i32 0, i32 1, !dbg !1876
  %92 = load %struct.dnsquestion*, %struct.dnsquestion** %91, align 4, !dbg !1876
  %93 = getelementptr inbounds %struct.dnsquestion, %struct.dnsquestion* %92, i32 0, i32 3, !dbg !1877
  store i16 1, i16* %93, align 2, !dbg !1878
  ret void, !dbg !1879
}

; Function Attrs: noinline nounwind optnone
define void @add_arecord(%struct.dnssession* %0, %struct.dnsrr* %1, i8* %2, i8* %3) #0 !dbg !1880 {
  %5 = alloca %struct.dnssession*, align 4
  %6 = alloca %struct.dnsrr*, align 4
  %7 = alloca i8*, align 4
  %8 = alloca i8*, align 4
  %9 = alloca %struct.arecord*, align 4
  store %struct.dnssession* %0, %struct.dnssession** %5, align 4
  call void @llvm.dbg.declare(metadata %struct.dnssession** %5, metadata !1883, metadata !DIExpression()), !dbg !1884
  store %struct.dnsrr* %1, %struct.dnsrr** %6, align 4
  call void @llvm.dbg.declare(metadata %struct.dnsrr** %6, metadata !1885, metadata !DIExpression()), !dbg !1886
  store i8* %2, i8** %7, align 4
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1887, metadata !DIExpression()), !dbg !1888
  store i8* %3, i8** %8, align 4
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1889, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.declare(metadata %struct.arecord** %9, metadata !1891, metadata !DIExpression()), !dbg !1892
  %10 = call noalias align 16 i8* @calloc(i32 1, i32 24), !dbg !1893
  %11 = bitcast i8* %10 to %struct.arecord*, !dbg !1894
  store %struct.arecord* %11, %struct.arecord** %9, align 4, !dbg !1895
  %12 = load i8*, i8** %7, align 4, !dbg !1896
  %13 = call align 16 i8* @strdup(i8* %12) #11, !dbg !1897
  %14 = load %struct.arecord*, %struct.arecord** %9, align 4, !dbg !1898
  %15 = getelementptr inbounds %struct.arecord, %struct.arecord* %14, i32 0, i32 0, !dbg !1899
  store i8* %13, i8** %15, align 4, !dbg !1900
  %16 = load i8*, i8** %8, align 4, !dbg !1901
  %17 = call align 16 i8* @strdup(i8* %16) #11, !dbg !1902
  %18 = load %struct.arecord*, %struct.arecord** %9, align 4, !dbg !1903
  %19 = getelementptr inbounds %struct.arecord, %struct.arecord* %18, i32 0, i32 1, !dbg !1904
  store i8* %17, i8** %19, align 4, !dbg !1905
  %20 = load %struct.dnsrr*, %struct.dnsrr** %6, align 4, !dbg !1906
  %21 = getelementptr inbounds %struct.dnsrr, %struct.dnsrr* %20, i32 0, i32 0, !dbg !1907
  %22 = load i8*, i8** %21, align 4, !dbg !1907
  %23 = call i8* @printablename(i8* %22, i32 1), !dbg !1908
  %24 = call align 16 i8* @strdup(i8* %23) #11, !dbg !1909
  %25 = load %struct.arecord*, %struct.arecord** %9, align 4, !dbg !1910
  %26 = getelementptr inbounds %struct.arecord, %struct.arecord* %25, i32 0, i32 3, !dbg !1911
  store i8* %24, i8** %26, align 4, !dbg !1912
  %27 = load %struct.dnsrr*, %struct.dnsrr** %6, align 4, !dbg !1913
  %28 = getelementptr inbounds %struct.dnsrr, %struct.dnsrr* %27, i32 0, i32 7, !dbg !1915
  %29 = load i8*, i8** %28, align 4, !dbg !1915
  %30 = icmp eq i8* %29, null, !dbg !1916
  br i1 %30, label %31, label %34, !dbg !1917

31:                                               ; preds = %4
  %32 = load %struct.arecord*, %struct.arecord** %9, align 4, !dbg !1918
  %33 = getelementptr inbounds %struct.arecord, %struct.arecord* %32, i32 0, i32 4, !dbg !1919
  store i8* null, i8** %33, align 4, !dbg !1920
  br label %41, !dbg !1918

34:                                               ; preds = %4
  %35 = load %struct.dnsrr*, %struct.dnsrr** %6, align 4, !dbg !1921
  %36 = getelementptr inbounds %struct.dnsrr, %struct.dnsrr* %35, i32 0, i32 7, !dbg !1922
  %37 = load i8*, i8** %36, align 4, !dbg !1922
  %38 = call align 16 i8* @strdup(i8* %37) #11, !dbg !1923
  %39 = load %struct.arecord*, %struct.arecord** %9, align 4, !dbg !1924
  %40 = getelementptr inbounds %struct.arecord, %struct.arecord* %39, i32 0, i32 4, !dbg !1925
  store i8* %38, i8** %40, align 4, !dbg !1926
  br label %41

41:                                               ; preds = %34, %31
  %42 = load %struct.arecord*, %struct.arecord** @arecords, align 4, !dbg !1927
  %43 = load %struct.arecord*, %struct.arecord** %9, align 4, !dbg !1928
  %44 = getelementptr inbounds %struct.arecord, %struct.arecord* %43, i32 0, i32 5, !dbg !1929
  store %struct.arecord* %42, %struct.arecord** %44, align 4, !dbg !1930
  %45 = load %struct.arecord*, %struct.arecord** %9, align 4, !dbg !1931
  store %struct.arecord* %45, %struct.arecord** @arecords, align 4, !dbg !1932
  ret void, !dbg !1933
}

; Function Attrs: noinline nounwind optnone
define void @display_arecords() #0 !dbg !1934 {
  %1 = alloca %struct.arecord*, align 4
  %2 = alloca i32, align 4
  %3 = alloca [10 x i8], align 1
  call void @llvm.dbg.declare(metadata %struct.arecord** %1, metadata !1937, metadata !DIExpression()), !dbg !1938
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1939, metadata !DIExpression()), !dbg !1940
  call void @llvm.dbg.declare(metadata [10 x i8]* %3, metadata !1941, metadata !DIExpression()), !dbg !1945
  %4 = load %struct.arecord*, %struct.arecord** @arecords, align 4, !dbg !1946
  store %struct.arecord* %4, %struct.arecord** %1, align 4, !dbg !1947
  br label %5, !dbg !1948

5:                                                ; preds = %28, %0
  %6 = load %struct.arecord*, %struct.arecord** %1, align 4, !dbg !1949
  %7 = icmp ne %struct.arecord* %6, null, !dbg !1950
  br i1 %7, label %8, label %39, !dbg !1948

8:                                                ; preds = %5
  %9 = load %struct.arecord*, %struct.arecord** %1, align 4, !dbg !1951
  %10 = getelementptr inbounds %struct.arecord, %struct.arecord* %9, i32 0, i32 0, !dbg !1953
  %11 = load i8*, i8** %10, align 4, !dbg !1953
  %12 = load %struct.arecord*, %struct.arecord** %1, align 4, !dbg !1954
  %13 = getelementptr inbounds %struct.arecord, %struct.arecord* %12, i32 0, i32 1, !dbg !1955
  %14 = load i8*, i8** %13, align 4, !dbg !1955
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.338, i32 0, i32 0), i8* %11, i8* %14, i32* %2), !dbg !1956
  %16 = load i32, i32* %2, align 4, !dbg !1957
  %17 = sub nsw i32 40, %16, !dbg !1959
  %18 = icmp slt i32 %17, 1, !dbg !1960
  br i1 %18, label %19, label %21, !dbg !1961

19:                                               ; preds = %8
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.339, i32 0, i32 0)), !dbg !1962
  br label %28, !dbg !1962

21:                                               ; preds = %8
  %22 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i32 0, i32 0, !dbg !1963
  %23 = load i32, i32* %2, align 4, !dbg !1965
  %24 = sub nsw i32 40, %23, !dbg !1966
  %25 = call i32 (i8*, i8*, ...) @sprintf(i8* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.340, i32 0, i32 0), i32 %24), !dbg !1967
  %26 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i32 0, i32 0, !dbg !1968
  %27 = call i32 (i8*, ...) @printf(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.339, i32 0, i32 0)), !dbg !1969
  br label %28

28:                                               ; preds = %21, %19
  %29 = load %struct.arecord*, %struct.arecord** %1, align 4, !dbg !1970
  %30 = getelementptr inbounds %struct.arecord, %struct.arecord* %29, i32 0, i32 3, !dbg !1971
  %31 = load i8*, i8** %30, align 4, !dbg !1971
  %32 = load %struct.arecord*, %struct.arecord** %1, align 4, !dbg !1972
  %33 = getelementptr inbounds %struct.arecord, %struct.arecord* %32, i32 0, i32 4, !dbg !1973
  %34 = load i8*, i8** %33, align 4, !dbg !1973
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.341, i32 0, i32 0), i8* %31, i8* %34), !dbg !1974
  %36 = load %struct.arecord*, %struct.arecord** %1, align 4, !dbg !1975
  %37 = getelementptr inbounds %struct.arecord, %struct.arecord* %36, i32 0, i32 5, !dbg !1976
  %38 = load %struct.arecord*, %struct.arecord** %37, align 4, !dbg !1976
  store %struct.arecord* %38, %struct.arecord** %1, align 4, !dbg !1977
  br label %5, !dbg !1948, !llvm.loop !1978

39:                                               ; preds = %5
  ret void, !dbg !1980
}

; Function Attrs: noinline nounwind optnone
define void @add_answer(i8* %0) #0 !dbg !1981 {
  %2 = alloca i8*, align 4
  %3 = alloca %struct.answer*, align 4
  store i8* %0, i8** %2, align 4
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1984, metadata !DIExpression()), !dbg !1985
  call void @llvm.dbg.declare(metadata %struct.answer** %3, metadata !1986, metadata !DIExpression()), !dbg !1987
  %4 = call noalias align 16 i8* @calloc(i32 1, i32 8), !dbg !1988
  %5 = bitcast i8* %4 to %struct.answer*, !dbg !1989
  store %struct.answer* %5, %struct.answer** %3, align 4, !dbg !1990
  %6 = load i8*, i8** %2, align 4, !dbg !1991
  %7 = call align 16 i8* @strdup(i8* %6) #11, !dbg !1992
  %8 = load %struct.answer*, %struct.answer** %3, align 4, !dbg !1993
  %9 = getelementptr inbounds %struct.answer, %struct.answer* %8, i32 0, i32 0, !dbg !1994
  store i8* %7, i8** %9, align 4, !dbg !1995
  %10 = load %struct.answer*, %struct.answer** @answers, align 4, !dbg !1996
  %11 = load %struct.answer*, %struct.answer** %3, align 4, !dbg !1997
  %12 = getelementptr inbounds %struct.answer, %struct.answer* %11, i32 0, i32 1, !dbg !1998
  store %struct.answer* %10, %struct.answer** %12, align 4, !dbg !1999
  %13 = load %struct.answer*, %struct.answer** %3, align 4, !dbg !2000
  store %struct.answer* %13, %struct.answer** @answers, align 4, !dbg !2001
  ret void, !dbg !2002
}

; Function Attrs: noinline nounwind optnone
define i32 @has_answer(i8* %0) #0 !dbg !2003 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 4
  %4 = alloca %struct.answer*, align 4
  store i8* %0, i8** %3, align 4
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2006, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.declare(metadata %struct.answer** %4, metadata !2008, metadata !DIExpression()), !dbg !2009
  %5 = load %struct.answer*, %struct.answer** @answers, align 4, !dbg !2010
  store %struct.answer* %5, %struct.answer** %4, align 4, !dbg !2011
  br label %6, !dbg !2012

6:                                                ; preds = %17, %1
  %7 = load %struct.answer*, %struct.answer** %4, align 4, !dbg !2013
  %8 = icmp ne %struct.answer* %7, null, !dbg !2014
  br i1 %8, label %9, label %21, !dbg !2012

9:                                                ; preds = %6
  %10 = load %struct.answer*, %struct.answer** %4, align 4, !dbg !2015
  %11 = getelementptr inbounds %struct.answer, %struct.answer* %10, i32 0, i32 0, !dbg !2018
  %12 = load i8*, i8** %11, align 4, !dbg !2018
  %13 = load i8*, i8** %3, align 4, !dbg !2019
  %14 = call i32 @strcmp(i8* %12, i8* %13) #13, !dbg !2020
  %15 = icmp eq i32 %14, 0, !dbg !2021
  br i1 %15, label %16, label %17, !dbg !2022

16:                                               ; preds = %9
  store i32 1, i32* %2, align 4, !dbg !2023
  br label %22, !dbg !2023

17:                                               ; preds = %9
  %18 = load %struct.answer*, %struct.answer** %4, align 4, !dbg !2024
  %19 = getelementptr inbounds %struct.answer, %struct.answer* %18, i32 0, i32 1, !dbg !2025
  %20 = load %struct.answer*, %struct.answer** %19, align 4, !dbg !2025
  store %struct.answer* %20, %struct.answer** %4, align 4, !dbg !2026
  br label %6, !dbg !2012, !llvm.loop !2027

21:                                               ; preds = %6
  store i32 0, i32* %2, align 4, !dbg !2029
  br label %22, !dbg !2029

22:                                               ; preds = %21, %16
  %23 = load i32, i32* %2, align 4, !dbg !2030
  ret i32 %23, !dbg !2030
}

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8*, i8*) #9

; Function Attrs: noinline nounwind optnone
define void @add_busy(i8* %0) #0 !dbg !2031 {
  %2 = alloca i8*, align 4
  %3 = alloca %struct.busy*, align 4
  store i8* %0, i8** %2, align 4
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2032, metadata !DIExpression()), !dbg !2033
  call void @llvm.dbg.declare(metadata %struct.busy** %3, metadata !2034, metadata !DIExpression()), !dbg !2035
  %4 = call noalias align 16 i8* @calloc(i32 1, i32 8), !dbg !2036
  %5 = bitcast i8* %4 to %struct.busy*, !dbg !2037
  store %struct.busy* %5, %struct.busy** %3, align 4, !dbg !2038
  %6 = load i8*, i8** %2, align 4, !dbg !2039
  %7 = call align 16 i8* @strdup(i8* %6) #11, !dbg !2040
  %8 = load %struct.busy*, %struct.busy** %3, align 4, !dbg !2041
  %9 = getelementptr inbounds %struct.busy, %struct.busy* %8, i32 0, i32 0, !dbg !2042
  store i8* %7, i8** %9, align 4, !dbg !2043
  %10 = load %struct.busy*, %struct.busy** @busies, align 4, !dbg !2044
  %11 = load %struct.busy*, %struct.busy** %3, align 4, !dbg !2045
  %12 = getelementptr inbounds %struct.busy, %struct.busy* %11, i32 0, i32 1, !dbg !2046
  store %struct.busy* %10, %struct.busy** %12, align 4, !dbg !2047
  %13 = load %struct.busy*, %struct.busy** %3, align 4, !dbg !2048
  store %struct.busy* %13, %struct.busy** @busies, align 4, !dbg !2049
  ret void, !dbg !2050
}

; Function Attrs: noinline nounwind optnone
define void @remove_busy(i8* %0) #0 !dbg !2051 {
  %2 = alloca i8*, align 4
  %3 = alloca %struct.busy*, align 4
  %4 = alloca %struct.busy*, align 4
  store i8* %0, i8** %2, align 4
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2052, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.declare(metadata %struct.busy** %3, metadata !2054, metadata !DIExpression()), !dbg !2055
  call void @llvm.dbg.declare(metadata %struct.busy** %4, metadata !2056, metadata !DIExpression()), !dbg !2057
  %5 = load %struct.busy*, %struct.busy** @busies, align 4, !dbg !2058
  %6 = getelementptr inbounds %struct.busy, %struct.busy* %5, i32 0, i32 0, !dbg !2060
  %7 = load i8*, i8** %6, align 4, !dbg !2060
  %8 = load i8*, i8** %2, align 4, !dbg !2061
  %9 = call i32 @strcmp(i8* %7, i8* %8) #13, !dbg !2062
  %10 = icmp eq i32 %9, 0, !dbg !2063
  br i1 %10, label %11, label %18, !dbg !2064

11:                                               ; preds = %1
  %12 = load %struct.busy*, %struct.busy** @busies, align 4, !dbg !2065
  store %struct.busy* %12, %struct.busy** %3, align 4, !dbg !2067
  %13 = load %struct.busy*, %struct.busy** @busies, align 4, !dbg !2068
  %14 = getelementptr inbounds %struct.busy, %struct.busy* %13, i32 0, i32 1, !dbg !2069
  %15 = load %struct.busy*, %struct.busy** %14, align 4, !dbg !2069
  store %struct.busy* %15, %struct.busy** @busies, align 4, !dbg !2070
  %16 = load %struct.busy*, %struct.busy** %3, align 4, !dbg !2071
  %17 = bitcast %struct.busy* %16 to i8*, !dbg !2071
  call void @free(i8* %17), !dbg !2072
  br label %42, !dbg !2073

18:                                               ; preds = %1
  %19 = load %struct.busy*, %struct.busy** @busies, align 4, !dbg !2074
  store %struct.busy* %19, %struct.busy** %4, align 4, !dbg !2075
  %20 = load %struct.busy*, %struct.busy** %4, align 4, !dbg !2076
  %21 = getelementptr inbounds %struct.busy, %struct.busy* %20, i32 0, i32 1, !dbg !2077
  %22 = load %struct.busy*, %struct.busy** %21, align 4, !dbg !2077
  store %struct.busy* %22, %struct.busy** %3, align 4, !dbg !2078
  br label %23, !dbg !2079

23:                                               ; preds = %41, %18
  %24 = load %struct.busy*, %struct.busy** %3, align 4, !dbg !2080
  %25 = icmp ne %struct.busy* %24, null, !dbg !2081
  br i1 %25, label %26, label %42, !dbg !2079

26:                                               ; preds = %23
  %27 = load %struct.busy*, %struct.busy** %3, align 4, !dbg !2082
  %28 = getelementptr inbounds %struct.busy, %struct.busy* %27, i32 0, i32 0, !dbg !2085
  %29 = load i8*, i8** %28, align 4, !dbg !2085
  %30 = load i8*, i8** %2, align 4, !dbg !2086
  %31 = call i32 @strcmp(i8* %29, i8* %30) #13, !dbg !2087
  %32 = icmp eq i32 %31, 0, !dbg !2088
  br i1 %32, label %33, label %41, !dbg !2089

33:                                               ; preds = %26
  %34 = load %struct.busy*, %struct.busy** %3, align 4, !dbg !2090
  %35 = getelementptr inbounds %struct.busy, %struct.busy* %34, i32 0, i32 1, !dbg !2092
  %36 = load %struct.busy*, %struct.busy** %35, align 4, !dbg !2092
  %37 = load %struct.busy*, %struct.busy** %4, align 4, !dbg !2093
  %38 = getelementptr inbounds %struct.busy, %struct.busy* %37, i32 0, i32 1, !dbg !2094
  store %struct.busy* %36, %struct.busy** %38, align 4, !dbg !2095
  %39 = load %struct.busy*, %struct.busy** %3, align 4, !dbg !2096
  %40 = bitcast %struct.busy* %39 to i8*, !dbg !2096
  call void @free(i8* %40), !dbg !2097
  br label %42, !dbg !2098

41:                                               ; preds = %26
  br label %23, !dbg !2079, !llvm.loop !2099

42:                                               ; preds = %11, %33, %23
  ret void, !dbg !2101
}

; Function Attrs: noinline nounwind optnone
define i32 @is_busy(i8* %0) #0 !dbg !2102 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 4
  %4 = alloca %struct.busy*, align 4
  store i8* %0, i8** %3, align 4
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2103, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.declare(metadata %struct.busy** %4, metadata !2105, metadata !DIExpression()), !dbg !2106
  %5 = load %struct.busy*, %struct.busy** @busies, align 4, !dbg !2107
  store %struct.busy* %5, %struct.busy** %4, align 4, !dbg !2108
  br label %6, !dbg !2109

6:                                                ; preds = %17, %1
  %7 = load %struct.busy*, %struct.busy** %4, align 4, !dbg !2110
  %8 = icmp ne %struct.busy* %7, null, !dbg !2111
  br i1 %8, label %9, label %21, !dbg !2109

9:                                                ; preds = %6
  %10 = load %struct.busy*, %struct.busy** %4, align 4, !dbg !2112
  %11 = getelementptr inbounds %struct.busy, %struct.busy* %10, i32 0, i32 0, !dbg !2115
  %12 = load i8*, i8** %11, align 4, !dbg !2115
  %13 = load i8*, i8** %3, align 4, !dbg !2116
  %14 = call i32 @strcmp(i8* %12, i8* %13) #13, !dbg !2117
  %15 = icmp eq i32 %14, 0, !dbg !2118
  br i1 %15, label %16, label %17, !dbg !2119

16:                                               ; preds = %9
  store i32 1, i32* %2, align 4, !dbg !2120
  br label %22, !dbg !2120

17:                                               ; preds = %9
  %18 = load %struct.busy*, %struct.busy** %4, align 4, !dbg !2121
  %19 = getelementptr inbounds %struct.busy, %struct.busy* %18, i32 0, i32 1, !dbg !2122
  %20 = load %struct.busy*, %struct.busy** %19, align 4, !dbg !2122
  store %struct.busy* %20, %struct.busy** %4, align 4, !dbg !2123
  br label %6, !dbg !2109, !llvm.loop !2124

21:                                               ; preds = %6
  store i32 0, i32* %2, align 4, !dbg !2126
  br label %22, !dbg !2126

22:                                               ; preds = %21, %16
  %23 = load i32, i32* %2, align 4, !dbg !2127
  ret i32 %23, !dbg !2127
}

; Function Attrs: noinline nounwind optnone
define i32 @create_session(i8* %0, i8* %1, i32 %2, i8* %3, i8* %4, i32 %5, i8* %6, i32 %7) #0 !dbg !2128 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 4
  %11 = alloca i8*, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 4
  %14 = alloca i8*, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.dnssession*, align 4
  %19 = alloca %struct.dnsrr*, align 4
  %20 = alloca %struct.dnsrr*, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca [1025 x i8], align 16
  %26 = alloca %struct.dnsrr*, align 4
  %27 = alloca i32, align 4
  %28 = alloca [1025 x i8], align 16
  %29 = alloca [1025 x i8], align 16
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca %struct.hostent*, align 4
  %35 = alloca i8**, align 4
  %36 = alloca i8*, align 4
  %37 = alloca i8*, align 4
  store i8* %0, i8** %10, align 4
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2131, metadata !DIExpression()), !dbg !2132
  store i8* %1, i8** %11, align 4
  call void @llvm.dbg.declare(metadata i8** %11, metadata !2133, metadata !DIExpression()), !dbg !2134
  store i32 %2, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !2135, metadata !DIExpression()), !dbg !2136
  store i8* %3, i8** %13, align 4
  call void @llvm.dbg.declare(metadata i8** %13, metadata !2137, metadata !DIExpression()), !dbg !2138
  store i8* %4, i8** %14, align 4
  call void @llvm.dbg.declare(metadata i8** %14, metadata !2139, metadata !DIExpression()), !dbg !2140
  store i32 %5, i32* %15, align 4
  call void @llvm.dbg.declare(metadata i32* %15, metadata !2141, metadata !DIExpression()), !dbg !2142
  store i8* %6, i8** %16, align 4
  call void @llvm.dbg.declare(metadata i8** %16, metadata !2143, metadata !DIExpression()), !dbg !2144
  store i32 %7, i32* %17, align 4
  call void @llvm.dbg.declare(metadata i32* %17, metadata !2145, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.declare(metadata %struct.dnssession** %18, metadata !2147, metadata !DIExpression()), !dbg !2148
  call void @llvm.dbg.declare(metadata %struct.dnsrr** %19, metadata !2149, metadata !DIExpression()), !dbg !2150
  call void @llvm.dbg.declare(metadata %struct.dnsrr** %20, metadata !2151, metadata !DIExpression()), !dbg !2152
  call void @llvm.dbg.declare(metadata i32* %21, metadata !2153, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.declare(metadata i32* %22, metadata !2155, metadata !DIExpression()), !dbg !2156
  call void @llvm.dbg.declare(metadata i32* %23, metadata !2157, metadata !DIExpression()), !dbg !2158
  call void @llvm.dbg.declare(metadata i32* %24, metadata !2159, metadata !DIExpression()), !dbg !2160
  store i32 0, i32* %24, align 4, !dbg !2160
  call void @llvm.dbg.declare(metadata [1025 x i8]* %25, metadata !2161, metadata !DIExpression()), !dbg !2162
  %38 = load i32, i32* %15, align 4, !dbg !2163
  %39 = icmp ne i32 %38, 0, !dbg !2165
  br i1 %39, label %40, label %48, !dbg !2166

40:                                               ; preds = %8
  %41 = load i8*, i8** %16, align 4, !dbg !2167
  %42 = load i32, i32* %17, align 4, !dbg !2169
  %43 = icmp eq i32 %42, 1, !dbg !2170
  %44 = zext i1 %43 to i64, !dbg !2169
  %45 = select i1 %43, i32 32, i32 124, !dbg !2169
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.342, i32 0, i32 0), i8* %41, i32 %45), !dbg !2171
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.343, i32 0, i32 0)), !dbg !2172
  br label %48, !dbg !2173

48:                                               ; preds = %40, %8
  %49 = load i8*, i8** %13, align 4, !dbg !2174
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.344, i32 0, i32 0), i8* %49), !dbg !2175
  %51 = load i8*, i8** %14, align 4, !dbg !2176
  %52 = icmp ne i8* %51, null, !dbg !2178
  br i1 %52, label %53, label %56, !dbg !2179

53:                                               ; preds = %48
  %54 = load i8*, i8** %14, align 4, !dbg !2180
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.345, i32 0, i32 0), i8* %54), !dbg !2181
  br label %56, !dbg !2181

56:                                               ; preds = %53, %48
  %57 = load i8*, i8** %11, align 4, !dbg !2182
  %58 = getelementptr inbounds i8, i8* %57, i32 0, !dbg !2182
  %59 = load i8, i8* %58, align 1, !dbg !2182
  %60 = sext i8 %59 to i32, !dbg !2182
  %61 = icmp eq i32 %60, 0, !dbg !2184
  br i1 %61, label %62, label %64, !dbg !2185

62:                                               ; preds = %56
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.346, i32 0, i32 0)), !dbg !2186
  store i32 1, i32* %9, align 4, !dbg !2188
  br label %683, !dbg !2188

64:                                               ; preds = %56
  %65 = load i32, i32* @global_noipv6, align 4, !dbg !2189
  %66 = icmp ne i32 %65, 0, !dbg !2189
  br i1 %66, label %67, label %73, !dbg !2191

67:                                               ; preds = %64
  %68 = load i32, i32* %12, align 4, !dbg !2192
  %69 = icmp ne i32 %68, 0, !dbg !2192
  br i1 %69, label %70, label %73, !dbg !2193

70:                                               ; preds = %67
  %71 = load i8*, i8** %11, align 4, !dbg !2194
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.347, i32 0, i32 0), i8* %71), !dbg !2196
  store i32 1, i32* %9, align 4, !dbg !2197
  br label %683, !dbg !2197

73:                                               ; preds = %67, %64
  %74 = load i8*, i8** %11, align 4, !dbg !2198
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.348, i32 0, i32 0), i8* %74), !dbg !2199
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4, !dbg !2200
  %77 = call i32 @fflush(%struct._IO_FILE* %76), !dbg !2201
  %78 = load i8*, i8** %11, align 4, !dbg !2202
  %79 = call i32 @is_busy(i8* %78), !dbg !2204
  %80 = icmp eq i32 %79, 1, !dbg !2205
  br i1 %80, label %81, label %85, !dbg !2206

81:                                               ; preds = %73
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.349, i32 0, i32 0)), !dbg !2207
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4, !dbg !2209
  %84 = call i32 @fflush(%struct._IO_FILE* %83), !dbg !2210
  store i32 0, i32* %9, align 4, !dbg !2211
  br label %683, !dbg !2211

85:                                               ; preds = %73
  %86 = load i32, i32* @global_caching, align 4, !dbg !2212
  %87 = icmp ne i32 %86, 0, !dbg !2212
  br i1 %87, label %88, label %94, !dbg !2214

88:                                               ; preds = %85
  %89 = load i8*, i8** %11, align 4, !dbg !2215
  %90 = call i32 @has_answer(i8* %89), !dbg !2216
  %91 = icmp ne i32 %90, 0, !dbg !2216
  br i1 %91, label %92, label %94, !dbg !2217

92:                                               ; preds = %88
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.350, i32 0, i32 0)), !dbg !2218
  store i32 0, i32* %9, align 4, !dbg !2220
  br label %683, !dbg !2220

94:                                               ; preds = %88, %85
  %95 = load i8*, i8** %11, align 4, !dbg !2221
  call void @add_busy(i8* %95), !dbg !2222
  %96 = call noalias align 16 i8* @calloc(i32 1, i32 76), !dbg !2223
  %97 = bitcast i8* %96 to %struct.dnssession*, !dbg !2224
  store %struct.dnssession* %97, %struct.dnssession** %18, align 4, !dbg !2225
  %98 = load i32, i32* %12, align 4, !dbg !2226
  %99 = icmp ne i32 %98, 0, !dbg !2226
  %100 = zext i1 %99 to i64, !dbg !2226
  %101 = select i1 %99, i32 2, i32 1, !dbg !2226
  %102 = call i32 @create_socket(i32 %101), !dbg !2227
  %103 = load %struct.dnssession*, %struct.dnssession** %18, align 4, !dbg !2228
  %104 = getelementptr inbounds %struct.dnssession, %struct.dnssession* %103, i32 0, i32 17, !dbg !2229
  store i32 %102, i32* %104, align 4, !dbg !2230
  %105 = load i32, i32* %12, align 4, !dbg !2231
  %106 = load %struct.dnssession*, %struct.dnssession** %18, align 4, !dbg !2232
  %107 = getelementptr inbounds %struct.dnssession, %struct.dnssession* %106, i32 0, i32 18, !dbg !2233
  store i32 %105, i32* %107, align 4, !dbg !2234
  %108 = load i8*, i8** %11, align 4, !dbg !2235
  %109 = call align 16 i8* @strdup(i8* %108) #11, !dbg !2236
  %110 = load %struct.dnssession*, %struct.dnssession** %18, align 4, !dbg !2237
  %111 = getelementptr inbounds %struct.dnssession, %struct.dnssession* %110, i32 0, i32 8, !dbg !2238
  store i8* %109, i8** %111, align 4, !dbg !2239
  %112 = load i8*, i8** %10, align 4, !dbg !2240
  %113 = call align 16 i8* @strdup(i8* %112) #11, !dbg !2241
  %114 = load %struct.dnssession*, %struct.dnssession** %18, align 4, !dbg !2242
  %115 = getelementptr inbounds %struct.dnssession, %struct.dnssession* %114, i32 0, i32 9, !dbg !2243
  store i8* %113, i8** %115, align 4, !dbg !2244
  %116 = load %struct.dnssession*, %struct.dnssession** %18, align 4, !dbg !2245
  call void @create_header(%struct.dnssession* %116), !dbg !2246
  %117 = load %struct.dnssession*, %struct.dnssession** %18, align 4, !dbg !2247
  %118 = load i8*, i8** %10, align 4, !dbg !2248
  call void @create_question(%struct.dnssession* %117, i8* %118), !dbg !2249
  store i32 0, i32* %23, align 4, !dbg !2250
  store i32 0, i32* %21, align 4, !dbg !2251
  br label %119, !dbg !2253

119:                                              ; preds = %136, %94
  %120 = load i32, i32* %21, align 4, !dbg !2254
  %121 = load i32, i32* @global_retries, align 4, !dbg !2256
  %122 = icmp slt i32 %120, %121, !dbg !2257
  br i1 %122, label %123, label %139, !dbg !2258

123:                                              ; preds = %119
  %124 = load i8*, i8** %11, align 4, !dbg !2259
  %125 = load %struct.dnssession*, %struct.dnssession** %18, align 4, !dbg !2261
  %126 = call i32 @send_data(i8* %124, %struct.dnssession* %125), !dbg !2262
  %127 = load %struct.dnssession*, %struct.dnssession** %18, align 4, !dbg !2263
  %128 = load i32, i32* %21, align 4, !dbg !2265
  %129 = call i32 @receive_data(%struct.dnssession* %127, i32 %128), !dbg !2266
  store i32 %129, i32* %23, align 4, !dbg !2267
  %130 = icmp eq i32 %129, 0, !dbg !2268
  br i1 %130, label %131, label %132, !dbg !2269

131:                                              ; preds = %123
  br label %139, !dbg !2270

132:                                              ; preds = %123
  %133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.351, i32 0, i32 0)), !dbg !2271
  %134 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4, !dbg !2272
  %135 = call i32 @fflush(%struct._IO_FILE* %134), !dbg !2273
  br label %136, !dbg !2274

136:                                              ; preds = %132
  %137 = load i32, i32* %21, align 4, !dbg !2275
  %138 = add nsw i32 %137, 1, !dbg !2275
  store i32 %138, i32* %21, align 4, !dbg !2275
  br label %119, !dbg !2276, !llvm.loop !2277

139:                                              ; preds = %131, %119
  %140 = load %struct.dnssession*, %struct.dnssession** %18, align 4, !dbg !2279
  %141 = getelementptr inbounds %struct.dnssession, %struct.dnssession* %140, i32 0, i32 17, !dbg !2280
  %142 = load i32, i32* %141, align 4, !dbg !2280
  %143 = call i32 @close(i32 %142), !dbg !2281
  %144 = load i32, i32* %23, align 4, !dbg !2282
  %145 = icmp ne i32 %144, 0, !dbg !2284
  br i1 %145, label %146, label %153, !dbg !2285

146:                                              ; preds = %139
  %147 = load i8*, i8** %11, align 4, !dbg !2286
  call void @remove_busy(i8* %147), !dbg !2288
  %148 = load i32, i32* @global_negative_caching, align 4, !dbg !2289
  %149 = icmp ne i32 %148, 0, !dbg !2289
  br i1 %149, label %150, label %152, !dbg !2291

150:                                              ; preds = %146
  %151 = load i8*, i8** %11, align 4, !dbg !2292
  call void @add_answer(i8* %151), !dbg !2293
  br label %152, !dbg !2293

152:                                              ; preds = %150, %146
  store i32 1, i32* %9, align 4, !dbg !2294
  br label %683, !dbg !2294

153:                                              ; preds = %139
  %154 = load %struct.dnssession*, %struct.dnssession** %18, align 4, !dbg !2295
  %155 = getelementptr inbounds %struct.dnssession, %struct.dnssession* %154, i32 0, i32 2, !dbg !2297
  %156 = load %struct.dnsheader*, %struct.dnsheader** %155, align 4, !dbg !2297
  %157 = getelementptr inbounds %struct.dnsheader, %struct.dnsheader* %156, i32 0, i32 3, !dbg !2298
  %158 = load i16, i16* %157, align 2, !dbg !2298
  %159 = zext i16 %158 to i32, !dbg !2295
  %160 = icmp ne i32 %159, 0, !dbg !2299
  br i1 %160, label %161, label %213, !dbg !2300

161:                                              ; preds = %153
  call void @llvm.dbg.declare(metadata %struct.dnsrr** %26, metadata !2301, metadata !DIExpression()), !dbg !2303
  %162 = load %struct.dnssession*, %struct.dnssession** %18, align 4, !dbg !2304
  %163 = getelementptr inbounds %struct.dnssession, %struct.dnssession* %162, i32 0, i32 2, !dbg !2306
  %164 = load %struct.dnsheader*, %struct.dnsheader** %163, align 4, !dbg !2306
  %165 = getelementptr inbounds %struct.dnsheader, %struct.dnsheader* %164, i32 0, i32 1, !dbg !2307
  %166 = bitcast %union.anon* %165 to %struct.bit*, !dbg !2308
  %167 = bitcast %struct.bit* %166 to i16*, !dbg !2309
  %168 = load i16, i16* %167, align 2, !dbg !2309
  %169 = lshr i16 %168, 10, !dbg !2309
  %170 = and i16 %169, 1, !dbg !2309
  %171 = trunc i16 %170 to i8, !dbg !2309
  %172 = icmp ne i8 %171, 0, !dbg !2304
  br i1 %172, label %173, label %175, !dbg !2310

173:                                              ; preds = %161
  %174 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.352, i32 0, i32 0)), !dbg !2311
  br label %177, !dbg !2311

175:                                              ; preds = %161
  %176 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.353, i32 0, i32 0)), !dbg !2312
  br label %177

177:                                              ; preds = %175, %173
  %178 = load %struct.dnssession*, %struct.dnssession** %18, align 4, !dbg !2313
  %179 = getelementptr inbounds %struct.dnssession, %struct.dnssession* %178, i32 0, i32 4, !dbg !2314
  %180 = load %struct.dnsrr*, %struct.dnsrr** %179, align 4, !dbg !2314
  store %struct.dnsrr* %180, %struct.dnsrr** %26, align 4, !dbg !2315
  br label %181, !dbg !2316

181:                                              ; preds = %199, %177
  %182 = load %struct.dnsrr*, %struct.dnsrr** %26, align 4, !dbg !2317
  %183 = icmp ne %struct.dnsrr* %182, null, !dbg !2318
  br i1 %183, label %184, label %207, !dbg !2316

184:                                              ; preds = %181
  %185 = load %struct.dnsrr*, %struct.dnsrr** %26, align 4, !dbg !2319
  %186 = getelementptr inbounds %struct.dnsrr, %struct.dnsrr* %185, i32 0, i32 2, !dbg !2322
  %187 = load i16, i16* %186, align 4, !dbg !2322
  %188 = zext i16 %187 to i32, !dbg !2319
  %189 = load i32, i32* @global_querytype, align 4, !dbg !2323
  %190 = icmp ne i32 %188, %189, !dbg !2324
  br i1 %190, label %191, label %199, !dbg !2325

191:                                              ; preds = %184
  %192 = load %struct.dnsrr*, %struct.dnsrr** %26, align 4, !dbg !2326
  %193 = getelementptr inbounds %struct.dnsrr, %struct.dnsrr* %192, i32 0, i32 2, !dbg !2327
  %194 = load i16, i16* %193, align 4, !dbg !2327
  %195 = zext i16 %194 to i32, !dbg !2328
  %196 = getelementptr inbounds [256 x i8*], [256 x i8*]* @rr_types, i32 0, i32 %195, !dbg !2328
  %197 = load i8*, i8** %196, align 4, !dbg !2328
  %198 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.354, i32 0, i32 0), i8* %197), !dbg !2329
  br label %199, !dbg !2329

199:                                              ; preds = %191, %184
  %200 = load %struct.dnssession*, %struct.dnssession** %18, align 4, !dbg !2330
  %201 = load %struct.dnsrr*, %struct.dnsrr** %26, align 4, !dbg !2331
  %202 = load i8*, i8** %13, align 4, !dbg !2332
  %203 = load i8*, i8** %11, align 4, !dbg !2333
  call void @add_arecord(%struct.dnssession* %200, %struct.dnsrr* %201, i8* %202, i8* %203), !dbg !2334
  %204 = load %struct.dnsrr*, %struct.dnsrr** %26, align 4, !dbg !2335
  %205 = getelementptr inbounds %struct.dnsrr, %struct.dnsrr* %204, i32 0, i32 8, !dbg !2336
  %206 = load %struct.dnsrr*, %struct.dnsrr** %205, align 4, !dbg !2336
  store %struct.dnsrr* %206, %struct.dnsrr** %26, align 4, !dbg !2337
  br label %181, !dbg !2316, !llvm.loop !2338

207:                                              ; preds = %181
  %208 = load i32, i32* @global_caching, align 4, !dbg !2340
  %209 = icmp ne i32 %208, 0, !dbg !2340
  br i1 %209, label %210, label %212, !dbg !2342

210:                                              ; preds = %207
  %211 = load i8*, i8** %11, align 4, !dbg !2343
  call void @add_answer(i8* %211), !dbg !2344
  br label %212, !dbg !2344

212:                                              ; preds = %210, %207
  br label %213, !dbg !2345

213:                                              ; preds = %212, %153
  %214 = load %struct.dnssession*, %struct.dnssession** %18, align 4, !dbg !2346
  %215 = getelementptr inbounds %struct.dnssession, %struct.dnssession* %214, i32 0, i32 5, !dbg !2348
  %216 = load %struct.dnsrr*, %struct.dnsrr** %215, align 4, !dbg !2348
  %217 = icmp ne %struct.dnsrr* %216, null, !dbg !2349
  br i1 %217, label %218, label %247, !dbg !2350

218:                                              ; preds = %213
  %219 = load i8*, i8** %14, align 4, !dbg !2351
  %220 = icmp ne i8* %219, null, !dbg !2352
  br i1 %220, label %221, label %247, !dbg !2353

221:                                              ; preds = %218
  %222 = load %struct.dnssession*, %struct.dnssession** %18, align 4, !dbg !2354
  %223 = getelementptr inbounds %struct.dnssession, %struct.dnssession* %222, i32 0, i32 2, !dbg !2357
  %224 = load %struct.dnsheader*, %struct.dnsheader** %223, align 4, !dbg !2357
  %225 = getelementptr inbounds %struct.dnsheader, %struct.dnsheader* %224, i32 0, i32 1, !dbg !2358
  %226 = bitcast %union.anon* %225 to %struct.bit*, !dbg !2359
  %227 = bitcast %struct.bit* %226 to i16*, !dbg !2360
  %228 = load i16, i16* %227, align 2, !dbg !2360
  %229 = lshr i16 %228, 10, !dbg !2360
  %230 = and i16 %229, 1, !dbg !2360
  %231 = trunc i16 %230 to i8, !dbg !2360
  %232 = zext i8 %231 to i32, !dbg !2354
  %233 = icmp eq i32 %232, 0, !dbg !2361
  br i1 %233, label %234, label %246, !dbg !2362

234:                                              ; preds = %221
  %235 = load i8*, i8** %14, align 4, !dbg !2363
  %236 = load %struct.dnssession*, %struct.dnssession** %18, align 4, !dbg !2364
  %237 = getelementptr inbounds %struct.dnssession, %struct.dnssession* %236, i32 0, i32 5, !dbg !2365
  %238 = load %struct.dnsrr*, %struct.dnsrr** %237, align 4, !dbg !2365
  %239 = getelementptr inbounds %struct.dnsrr, %struct.dnsrr* %238, i32 0, i32 1, !dbg !2366
  %240 = load i8*, i8** %239, align 4, !dbg !2366
  %241 = call i32 @strcasecmp(i8* %235, i8* %240), !dbg !2367
  %242 = icmp eq i32 %241, 0, !dbg !2368
  br i1 %242, label %243, label %246, !dbg !2369

243:                                              ; preds = %234
  %244 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.349, i32 0, i32 0)), !dbg !2370
  %245 = load i8*, i8** %11, align 4, !dbg !2372
  call void @remove_busy(i8* %245), !dbg !2373
  store i32 0, i32* %9, align 4, !dbg !2374
  br label %683, !dbg !2374

246:                                              ; preds = %234, %221
  br label %247, !dbg !2375

247:                                              ; preds = %246, %218, %213
  %248 = load %struct.dnssession*, %struct.dnssession** %18, align 4, !dbg !2376
  %249 = getelementptr inbounds %struct.dnssession, %struct.dnssession* %248, i32 0, i32 2, !dbg !2378
  %250 = load %struct.dnsheader*, %struct.dnsheader** %249, align 4, !dbg !2378
  %251 = getelementptr inbounds %struct.dnsheader, %struct.dnsheader* %250, i32 0, i32 1, !dbg !2379
  %252 = bitcast %union.anon* %251 to %struct.bit*, !dbg !2380
  %253 = bitcast %struct.bit* %252 to i16*, !dbg !2381
  %254 = load i16, i16* %253, align 2, !dbg !2381
  %255 = lshr i16 %254, 10, !dbg !2381
  %256 = and i16 %255, 1, !dbg !2381
  %257 = trunc i16 %256 to i8, !dbg !2381
  %258 = icmp ne i8 %257, 0, !dbg !2376
  br i1 %258, label %259, label %261, !dbg !2382

259:                                              ; preds = %247
  %260 = load i8*, i8** %11, align 4, !dbg !2383
  call void @remove_busy(i8* %260), !dbg !2385
  store i32 0, i32* %9, align 4, !dbg !2386
  br label %683, !dbg !2386

261:                                              ; preds = %247
  store i32 0, i32* %22, align 4, !dbg !2387
  %262 = load %struct.dnssession*, %struct.dnssession** %18, align 4, !dbg !2388
  %263 = getelementptr inbounds %struct.dnssession, %struct.dnssession* %262, i32 0, i32 5, !dbg !2389
  %264 = load %struct.dnsrr*, %struct.dnsrr** %263, align 4, !dbg !2389
  store %struct.dnsrr* %264, %struct.dnsrr** %19, align 4, !dbg !2390
  br label %265, !dbg !2391

265:                                              ; preds = %668, %316, %293, %274, %261
  %266 = load %struct.dnsrr*, %struct.dnsrr** %19, align 4, !dbg !2392
  %267 = icmp ne %struct.dnsrr* %266, null, !dbg !2393
  br i1 %267, label %268, label %672, !dbg !2391

268:                                              ; preds = %265
  call void @llvm.dbg.declare(metadata i32* %27, metadata !2394, metadata !DIExpression()), !dbg !2396
  store i32 0, i32* %27, align 4, !dbg !2396
  call void @llvm.dbg.declare(metadata [1025 x i8]* %28, metadata !2397, metadata !DIExpression()), !dbg !2398
  call void @llvm.dbg.declare(metadata [1025 x i8]* %29, metadata !2399, metadata !DIExpression()), !dbg !2400
  %269 = load %struct.dnsrr*, %struct.dnsrr** %19, align 4, !dbg !2401
  %270 = getelementptr inbounds %struct.dnsrr, %struct.dnsrr* %269, i32 0, i32 2, !dbg !2403
  %271 = load i16, i16* %270, align 4, !dbg !2403
  %272 = zext i16 %271 to i32, !dbg !2401
  %273 = icmp ne i32 %272, 2, !dbg !2404
  br i1 %273, label %274, label %278, !dbg !2405

274:                                              ; preds = %268
  %275 = load %struct.dnsrr*, %struct.dnsrr** %19, align 4, !dbg !2406
  %276 = getelementptr inbounds %struct.dnsrr, %struct.dnsrr* %275, i32 0, i32 8, !dbg !2408
  %277 = load %struct.dnsrr*, %struct.dnsrr** %276, align 4, !dbg !2408
  store %struct.dnsrr* %277, %struct.dnsrr** %19, align 4, !dbg !2409
  br label %265, !dbg !2410, !llvm.loop !2411

278:                                              ; preds = %268
  %279 = load %struct.dnsrr*, %struct.dnsrr** %19, align 4, !dbg !2413
  %280 = getelementptr inbounds %struct.dnsrr, %struct.dnsrr* %279, i32 0, i32 1, !dbg !2415
  %281 = load i8*, i8** %280, align 4, !dbg !2415
  %282 = call i32 @strcmp(i8* %281, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.258, i32 0, i32 0)) #13, !dbg !2416
  %283 = icmp eq i32 %282, 0, !dbg !2417
  br i1 %283, label %284, label %294, !dbg !2418

284:                                              ; preds = %278
  %285 = load %struct.dnsrr*, %struct.dnsrr** %19, align 4, !dbg !2419
  %286 = getelementptr inbounds %struct.dnsrr, %struct.dnsrr* %285, i32 0, i32 8, !dbg !2421
  %287 = load %struct.dnsrr*, %struct.dnsrr** %286, align 4, !dbg !2421
  store %struct.dnsrr* %287, %struct.dnsrr** %19, align 4, !dbg !2422
  %288 = load i32, i32* %24, align 4, !dbg !2423
  %289 = add nsw i32 %288, 1, !dbg !2423
  store i32 %289, i32* %24, align 4, !dbg !2423
  %290 = icmp ne i32 %288, 0, !dbg !2423
  br i1 %290, label %293, label %291, !dbg !2425

291:                                              ; preds = %284
  %292 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.355, i32 0, i32 0)), !dbg !2426
  br label %293, !dbg !2426

293:                                              ; preds = %291, %284
  br label %265, !dbg !2427, !llvm.loop !2411

294:                                              ; preds = %278
  %295 = load i8*, i8** %14, align 4, !dbg !2428
  %296 = icmp ne i8* %295, null, !dbg !2430
  br i1 %296, label %297, label %320, !dbg !2431

297:                                              ; preds = %294
  %298 = load i8*, i8** %14, align 4, !dbg !2432
  %299 = call i32 @strcmp(i8* %298, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.258, i32 0, i32 0)) #13, !dbg !2433
  %300 = icmp ne i32 %299, 0, !dbg !2434
  br i1 %300, label %301, label %320, !dbg !2435

301:                                              ; preds = %297
  %302 = load %struct.dnsrr*, %struct.dnsrr** %19, align 4, !dbg !2436
  %303 = getelementptr inbounds %struct.dnsrr, %struct.dnsrr* %302, i32 0, i32 1, !dbg !2437
  %304 = load i8*, i8** %303, align 4, !dbg !2437
  %305 = load i8*, i8** %14, align 4, !dbg !2438
  %306 = load i8*, i8** %14, align 4, !dbg !2439
  %307 = call i32 @strlen(i8* %306) #10, !dbg !2440
  %308 = call i32 @strnrcasecmp(i8* %304, i8* %305, i32 %307), !dbg !2441
  %309 = icmp ne i32 %308, 0, !dbg !2442
  br i1 %309, label %310, label %320, !dbg !2443

310:                                              ; preds = %301
  %311 = load i32, i32* %24, align 4, !dbg !2444
  %312 = add nsw i32 %311, 1, !dbg !2444
  store i32 %312, i32* %24, align 4, !dbg !2444
  %313 = icmp ne i32 %311, 0, !dbg !2444
  br i1 %313, label %316, label %314, !dbg !2447

314:                                              ; preds = %310
  %315 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.355, i32 0, i32 0)), !dbg !2448
  br label %316, !dbg !2448

316:                                              ; preds = %314, %310
  %317 = load %struct.dnsrr*, %struct.dnsrr** %19, align 4, !dbg !2449
  %318 = getelementptr inbounds %struct.dnsrr, %struct.dnsrr* %317, i32 0, i32 8, !dbg !2450
  %319 = load %struct.dnsrr*, %struct.dnsrr** %318, align 4, !dbg !2450
  store %struct.dnsrr* %319, %struct.dnsrr** %19, align 4, !dbg !2451
  br label %265, !dbg !2452, !llvm.loop !2411

320:                                              ; preds = %301, %297, %294
  %321 = load %struct.dnssession*, %struct.dnssession** %18, align 4, !dbg !2453
  %322 = getelementptr inbounds %struct.dnssession, %struct.dnssession* %321, i32 0, i32 6, !dbg !2454
  %323 = load %struct.dnsrr*, %struct.dnsrr** %322, align 4, !dbg !2454
  store %struct.dnsrr* %323, %struct.dnsrr** %20, align 4, !dbg !2455
  br label %324, !dbg !2456

324:                                              ; preds = %340, %320
  %325 = load %struct.dnsrr*, %struct.dnsrr** %20, align 4, !dbg !2457
  %326 = icmp ne %struct.dnsrr* %325, null, !dbg !2458
  br i1 %326, label %327, label %344, !dbg !2456

327:                                              ; preds = %324
  %328 = load %struct.dnsrr*, %struct.dnsrr** %20, align 4, !dbg !2459
  %329 = getelementptr inbounds %struct.dnsrr, %struct.dnsrr* %328, i32 0, i32 0, !dbg !2462
  %330 = load i8*, i8** %329, align 4, !dbg !2462
  %331 = call i8* @printablename(i8* %330, i32 1), !dbg !2463
  %332 = load %struct.dnsrr*, %struct.dnsrr** %19, align 4, !dbg !2464
  %333 = getelementptr inbounds %struct.dnsrr, %struct.dnsrr* %332, i32 0, i32 7, !dbg !2465
  %334 = load i8*, i8** %333, align 4, !dbg !2465
  %335 = call i32 @strcmp(i8* %331, i8* %334) #13, !dbg !2466
  %336 = icmp eq i32 %335, 0, !dbg !2467
  br i1 %336, label %337, label %340, !dbg !2468

337:                                              ; preds = %327
  %338 = load i32, i32* %27, align 4, !dbg !2469
  %339 = add nsw i32 %338, 1, !dbg !2469
  store i32 %339, i32* %27, align 4, !dbg !2469
  br label %340, !dbg !2470

340:                                              ; preds = %337, %327
  %341 = load %struct.dnsrr*, %struct.dnsrr** %20, align 4, !dbg !2471
  %342 = getelementptr inbounds %struct.dnsrr, %struct.dnsrr* %341, i32 0, i32 8, !dbg !2472
  %343 = load %struct.dnsrr*, %struct.dnsrr** %342, align 4, !dbg !2472
  store %struct.dnsrr* %343, %struct.dnsrr** %20, align 4, !dbg !2473
  br label %324, !dbg !2456, !llvm.loop !2474

344:                                              ; preds = %324
  %345 = load %struct.dnssession*, %struct.dnssession** %18, align 4, !dbg !2476
  %346 = getelementptr inbounds %struct.dnssession, %struct.dnssession* %345, i32 0, i32 6, !dbg !2477
  %347 = load %struct.dnsrr*, %struct.dnsrr** %346, align 4, !dbg !2477
  store %struct.dnsrr* %347, %struct.dnsrr** %20, align 4, !dbg !2478
  br label %348, !dbg !2479

348:                                              ; preds = %665, %344
  br label %349, !dbg !2480

349:                                              ; preds = %363, %348
  %350 = load %struct.dnsrr*, %struct.dnsrr** %20, align 4, !dbg !2482
  %351 = icmp ne %struct.dnsrr* %350, null, !dbg !2483
  br i1 %351, label %352, label %367, !dbg !2480

352:                                              ; preds = %349
  %353 = load %struct.dnsrr*, %struct.dnsrr** %20, align 4, !dbg !2484
  %354 = getelementptr inbounds %struct.dnsrr, %struct.dnsrr* %353, i32 0, i32 0, !dbg !2487
  %355 = load i8*, i8** %354, align 4, !dbg !2487
  %356 = call i8* @printablename(i8* %355, i32 1), !dbg !2488
  %357 = load %struct.dnsrr*, %struct.dnsrr** %19, align 4, !dbg !2489
  %358 = getelementptr inbounds %struct.dnsrr, %struct.dnsrr* %357, i32 0, i32 7, !dbg !2490
  %359 = load i8*, i8** %358, align 4, !dbg !2490
  %360 = call i32 @strcmp(i8* %356, i8* %359) #13, !dbg !2491
  %361 = icmp eq i32 %360, 0, !dbg !2492
  br i1 %361, label %362, label %363, !dbg !2493

362:                                              ; preds = %352
  br label %367, !dbg !2494

363:                                              ; preds = %352
  %364 = load %struct.dnsrr*, %struct.dnsrr** %20, align 4, !dbg !2495
  %365 = getelementptr inbounds %struct.dnsrr, %struct.dnsrr* %364, i32 0, i32 8, !dbg !2496
  %366 = load %struct.dnsrr*, %struct.dnsrr** %365, align 4, !dbg !2496
  store %struct.dnsrr* %366, %struct.dnsrr** %20, align 4, !dbg !2497
  br label %349, !dbg !2480, !llvm.loop !2498

367:                                              ; preds = %362, %349
  %368 = getelementptr inbounds [1025 x i8], [1025 x i8]* %25, i32 0, i32 0, !dbg !2500
  %369 = load i8*, i8** %16, align 4, !dbg !2501
  %370 = load i32, i32* %17, align 4, !dbg !2502
  %371 = icmp eq i32 %370, 1, !dbg !2503
  %372 = zext i1 %371 to i64, !dbg !2502
  %373 = select i1 %371, i32 32, i32 124, !dbg !2502
  %374 = load i32, i32* %15, align 4, !dbg !2504
  %375 = icmp eq i32 %374, 0, !dbg !2505
  %376 = zext i1 %375 to i64, !dbg !2504
  %377 = select i1 %375, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.357, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.358, i32 0, i32 0), !dbg !2504
  %378 = call i32 (i8*, i8*, ...) @sprintf(i8* %368, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.356, i32 0, i32 0), i8* %369, i32 %373, i8* %377), !dbg !2506
  %379 = load %struct.dnsrr*, %struct.dnsrr** %20, align 4, !dbg !2507
  %380 = icmp ne %struct.dnsrr* %379, null, !dbg !2509
  br i1 %380, label %381, label %424, !dbg !2510

381:                                              ; preds = %367
  %382 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.359, i32 0, i32 0)), !dbg !2511
  %383 = getelementptr inbounds [1025 x i8], [1025 x i8]* %29, i32 0, i32 0, !dbg !2513
  %384 = load %struct.dnsrr*, %struct.dnsrr** %20, align 4, !dbg !2514
  %385 = getelementptr inbounds %struct.dnsrr, %struct.dnsrr* %384, i32 0, i32 0, !dbg !2515
  %386 = load i8*, i8** %385, align 4, !dbg !2515
  %387 = call i8* @printablename(i8* %386, i32 1), !dbg !2516
  %388 = call i8* @strcpy(i8* %383, i8* %387), !dbg !2517
  %389 = getelementptr inbounds [1025 x i8], [1025 x i8]* %28, i32 0, i32 0, !dbg !2518
  %390 = load %struct.dnsrr*, %struct.dnsrr** %20, align 4, !dbg !2519
  %391 = getelementptr inbounds %struct.dnsrr, %struct.dnsrr* %390, i32 0, i32 7, !dbg !2520
  %392 = load i8*, i8** %391, align 4, !dbg !2520
  %393 = call i8* @strcpy(i8* %389, i8* %392), !dbg !2521
  %394 = load i8*, i8** %10, align 4, !dbg !2522
  %395 = getelementptr inbounds [1025 x i8], [1025 x i8]* %28, i32 0, i32 0, !dbg !2523
  %396 = load %struct.dnsrr*, %struct.dnsrr** %20, align 4, !dbg !2524
  %397 = getelementptr inbounds %struct.dnsrr, %struct.dnsrr* %396, i32 0, i32 2, !dbg !2525
  %398 = load i16, i16* %397, align 4, !dbg !2525
  %399 = zext i16 %398 to i32, !dbg !2524
  %400 = icmp eq i32 %399, 28, !dbg !2526
  %401 = zext i1 %400 to i64, !dbg !2527
  %402 = select i1 %400, i32 1, i32 0, !dbg !2527
  %403 = getelementptr inbounds [1025 x i8], [1025 x i8]* %29, i32 0, i32 0, !dbg !2528
  %404 = load %struct.dnsrr*, %struct.dnsrr** %19, align 4, !dbg !2529
  %405 = getelementptr inbounds %struct.dnsrr, %struct.dnsrr* %404, i32 0, i32 1, !dbg !2530
  %406 = load i8*, i8** %405, align 4, !dbg !2530
  %407 = load i32, i32* %15, align 4, !dbg !2531
  %408 = add nsw i32 %407, 1, !dbg !2532
  %409 = getelementptr inbounds [1025 x i8], [1025 x i8]* %25, i32 0, i32 0, !dbg !2533
  %410 = load %struct.dnsrr*, %struct.dnsrr** %19, align 4, !dbg !2534
  %411 = getelementptr inbounds %struct.dnsrr, %struct.dnsrr* %410, i32 0, i32 8, !dbg !2535
  %412 = load %struct.dnsrr*, %struct.dnsrr** %411, align 4, !dbg !2535
  %413 = icmp eq %struct.dnsrr* %412, null, !dbg !2536
  br i1 %413, label %414, label %417, !dbg !2537

414:                                              ; preds = %381
  %415 = load i32, i32* %27, align 4, !dbg !2538
  %416 = icmp sle i32 %415, 1, !dbg !2539
  br label %417

417:                                              ; preds = %414, %381
  %418 = phi i1 [ false, %381 ], [ %416, %414 ], !dbg !2540
  %419 = zext i1 %418 to i64, !dbg !2541
  %420 = select i1 %418, i32 1, i32 0, !dbg !2541
  %421 = call i32 @create_session(i8* %394, i8* %395, i32 %402, i8* %403, i8* %406, i32 %408, i8* %409, i32 %420), !dbg !2542
  %422 = load i32, i32* %22, align 4, !dbg !2543
  %423 = add nsw i32 %422, %421, !dbg !2543
  store i32 %423, i32* %22, align 4, !dbg !2543
  br label %652, !dbg !2544

424:                                              ; preds = %367
  call void @llvm.dbg.declare(metadata i32* %30, metadata !2545, metadata !DIExpression()), !dbg !2547
  call void @llvm.dbg.declare(metadata i32* %31, metadata !2548, metadata !DIExpression()), !dbg !2549
  store i32 0, i32* %31, align 4, !dbg !2549
  %425 = getelementptr inbounds [1025 x i8], [1025 x i8]* %29, i32 0, i32 0, !dbg !2550
  %426 = load %struct.dnsrr*, %struct.dnsrr** %19, align 4, !dbg !2551
  %427 = getelementptr inbounds %struct.dnsrr, %struct.dnsrr* %426, i32 0, i32 7, !dbg !2552
  %428 = load i8*, i8** %427, align 4, !dbg !2552
  %429 = call i8* @strcpy(i8* %425, i8* %428), !dbg !2553
  store i32 0, i32* %30, align 4, !dbg !2554
  br label %430, !dbg !2556

430:                                              ; preds = %619, %424
  %431 = load i32, i32* %30, align 4, !dbg !2557
  %432 = icmp slt i32 %431, 2, !dbg !2559
  br i1 %432, label %433, label %622, !dbg !2560

433:                                              ; preds = %430
  call void @llvm.dbg.declare(metadata i32* %32, metadata !2561, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.declare(metadata i32* %33, metadata !2564, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.declare(metadata %struct.hostent** %34, metadata !2566, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.declare(metadata i8*** %35, metadata !2576, metadata !DIExpression()), !dbg !2577
  store i8** null, i8*** %35, align 4, !dbg !2577
  %434 = getelementptr inbounds [1025 x i8], [1025 x i8]* %29, i32 0, i32 0, !dbg !2578
  %435 = call %struct.hostent* @gethostbyname(i8* %434), !dbg !2578
  store %struct.hostent* %435, %struct.hostent** %34, align 4, !dbg !2579
  %436 = load %struct.hostent*, %struct.hostent** %34, align 4, !dbg !2580
  %437 = icmp eq %struct.hostent* %436, null, !dbg !2582
  br i1 %437, label %438, label %439, !dbg !2583

438:                                              ; preds = %433
  br label %619, !dbg !2584

439:                                              ; preds = %433
  store i32 0, i32* %32, align 4, !dbg !2585
  br label %440, !dbg !2586

440:                                              ; preds = %448, %439
  %441 = load %struct.hostent*, %struct.hostent** %34, align 4, !dbg !2587
  %442 = getelementptr inbounds %struct.hostent, %struct.hostent* %441, i32 0, i32 4, !dbg !2588
  %443 = load i8**, i8*** %442, align 4, !dbg !2588
  %444 = load i32, i32* %32, align 4, !dbg !2589
  %445 = getelementptr inbounds i8*, i8** %443, i32 %444, !dbg !2587
  %446 = load i8*, i8** %445, align 4, !dbg !2587
  %447 = icmp ne i8* %446, null, !dbg !2590
  br i1 %447, label %448, label %451, !dbg !2586

448:                                              ; preds = %440
  %449 = load i32, i32* %32, align 4, !dbg !2591
  %450 = add nsw i32 %449, 1, !dbg !2591
  store i32 %450, i32* %32, align 4, !dbg !2591
  br label %440, !dbg !2586, !llvm.loop !2592

451:                                              ; preds = %440
  %452 = load i32, i32* %32, align 4, !dbg !2593
  %453 = call noalias align 16 i8* @calloc(i32 %452, i32 4), !dbg !2594
  %454 = bitcast i8* %453 to i8**, !dbg !2595
  store i8** %454, i8*** %35, align 4, !dbg !2596
  store i32 0, i32* %33, align 4, !dbg !2597
  br label %455, !dbg !2599

455:                                              ; preds = %480, %451
  %456 = load i32, i32* %33, align 4, !dbg !2600
  %457 = load i32, i32* %32, align 4, !dbg !2602
  %458 = icmp slt i32 %456, %457, !dbg !2603
  br i1 %458, label %459, label %483, !dbg !2604

459:                                              ; preds = %455
  %460 = load %struct.hostent*, %struct.hostent** %34, align 4, !dbg !2605
  %461 = getelementptr inbounds %struct.hostent, %struct.hostent* %460, i32 0, i32 3, !dbg !2607
  %462 = load i32, i32* %461, align 4, !dbg !2607
  %463 = call noalias align 16 i8* @calloc(i32 1, i32 %462), !dbg !2608
  %464 = load i8**, i8*** %35, align 4, !dbg !2609
  %465 = load i32, i32* %33, align 4, !dbg !2610
  %466 = getelementptr inbounds i8*, i8** %464, i32 %465, !dbg !2609
  store i8* %463, i8** %466, align 4, !dbg !2611
  %467 = load i8**, i8*** %35, align 4, !dbg !2612
  %468 = load i32, i32* %33, align 4, !dbg !2613
  %469 = getelementptr inbounds i8*, i8** %467, i32 %468, !dbg !2612
  %470 = load i8*, i8** %469, align 4, !dbg !2612
  %471 = load %struct.hostent*, %struct.hostent** %34, align 4, !dbg !2614
  %472 = getelementptr inbounds %struct.hostent, %struct.hostent* %471, i32 0, i32 4, !dbg !2615
  %473 = load i8**, i8*** %472, align 4, !dbg !2615
  %474 = load i32, i32* %33, align 4, !dbg !2616
  %475 = getelementptr inbounds i8*, i8** %473, i32 %474, !dbg !2614
  %476 = load i8*, i8** %475, align 4, !dbg !2614
  %477 = load %struct.hostent*, %struct.hostent** %34, align 4, !dbg !2617
  %478 = getelementptr inbounds %struct.hostent, %struct.hostent* %477, i32 0, i32 3, !dbg !2618
  %479 = load i32, i32* %478, align 4, !dbg !2618
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %470, i8* align 1 %476, i32 %479, i1 false), !dbg !2619
  br label %480, !dbg !2620

480:                                              ; preds = %459
  %481 = load i32, i32* %33, align 4, !dbg !2621
  %482 = add nsw i32 %481, 1, !dbg !2621
  store i32 %482, i32* %33, align 4, !dbg !2621
  br label %455, !dbg !2622, !llvm.loop !2623

483:                                              ; preds = %455
  store i32 0, i32* %33, align 4, !dbg !2625
  br label %484, !dbg !2627

484:                                              ; preds = %615, %483
  %485 = load i32, i32* %33, align 4, !dbg !2628
  %486 = load i32, i32* %32, align 4, !dbg !2630
  %487 = icmp slt i32 %485, %486, !dbg !2631
  br i1 %487, label %488, label %618, !dbg !2632

488:                                              ; preds = %484
  %489 = load i32, i32* %30, align 4, !dbg !2633
  %490 = icmp eq i32 %489, 0, !dbg !2636
  br i1 %490, label %491, label %514, !dbg !2637

491:                                              ; preds = %488
  call void @llvm.dbg.declare(metadata i8** %36, metadata !2638, metadata !DIExpression()), !dbg !2640
  %492 = load i8**, i8*** %35, align 4, !dbg !2641
  %493 = load i32, i32* %33, align 4, !dbg !2642
  %494 = getelementptr inbounds i8*, i8** %492, i32 %493, !dbg !2641
  %495 = load i8*, i8** %494, align 4, !dbg !2641
  store i8* %495, i8** %36, align 4, !dbg !2640
  %496 = getelementptr inbounds [1025 x i8], [1025 x i8]* %28, i32 0, i32 0, !dbg !2643
  %497 = load i8*, i8** %36, align 4, !dbg !2644
  %498 = getelementptr inbounds i8, i8* %497, i32 0, !dbg !2644
  %499 = load i8, i8* %498, align 1, !dbg !2644
  %500 = zext i8 %499 to i32, !dbg !2644
  %501 = load i8*, i8** %36, align 4, !dbg !2645
  %502 = getelementptr inbounds i8, i8* %501, i32 1, !dbg !2645
  %503 = load i8, i8* %502, align 1, !dbg !2645
  %504 = zext i8 %503 to i32, !dbg !2645
  %505 = load i8*, i8** %36, align 4, !dbg !2646
  %506 = getelementptr inbounds i8, i8* %505, i32 2, !dbg !2646
  %507 = load i8, i8* %506, align 1, !dbg !2646
  %508 = zext i8 %507 to i32, !dbg !2646
  %509 = load i8*, i8** %36, align 4, !dbg !2647
  %510 = getelementptr inbounds i8, i8* %509, i32 3, !dbg !2647
  %511 = load i8, i8* %510, align 1, !dbg !2647
  %512 = zext i8 %511 to i32, !dbg !2647
  %513 = call i32 (i8*, i8*, ...) @sprintf(i8* %496, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.277, i32 0, i32 0), i32 %500, i32 %504, i32 %508, i32 %512), !dbg !2648
  store i32 0, i32* %12, align 4, !dbg !2649
  br label %585, !dbg !2650

514:                                              ; preds = %488
  call void @llvm.dbg.declare(metadata i8** %37, metadata !2651, metadata !DIExpression()), !dbg !2653
  %515 = load i8**, i8*** %35, align 4, !dbg !2654
  %516 = load i32, i32* %33, align 4, !dbg !2655
  %517 = getelementptr inbounds i8*, i8** %515, i32 %516, !dbg !2654
  %518 = load i8*, i8** %517, align 4, !dbg !2654
  store i8* %518, i8** %37, align 4, !dbg !2653
  %519 = getelementptr inbounds [1025 x i8], [1025 x i8]* %28, i32 0, i32 0, !dbg !2656
  %520 = load i8*, i8** %37, align 4, !dbg !2657
  %521 = getelementptr inbounds i8, i8* %520, i32 0, !dbg !2657
  %522 = load i8, i8* %521, align 1, !dbg !2657
  %523 = zext i8 %522 to i32, !dbg !2657
  %524 = load i8*, i8** %37, align 4, !dbg !2658
  %525 = getelementptr inbounds i8, i8* %524, i32 1, !dbg !2658
  %526 = load i8, i8* %525, align 1, !dbg !2658
  %527 = zext i8 %526 to i32, !dbg !2658
  %528 = load i8*, i8** %37, align 4, !dbg !2659
  %529 = getelementptr inbounds i8, i8* %528, i32 2, !dbg !2659
  %530 = load i8, i8* %529, align 1, !dbg !2659
  %531 = zext i8 %530 to i32, !dbg !2659
  %532 = load i8*, i8** %37, align 4, !dbg !2660
  %533 = getelementptr inbounds i8, i8* %532, i32 3, !dbg !2660
  %534 = load i8, i8* %533, align 1, !dbg !2660
  %535 = zext i8 %534 to i32, !dbg !2660
  %536 = load i8*, i8** %37, align 4, !dbg !2661
  %537 = getelementptr inbounds i8, i8* %536, i32 4, !dbg !2661
  %538 = load i8, i8* %537, align 1, !dbg !2661
  %539 = zext i8 %538 to i32, !dbg !2661
  %540 = load i8*, i8** %37, align 4, !dbg !2662
  %541 = getelementptr inbounds i8, i8* %540, i32 5, !dbg !2662
  %542 = load i8, i8* %541, align 1, !dbg !2662
  %543 = zext i8 %542 to i32, !dbg !2662
  %544 = load i8*, i8** %37, align 4, !dbg !2663
  %545 = getelementptr inbounds i8, i8* %544, i32 6, !dbg !2663
  %546 = load i8, i8* %545, align 1, !dbg !2663
  %547 = zext i8 %546 to i32, !dbg !2663
  %548 = load i8*, i8** %37, align 4, !dbg !2664
  %549 = getelementptr inbounds i8, i8* %548, i32 7, !dbg !2664
  %550 = load i8, i8* %549, align 1, !dbg !2664
  %551 = zext i8 %550 to i32, !dbg !2664
  %552 = load i8*, i8** %37, align 4, !dbg !2665
  %553 = getelementptr inbounds i8, i8* %552, i32 8, !dbg !2665
  %554 = load i8, i8* %553, align 1, !dbg !2665
  %555 = zext i8 %554 to i32, !dbg !2665
  %556 = load i8*, i8** %37, align 4, !dbg !2666
  %557 = getelementptr inbounds i8, i8* %556, i32 9, !dbg !2666
  %558 = load i8, i8* %557, align 1, !dbg !2666
  %559 = zext i8 %558 to i32, !dbg !2666
  %560 = load i8*, i8** %37, align 4, !dbg !2667
  %561 = getelementptr inbounds i8, i8* %560, i32 10, !dbg !2667
  %562 = load i8, i8* %561, align 1, !dbg !2667
  %563 = zext i8 %562 to i32, !dbg !2667
  %564 = load i8*, i8** %37, align 4, !dbg !2668
  %565 = getelementptr inbounds i8, i8* %564, i32 11, !dbg !2668
  %566 = load i8, i8* %565, align 1, !dbg !2668
  %567 = zext i8 %566 to i32, !dbg !2668
  %568 = load i8*, i8** %37, align 4, !dbg !2669
  %569 = getelementptr inbounds i8, i8* %568, i32 12, !dbg !2669
  %570 = load i8, i8* %569, align 1, !dbg !2669
  %571 = zext i8 %570 to i32, !dbg !2669
  %572 = load i8*, i8** %37, align 4, !dbg !2670
  %573 = getelementptr inbounds i8, i8* %572, i32 13, !dbg !2670
  %574 = load i8, i8* %573, align 1, !dbg !2670
  %575 = zext i8 %574 to i32, !dbg !2670
  %576 = load i8*, i8** %37, align 4, !dbg !2671
  %577 = getelementptr inbounds i8, i8* %576, i32 14, !dbg !2671
  %578 = load i8, i8* %577, align 1, !dbg !2671
  %579 = zext i8 %578 to i32, !dbg !2671
  %580 = load i8*, i8** %37, align 4, !dbg !2672
  %581 = getelementptr inbounds i8, i8* %580, i32 15, !dbg !2672
  %582 = load i8, i8* %581, align 1, !dbg !2672
  %583 = zext i8 %582 to i32, !dbg !2672
  %584 = call i32 (i8*, i8*, ...) @sprintf(i8* %519, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.360, i32 0, i32 0), i32 %523, i32 %527, i32 %531, i32 %535, i32 %539, i32 %543, i32 %547, i32 %551, i32 %555, i32 %559, i32 %563, i32 %567, i32 %571, i32 %575, i32 %579, i32 %583), !dbg !2673
  store i32 1, i32* %12, align 4, !dbg !2674
  br label %585

585:                                              ; preds = %514, %491
  %586 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.359, i32 0, i32 0)), !dbg !2675
  %587 = load i8*, i8** %10, align 4, !dbg !2676
  %588 = getelementptr inbounds [1025 x i8], [1025 x i8]* %28, i32 0, i32 0, !dbg !2677
  %589 = load i32, i32* %30, align 4, !dbg !2678
  %590 = icmp eq i32 %589, 1, !dbg !2679
  %591 = zext i1 %590 to i32, !dbg !2679
  %592 = getelementptr inbounds [1025 x i8], [1025 x i8]* %29, i32 0, i32 0, !dbg !2680
  %593 = load %struct.dnsrr*, %struct.dnsrr** %19, align 4, !dbg !2681
  %594 = getelementptr inbounds %struct.dnsrr, %struct.dnsrr* %593, i32 0, i32 1, !dbg !2682
  %595 = load i8*, i8** %594, align 4, !dbg !2682
  %596 = load i32, i32* %15, align 4, !dbg !2683
  %597 = add nsw i32 %596, 1, !dbg !2684
  %598 = getelementptr inbounds [1025 x i8], [1025 x i8]* %25, i32 0, i32 0, !dbg !2685
  %599 = load %struct.dnsrr*, %struct.dnsrr** %19, align 4, !dbg !2686
  %600 = getelementptr inbounds %struct.dnsrr, %struct.dnsrr* %599, i32 0, i32 8, !dbg !2687
  %601 = load %struct.dnsrr*, %struct.dnsrr** %600, align 4, !dbg !2687
  %602 = icmp eq %struct.dnsrr* %601, null, !dbg !2688
  br i1 %602, label %603, label %606, !dbg !2689

603:                                              ; preds = %585
  %604 = load i32, i32* %27, align 4, !dbg !2690
  %605 = icmp sle i32 %604, 1, !dbg !2691
  br label %606

606:                                              ; preds = %603, %585
  %607 = phi i1 [ false, %585 ], [ %605, %603 ], !dbg !2692
  %608 = zext i1 %607 to i64, !dbg !2693
  %609 = select i1 %607, i32 1, i32 0, !dbg !2693
  %610 = call i32 @create_session(i8* %587, i8* %588, i32 %591, i8* %592, i8* %595, i32 %597, i8* %598, i32 %609), !dbg !2694
  %611 = load i32, i32* %22, align 4, !dbg !2695
  %612 = add nsw i32 %611, %610, !dbg !2695
  store i32 %612, i32* %22, align 4, !dbg !2695
  %613 = load i32, i32* %31, align 4, !dbg !2696
  %614 = add nsw i32 %613, 1, !dbg !2696
  store i32 %614, i32* %31, align 4, !dbg !2696
  br label %615, !dbg !2697

615:                                              ; preds = %606
  %616 = load i32, i32* %33, align 4, !dbg !2698
  %617 = add nsw i32 %616, 1, !dbg !2698
  store i32 %617, i32* %33, align 4, !dbg !2698
  br label %484, !dbg !2699, !llvm.loop !2700

618:                                              ; preds = %484
  br label %619, !dbg !2702

619:                                              ; preds = %618, %438
  %620 = load i32, i32* %30, align 4, !dbg !2703
  %621 = add nsw i32 %620, 1, !dbg !2703
  store i32 %621, i32* %30, align 4, !dbg !2703
  br label %430, !dbg !2704, !llvm.loop !2705

622:                                              ; preds = %430
  %623 = load i32, i32* %31, align 4, !dbg !2707
  %624 = icmp eq i32 %623, 0, !dbg !2709
  br i1 %624, label %625, label %651, !dbg !2710

625:                                              ; preds = %622
  %626 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.359, i32 0, i32 0)), !dbg !2711
  %627 = getelementptr inbounds [1025 x i8], [1025 x i8]* %28, i32 0, i32 0, !dbg !2713
  store i8 0, i8* %627, align 16, !dbg !2714
  %628 = load i8*, i8** %10, align 4, !dbg !2715
  %629 = getelementptr inbounds [1025 x i8], [1025 x i8]* %28, i32 0, i32 0, !dbg !2716
  %630 = getelementptr inbounds [1025 x i8], [1025 x i8]* %29, i32 0, i32 0, !dbg !2717
  %631 = load %struct.dnsrr*, %struct.dnsrr** %19, align 4, !dbg !2718
  %632 = getelementptr inbounds %struct.dnsrr, %struct.dnsrr* %631, i32 0, i32 1, !dbg !2719
  %633 = load i8*, i8** %632, align 4, !dbg !2719
  %634 = load i32, i32* %15, align 4, !dbg !2720
  %635 = add nsw i32 %634, 1, !dbg !2721
  %636 = getelementptr inbounds [1025 x i8], [1025 x i8]* %25, i32 0, i32 0, !dbg !2722
  %637 = load %struct.dnsrr*, %struct.dnsrr** %19, align 4, !dbg !2723
  %638 = getelementptr inbounds %struct.dnsrr, %struct.dnsrr* %637, i32 0, i32 8, !dbg !2724
  %639 = load %struct.dnsrr*, %struct.dnsrr** %638, align 4, !dbg !2724
  %640 = icmp eq %struct.dnsrr* %639, null, !dbg !2725
  br i1 %640, label %641, label %644, !dbg !2726

641:                                              ; preds = %625
  %642 = load i32, i32* %27, align 4, !dbg !2727
  %643 = icmp sle i32 %642, 1, !dbg !2728
  br label %644

644:                                              ; preds = %641, %625
  %645 = phi i1 [ false, %625 ], [ %643, %641 ], !dbg !2729
  %646 = zext i1 %645 to i64, !dbg !2730
  %647 = select i1 %645, i32 1, i32 0, !dbg !2730
  %648 = call i32 @create_session(i8* %628, i8* %629, i32 0, i8* %630, i8* %633, i32 %635, i8* %636, i32 %647), !dbg !2731
  %649 = load i32, i32* %22, align 4, !dbg !2732
  %650 = add nsw i32 %649, %648, !dbg !2732
  store i32 %650, i32* %22, align 4, !dbg !2732
  br label %651, !dbg !2733

651:                                              ; preds = %644, %622
  br label %652

652:                                              ; preds = %651, %417
  %653 = load i32, i32* %27, align 4, !dbg !2734
  %654 = add nsw i32 %653, -1, !dbg !2734
  store i32 %654, i32* %27, align 4, !dbg !2734
  %655 = icmp sle i32 %654, 0, !dbg !2736
  br i1 %655, label %656, label %657, !dbg !2737

656:                                              ; preds = %652
  br label %668, !dbg !2738

657:                                              ; preds = %652
  %658 = load %struct.dnsrr*, %struct.dnsrr** %20, align 4, !dbg !2739
  %659 = icmp ne %struct.dnsrr* %658, null, !dbg !2741
  br i1 %659, label %660, label %664, !dbg !2742

660:                                              ; preds = %657
  %661 = load %struct.dnsrr*, %struct.dnsrr** %20, align 4, !dbg !2743
  %662 = getelementptr inbounds %struct.dnsrr, %struct.dnsrr* %661, i32 0, i32 8, !dbg !2744
  %663 = load %struct.dnsrr*, %struct.dnsrr** %662, align 4, !dbg !2744
  store %struct.dnsrr* %663, %struct.dnsrr** %20, align 4, !dbg !2745
  br label %664, !dbg !2746

664:                                              ; preds = %660, %657
  br label %665, !dbg !2747

665:                                              ; preds = %664
  %666 = load %struct.dnsrr*, %struct.dnsrr** %20, align 4, !dbg !2748
  %667 = icmp ne %struct.dnsrr* %666, null, !dbg !2749
  br i1 %667, label %348, label %668, !dbg !2747, !llvm.loop !2750

668:                                              ; preds = %665, %656
  %669 = load %struct.dnsrr*, %struct.dnsrr** %19, align 4, !dbg !2752
  %670 = getelementptr inbounds %struct.dnsrr, %struct.dnsrr* %669, i32 0, i32 8, !dbg !2753
  %671 = load %struct.dnsrr*, %struct.dnsrr** %670, align 4, !dbg !2753
  store %struct.dnsrr* %671, %struct.dnsrr** %19, align 4, !dbg !2754
  br label %265, !dbg !2391, !llvm.loop !2411

672:                                              ; preds = %265
  %673 = load i32, i32* @global_caching, align 4, !dbg !2755
  %674 = icmp ne i32 %673, 0, !dbg !2755
  br i1 %674, label %675, label %680, !dbg !2757

675:                                              ; preds = %672
  %676 = load i32, i32* %22, align 4, !dbg !2758
  %677 = icmp eq i32 %676, 0, !dbg !2759
  br i1 %677, label %678, label %680, !dbg !2760

678:                                              ; preds = %675
  %679 = load i8*, i8** %11, align 4, !dbg !2761
  call void @add_answer(i8* %679), !dbg !2762
  br label %680, !dbg !2762

680:                                              ; preds = %678, %675, %672
  %681 = load i8*, i8** %11, align 4, !dbg !2763
  call void @remove_busy(i8* %681), !dbg !2764
  %682 = load i32, i32* %22, align 4, !dbg !2765
  store i32 %682, i32* %9, align 4, !dbg !2766
  br label %683, !dbg !2766

683:                                              ; preds = %680, %259, %243, %152, %92, %81, %70, %62
  %684 = load i32, i32* %9, align 4, !dbg !2767
  ret i32 %684, !dbg !2767
}

declare i32 @fflush(%struct._IO_FILE*) #3

declare i32 @close(i32) #3

declare i32 @strcasecmp(i8*, i8*) #3

declare %struct.hostent* @gethostbyname(i8*) #3

; Function Attrs: noinline nounwind optnone
define void @usage() #0 !dbg !2768 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4, !dbg !2769
  %2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([629 x i8], [629 x i8]* @.str.361, i32 0, i32 0)), !dbg !2770
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4, !dbg !2771
  %4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.362, i32 0, i32 0)), !dbg !2772
  call void @exit(i32 1) #12, !dbg !2773
  unreachable, !dbg !2773
}

; Function Attrs: noinline nounwind optnone
define i32 @main1(i32 %0, i8** %1) #0 !dbg !2774 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 4
  %8 = alloca i8*, align 4
  %9 = alloca [1025 x i8], align 16
  %10 = alloca [1025 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.hostent*, align 4
  %14 = alloca i8*, align 4
  %15 = alloca i8*, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2777, metadata !DIExpression()), !dbg !2778
  store i8** %1, i8*** %5, align 4
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !2779, metadata !DIExpression()), !dbg !2780
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2781, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2783, metadata !DIExpression()), !dbg !2784
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.363, i32 0, i32 0), i8** %7, align 4, !dbg !2784
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2785, metadata !DIExpression()), !dbg !2786
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.364, i32 0, i32 0), i8** %8, align 4, !dbg !2786
  call void @llvm.dbg.declare(metadata [1025 x i8]* %9, metadata !2787, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.declare(metadata [1025 x i8]* %10, metadata !2789, metadata !DIExpression()), !dbg !2790
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2791, metadata !DIExpression()), !dbg !2792
  store i32 0, i32* %11, align 4, !dbg !2792
  call void @llvm.dbg.declare(metadata i32* %12, metadata !2793, metadata !DIExpression()), !dbg !2794
  store i32 0, i32* %12, align 4, !dbg !2794
  %16 = load i32, i32* getelementptr inbounds (%struct.__res_9_state, %struct.__res_9_state* @_res, i32 0, i32 2), align 8, !dbg !2795
  %17 = and i32 %16, 1, !dbg !2797
  %18 = icmp ne i32 %17, 0, !dbg !2797
  br i1 %18, label %20, label %19, !dbg !2798

19:                                               ; preds = %2
  call void bitcast (void (...)* @res_init to void ()*)(), !dbg !2799
  br label %20, !dbg !2799

20:                                               ; preds = %19, %2
  %21 = load i32, i32* getelementptr inbounds (%struct.__res_9_state, %struct.__res_9_state* @_res, i32 0, i32 3), align 4, !dbg !2800
  %22 = icmp sgt i32 %21, 0, !dbg !2802
  br i1 %22, label %23, label %29, !dbg !2803

23:                                               ; preds = %20
  %24 = load i32, i32* getelementptr inbounds (%struct.__res_9_state, %struct.__res_9_state* @_res, i32 0, i32 4, i32 0, i32 2, i32 0), align 4, !dbg !2804
  %25 = call i8* @inet_ntoa(i32 %24), !dbg !2804
  %26 = call align 16 i8* @strdup(i8* %25) #11, !dbg !2806
  store i8* %26, i8** %8, align 4, !dbg !2807
  %27 = load i8*, i8** %8, align 4, !dbg !2808
  %28 = call align 16 i8* @strdup(i8* %27) #11, !dbg !2809
  store i8* %28, i8** %7, align 4, !dbg !2810
  br label %29, !dbg !2811

29:                                               ; preds = %23, %20
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.365, i32 0, i32 0)), !dbg !2812
  br label %31, !dbg !2813

31:                                               ; preds = %127, %29
  %32 = load i32, i32* %4, align 4, !dbg !2814
  %33 = load i8**, i8*** %5, align 4, !dbg !2815
  %34 = call i32 @getopt(i32 %32, i8** %33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.366, i32 0, i32 0)), !dbg !2816
  store i32 %34, i32* %6, align 4, !dbg !2817
  %35 = icmp ne i32 %34, -1, !dbg !2818
  br i1 %35, label %36, label %128, !dbg !2813

36:                                               ; preds = %31
  %37 = load i32, i32* %6, align 4, !dbg !2819
  switch i32 %37, label %126 [
    i32 52, label %38
    i32 99, label %39
    i32 67, label %40
    i32 111, label %41
    i32 113, label %42
    i32 114, label %104
    i32 83, label %112
    i32 115, label %114
    i32 116, label %122
    i32 118, label %125
  ], !dbg !2821

38:                                               ; preds = %36
  store i32 1, i32* @global_noipv6, align 4, !dbg !2822
  br label %127, !dbg !2824

39:                                               ; preds = %36
  store i32 0, i32* @global_caching, align 4, !dbg !2825
  br label %127, !dbg !2826

40:                                               ; preds = %36
  store i32 1, i32* @global_negative_caching, align 4, !dbg !2827
  br label %127, !dbg !2828

41:                                               ; preds = %36
  store i32 1, i32* @global_overview, align 4, !dbg !2829
  br label %127, !dbg !2830

42:                                               ; preds = %36
  %43 = load i8*, i8** @optarg, align 4, !dbg !2831
  %44 = call i32 @atoi(i8* %43), !dbg !2833
  store i32 %44, i32* @global_querytype, align 4, !dbg !2834
  %45 = icmp slt i32 %44, 1, !dbg !2835
  br i1 %45, label %46, label %103, !dbg !2836

46:                                               ; preds = %42
  %47 = load i8*, i8** @optarg, align 4, !dbg !2837
  %48 = call i32 @strcmp(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8* %47) #13, !dbg !2837
  %49 = icmp eq i32 %48, 0, !dbg !2837
  br i1 %49, label %50, label %51, !dbg !2840

50:                                               ; preds = %46
  store i32 1, i32* @global_querytype, align 4, !dbg !2837
  br label %51, !dbg !2837

51:                                               ; preds = %50, %46
  %52 = load i8*, i8** @optarg, align 4, !dbg !2841
  %53 = call i32 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.367, i32 0, i32 0), i8* %52) #13, !dbg !2841
  %54 = icmp eq i32 %53, 0, !dbg !2841
  br i1 %54, label %55, label %56, !dbg !2843

55:                                               ; preds = %51
  store i32 28, i32* @global_querytype, align 4, !dbg !2841
  br label %56, !dbg !2841

56:                                               ; preds = %55, %51
  %57 = load i8*, i8** @optarg, align 4, !dbg !2844
  %58 = call i32 @strcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.368, i32 0, i32 0), i8* %57) #13, !dbg !2844
  %59 = icmp eq i32 %58, 0, !dbg !2844
  br i1 %59, label %60, label %61, !dbg !2846

60:                                               ; preds = %56
  store i32 28, i32* @global_querytype, align 4, !dbg !2844
  br label %61, !dbg !2844

61:                                               ; preds = %60, %56
  %62 = load i8*, i8** @optarg, align 4, !dbg !2847
  %63 = call i32 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.369, i32 0, i32 0), i8* %62) #13, !dbg !2847
  %64 = icmp eq i32 %63, 0, !dbg !2847
  br i1 %64, label %65, label %66, !dbg !2849

65:                                               ; preds = %61
  store i32 12, i32* @global_querytype, align 4, !dbg !2847
  br label %66, !dbg !2847

66:                                               ; preds = %65, %61
  %67 = load i8*, i8** @optarg, align 4, !dbg !2850
  %68 = call i32 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* %67) #13, !dbg !2850
  %69 = icmp eq i32 %68, 0, !dbg !2850
  br i1 %69, label %70, label %71, !dbg !2852

70:                                               ; preds = %66
  store i32 5, i32* @global_querytype, align 4, !dbg !2850
  br label %71, !dbg !2850

71:                                               ; preds = %70, %66
  %72 = load i8*, i8** @optarg, align 4, !dbg !2853
  %73 = call i32 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.370, i32 0, i32 0), i8* %72) #13, !dbg !2853
  %74 = icmp eq i32 %73, 0, !dbg !2853
  br i1 %74, label %75, label %76, !dbg !2855

75:                                               ; preds = %71
  store i32 13, i32* @global_querytype, align 4, !dbg !2853
  br label %76, !dbg !2853

76:                                               ; preds = %75, %71
  %77 = load i8*, i8** @optarg, align 4, !dbg !2856
  %78 = call i32 @strcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.371, i32 0, i32 0), i8* %77) #13, !dbg !2856
  %79 = icmp eq i32 %78, 0, !dbg !2856
  br i1 %79, label %80, label %81, !dbg !2858

80:                                               ; preds = %76
  store i32 15, i32* @global_querytype, align 4, !dbg !2856
  br label %81, !dbg !2856

81:                                               ; preds = %80, %76
  %82 = load i8*, i8** @optarg, align 4, !dbg !2859
  %83 = call i32 @strcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* %82) #13, !dbg !2859
  %84 = icmp eq i32 %83, 0, !dbg !2859
  br i1 %84, label %85, label %86, !dbg !2861

85:                                               ; preds = %81
  store i32 2, i32* @global_querytype, align 4, !dbg !2859
  br label %86, !dbg !2859

86:                                               ; preds = %85, %81
  %87 = load i8*, i8** @optarg, align 4, !dbg !2862
  %88 = call i32 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.372, i32 0, i32 0), i8* %87) #13, !dbg !2862
  %89 = icmp eq i32 %88, 0, !dbg !2862
  br i1 %89, label %90, label %91, !dbg !2864

90:                                               ; preds = %86
  store i32 16, i32* @global_querytype, align 4, !dbg !2862
  br label %91, !dbg !2862

91:                                               ; preds = %90, %86
  %92 = load i8*, i8** @optarg, align 4, !dbg !2865
  %93 = call i32 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* %92) #13, !dbg !2865
  %94 = icmp eq i32 %93, 0, !dbg !2865
  br i1 %94, label %95, label %96, !dbg !2867

95:                                               ; preds = %91
  store i32 6, i32* @global_querytype, align 4, !dbg !2865
  br label %96, !dbg !2865

96:                                               ; preds = %95, %91
  %97 = load i32, i32* @global_querytype, align 4, !dbg !2868
  %98 = icmp slt i32 %97, 1, !dbg !2870
  br i1 %98, label %99, label %102, !dbg !2871

99:                                               ; preds = %96
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4, !dbg !2872
  %101 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %100, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.373, i32 0, i32 0)), !dbg !2874
  store i32 1, i32* @global_querytype, align 4, !dbg !2875
  br label %102, !dbg !2876

102:                                              ; preds = %99, %96
  br label %103, !dbg !2877

103:                                              ; preds = %102, %42
  br label %127, !dbg !2878

104:                                              ; preds = %36
  %105 = load i8*, i8** @optarg, align 4, !dbg !2879
  %106 = call i32 @atoi(i8* %105), !dbg !2881
  store i32 %106, i32* @global_retries, align 4, !dbg !2882
  %107 = icmp slt i32 %106, 1, !dbg !2883
  br i1 %107, label %108, label %111, !dbg !2884

108:                                              ; preds = %104
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4, !dbg !2885
  %110 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %109, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.374, i32 0, i32 0)), !dbg !2887
  store i32 3, i32* @global_retries, align 4, !dbg !2888
  br label %111, !dbg !2889

111:                                              ; preds = %108, %104
  br label %127, !dbg !2890

112:                                              ; preds = %36
  %113 = load i8*, i8** @optarg, align 4, !dbg !2891
  store i8* %113, i8** @global_source_address, align 4, !dbg !2892
  br label %127, !dbg !2893

114:                                              ; preds = %36
  %115 = load i8*, i8** @optarg, align 4, !dbg !2894
  store i8* %115, i8** %7, align 4, !dbg !2895
  %116 = load i8*, i8** %7, align 4, !dbg !2896
  %117 = call i32 @strcmp(i8* %116, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.258, i32 0, i32 0)) #13, !dbg !2898
  %118 = icmp eq i32 %117, 0, !dbg !2899
  br i1 %118, label %119, label %121, !dbg !2900

119:                                              ; preds = %114
  %120 = call align 16 i8* @strdup(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.375, i32 0, i32 0)) #11, !dbg !2901
  store i8* %120, i8** %7, align 4, !dbg !2903
  store i32 1, i32* %11, align 4, !dbg !2904
  br label %121, !dbg !2905

121:                                              ; preds = %119, %114
  br label %127, !dbg !2906

122:                                              ; preds = %36
  %123 = load i8*, i8** @optarg, align 4, !dbg !2907
  %124 = call i32 @atoi(i8* %123), !dbg !2908
  store i32 %124, i32* @global_timeout, align 4, !dbg !2909
  br label %127, !dbg !2910

125:                                              ; preds = %36
  store i32 1, i32* @verbose, align 4, !dbg !2911
  br label %127, !dbg !2912

126:                                              ; preds = %36
  call void @usage(), !dbg !2913
  br label %127, !dbg !2914

127:                                              ; preds = %126, %125, %122, %121, %112, %111, %103, %41, %40, %39, %38
  br label %31, !dbg !2813, !llvm.loop !2915

128:                                              ; preds = %31
  %129 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.376, i32 0, i32 0)), !dbg !2917
  %130 = load i32, i32* @optind, align 4, !dbg !2918
  %131 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.377, i32 0, i32 0), i32 %130), !dbg !2919
  %132 = load i32, i32* @optind, align 4, !dbg !2920
  %133 = load i32, i32* %4, align 4, !dbg !2921
  %134 = sub nsw i32 %133, %132, !dbg !2921
  store i32 %134, i32* %4, align 4, !dbg !2921
  %135 = load i32, i32* @optind, align 4, !dbg !2922
  %136 = load i8**, i8*** %5, align 4, !dbg !2923
  %137 = getelementptr inbounds i8*, i8** %136, i32 %135, !dbg !2923
  store i8** %137, i8*** %5, align 4, !dbg !2923
  %138 = load i8**, i8*** %5, align 4, !dbg !2924
  %139 = getelementptr inbounds i8*, i8** %138, i32 0, !dbg !2924
  %140 = load i8*, i8** %139, align 4, !dbg !2924
  %141 = icmp eq i8* %140, null, !dbg !2926
  br i1 %141, label %142, label %143, !dbg !2927

142:                                              ; preds = %128
  call void @usage(), !dbg !2928
  br label %143, !dbg !2928

143:                                              ; preds = %142, %128
  %144 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.378, i32 0, i32 0)), !dbg !2929
  %145 = getelementptr inbounds [1025 x i8], [1025 x i8]* %10, i32 0, i32 0, !dbg !2930
  %146 = load i8**, i8*** %5, align 4, !dbg !2931
  %147 = getelementptr inbounds i8*, i8** %146, i32 0, !dbg !2931
  %148 = load i8*, i8** %147, align 4, !dbg !2931
  call void @"overflow$0"(i8* %145, i8* %148)
  %149 = call i8* @strcpy(i8* %145, i8* %148), !dbg !2932
  %150 = load i8**, i8*** %5, align 4, !dbg !2933
  %151 = getelementptr inbounds i8*, i8** %150, i32 0, !dbg !2933
  %152 = load i8*, i8** %151, align 4, !dbg !2933
  %153 = call i32 @strlen(i8* %152) #10, !dbg !2935
  %154 = sub i32 %153, 1, !dbg !2936
  %155 = getelementptr inbounds [1025 x i8], [1025 x i8]* %10, i32 0, i32 %154, !dbg !2937
  %156 = load i8, i8* %155, align 1, !dbg !2937
  %157 = sext i8 %156 to i32, !dbg !2937
  %158 = icmp eq i32 %157, 46, !dbg !2938
  br i1 %158, label %159, label %166, !dbg !2939

159:                                              ; preds = %143
  %160 = load i8**, i8*** %5, align 4, !dbg !2940
  %161 = getelementptr inbounds i8*, i8** %160, i32 0, !dbg !2940
  %162 = load i8*, i8** %161, align 4, !dbg !2940
  %163 = call i32 @strlen(i8* %162) #10, !dbg !2941
  %164 = sub i32 %163, 1, !dbg !2942
  %165 = getelementptr inbounds [1025 x i8], [1025 x i8]* %10, i32 0, i32 %164, !dbg !2943
  store i8 0, i8* %165, align 1, !dbg !2944
  br label %166, !dbg !2943

166:                                              ; preds = %159, %143
  %167 = getelementptr inbounds [1025 x i8], [1025 x i8]* %10, i32 0, i32 0, !dbg !2945
  %168 = load i32, i32* @global_querytype, align 4, !dbg !2946
  %169 = getelementptr inbounds [256 x i8*], [256 x i8*]* @rr_types, i32 0, i32 %168, !dbg !2947
  %170 = load i8*, i8** %169, align 4, !dbg !2947
  %171 = load i8*, i8** %7, align 4, !dbg !2948
  %172 = load i32, i32* @global_retries, align 4, !dbg !2949
  %173 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.379, i32 0, i32 0), i8* %167, i8* %170, i8* %171, i32 %172), !dbg !2950
  %174 = call i64 @time(i64* null), !dbg !2951
  %175 = trunc i64 %174 to i32, !dbg !2951
  call void @srandom(i32 %175), !dbg !2952
  call void @llvm.dbg.declare(metadata %struct.hostent** %13, metadata !2953, metadata !DIExpression()), !dbg !2955
  store %struct.hostent* null, %struct.hostent** %13, align 4, !dbg !2955
  %176 = load i8*, i8** %7, align 4, !dbg !2956
  %177 = call %struct.hostent* @gethostbyname(i8* %176), !dbg !2956
  store %struct.hostent* %177, %struct.hostent** %13, align 4, !dbg !2957
  %178 = load %struct.hostent*, %struct.hostent** %13, align 4, !dbg !2958
  %179 = icmp eq %struct.hostent* %178, null, !dbg !2960
  br i1 %179, label %183, label %180, !dbg !2961

180:                                              ; preds = %166
  %181 = load i32, i32* @global_noipv6, align 4, !dbg !2962
  %182 = icmp ne i32 %181, 0, !dbg !2962
  br i1 %182, label %183, label %186, !dbg !2963

183:                                              ; preds = %180, %166
  %184 = load i8*, i8** %7, align 4, !dbg !2964
  %185 = call %struct.hostent* @gethostbyname(i8* %184), !dbg !2964
  store %struct.hostent* %185, %struct.hostent** %13, align 4, !dbg !2965
  br label %186, !dbg !2966

186:                                              ; preds = %183, %180
  %187 = load %struct.hostent*, %struct.hostent** %13, align 4, !dbg !2967
  %188 = icmp eq %struct.hostent* %187, null, !dbg !2969
  br i1 %188, label %189, label %193, !dbg !2970

189:                                              ; preds = %186
  %190 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4, !dbg !2971
  %191 = load i8*, i8** %7, align 4, !dbg !2973
  %192 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %190, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.380, i32 0, i32 0), i8* %191), !dbg !2974
  store i32 1, i32* %3, align 4, !dbg !2975
  br label %310, !dbg !2975

193:                                              ; preds = %186
  %194 = load %struct.hostent*, %struct.hostent** %13, align 4, !dbg !2976
  %195 = getelementptr inbounds %struct.hostent, %struct.hostent* %194, i32 0, i32 2, !dbg !2978
  %196 = load i32, i32* %195, align 4, !dbg !2978
  %197 = icmp eq i32 %196, 1, !dbg !2979
  br i1 %197, label %198, label %222, !dbg !2980

198:                                              ; preds = %193
  call void @llvm.dbg.declare(metadata i8** %14, metadata !2981, metadata !DIExpression()), !dbg !2983
  %199 = load %struct.hostent*, %struct.hostent** %13, align 4, !dbg !2984
  %200 = getelementptr inbounds %struct.hostent, %struct.hostent* %199, i32 0, i32 4, !dbg !2985
  %201 = load i8**, i8*** %200, align 4, !dbg !2985
  %202 = getelementptr inbounds i8*, i8** %201, i32 0, !dbg !2984
  %203 = load i8*, i8** %202, align 4, !dbg !2984
  store i8* %203, i8** %14, align 4, !dbg !2983
  %204 = getelementptr inbounds [1025 x i8], [1025 x i8]* %9, i32 0, i32 0, !dbg !2986
  %205 = load i8*, i8** %14, align 4, !dbg !2987
  %206 = getelementptr inbounds i8, i8* %205, i32 0, !dbg !2987
  %207 = load i8, i8* %206, align 1, !dbg !2987
  %208 = zext i8 %207 to i32, !dbg !2987
  %209 = load i8*, i8** %14, align 4, !dbg !2988
  %210 = getelementptr inbounds i8, i8* %209, i32 1, !dbg !2988
  %211 = load i8, i8* %210, align 1, !dbg !2988
  %212 = zext i8 %211 to i32, !dbg !2988
  %213 = load i8*, i8** %14, align 4, !dbg !2989
  %214 = getelementptr inbounds i8, i8* %213, i32 2, !dbg !2989
  %215 = load i8, i8* %214, align 1, !dbg !2989
  %216 = zext i8 %215 to i32, !dbg !2989
  %217 = load i8*, i8** %14, align 4, !dbg !2990
  %218 = getelementptr inbounds i8, i8* %217, i32 3, !dbg !2990
  %219 = load i8, i8* %218, align 1, !dbg !2990
  %220 = zext i8 %219 to i32, !dbg !2990
  %221 = call i32 (i8*, i8*, ...) @sprintf(i8* %204, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.277, i32 0, i32 0), i32 %208, i32 %212, i32 %216, i32 %220), !dbg !2991
  store i32 0, i32* %12, align 4, !dbg !2992
  br label %294, !dbg !2993

222:                                              ; preds = %193
  call void @llvm.dbg.declare(metadata i8** %15, metadata !2994, metadata !DIExpression()), !dbg !2996
  %223 = load %struct.hostent*, %struct.hostent** %13, align 4, !dbg !2997
  %224 = getelementptr inbounds %struct.hostent, %struct.hostent* %223, i32 0, i32 4, !dbg !2998
  %225 = load i8**, i8*** %224, align 4, !dbg !2998
  %226 = getelementptr inbounds i8*, i8** %225, i32 0, !dbg !2997
  %227 = load i8*, i8** %226, align 4, !dbg !2997
  store i8* %227, i8** %15, align 4, !dbg !2996
  %228 = getelementptr inbounds [1025 x i8], [1025 x i8]* %9, i32 0, i32 0, !dbg !2999
  %229 = load i8*, i8** %15, align 4, !dbg !3000
  %230 = getelementptr inbounds i8, i8* %229, i32 0, !dbg !3000
  %231 = load i8, i8* %230, align 1, !dbg !3000
  %232 = zext i8 %231 to i32, !dbg !3000
  %233 = load i8*, i8** %15, align 4, !dbg !3001
  %234 = getelementptr inbounds i8, i8* %233, i32 1, !dbg !3001
  %235 = load i8, i8* %234, align 1, !dbg !3001
  %236 = zext i8 %235 to i32, !dbg !3001
  %237 = load i8*, i8** %15, align 4, !dbg !3002
  %238 = getelementptr inbounds i8, i8* %237, i32 2, !dbg !3002
  %239 = load i8, i8* %238, align 1, !dbg !3002
  %240 = zext i8 %239 to i32, !dbg !3002
  %241 = load i8*, i8** %15, align 4, !dbg !3003
  %242 = getelementptr inbounds i8, i8* %241, i32 3, !dbg !3003
  %243 = load i8, i8* %242, align 1, !dbg !3003
  %244 = zext i8 %243 to i32, !dbg !3003
  %245 = load i8*, i8** %15, align 4, !dbg !3004
  %246 = getelementptr inbounds i8, i8* %245, i32 4, !dbg !3004
  %247 = load i8, i8* %246, align 1, !dbg !3004
  %248 = zext i8 %247 to i32, !dbg !3004
  %249 = load i8*, i8** %15, align 4, !dbg !3005
  %250 = getelementptr inbounds i8, i8* %249, i32 5, !dbg !3005
  %251 = load i8, i8* %250, align 1, !dbg !3005
  %252 = zext i8 %251 to i32, !dbg !3005
  %253 = load i8*, i8** %15, align 4, !dbg !3006
  %254 = getelementptr inbounds i8, i8* %253, i32 6, !dbg !3006
  %255 = load i8, i8* %254, align 1, !dbg !3006
  %256 = zext i8 %255 to i32, !dbg !3006
  %257 = load i8*, i8** %15, align 4, !dbg !3007
  %258 = getelementptr inbounds i8, i8* %257, i32 7, !dbg !3007
  %259 = load i8, i8* %258, align 1, !dbg !3007
  %260 = zext i8 %259 to i32, !dbg !3007
  %261 = load i8*, i8** %15, align 4, !dbg !3008
  %262 = getelementptr inbounds i8, i8* %261, i32 8, !dbg !3008
  %263 = load i8, i8* %262, align 1, !dbg !3008
  %264 = zext i8 %263 to i32, !dbg !3008
  %265 = load i8*, i8** %15, align 4, !dbg !3009
  %266 = getelementptr inbounds i8, i8* %265, i32 9, !dbg !3009
  %267 = load i8, i8* %266, align 1, !dbg !3009
  %268 = zext i8 %267 to i32, !dbg !3009
  %269 = load i8*, i8** %15, align 4, !dbg !3010
  %270 = getelementptr inbounds i8, i8* %269, i32 10, !dbg !3010
  %271 = load i8, i8* %270, align 1, !dbg !3010
  %272 = zext i8 %271 to i32, !dbg !3010
  %273 = load i8*, i8** %15, align 4, !dbg !3011
  %274 = getelementptr inbounds i8, i8* %273, i32 11, !dbg !3011
  %275 = load i8, i8* %274, align 1, !dbg !3011
  %276 = zext i8 %275 to i32, !dbg !3011
  %277 = load i8*, i8** %15, align 4, !dbg !3012
  %278 = getelementptr inbounds i8, i8* %277, i32 12, !dbg !3012
  %279 = load i8, i8* %278, align 1, !dbg !3012
  %280 = zext i8 %279 to i32, !dbg !3012
  %281 = load i8*, i8** %15, align 4, !dbg !3013
  %282 = getelementptr inbounds i8, i8* %281, i32 13, !dbg !3013
  %283 = load i8, i8* %282, align 1, !dbg !3013
  %284 = zext i8 %283 to i32, !dbg !3013
  %285 = load i8*, i8** %15, align 4, !dbg !3014
  %286 = getelementptr inbounds i8, i8* %285, i32 14, !dbg !3014
  %287 = load i8, i8* %286, align 1, !dbg !3014
  %288 = zext i8 %287 to i32, !dbg !3014
  %289 = load i8*, i8** %15, align 4, !dbg !3015
  %290 = getelementptr inbounds i8, i8* %289, i32 15, !dbg !3015
  %291 = load i8, i8* %290, align 1, !dbg !3015
  %292 = zext i8 %291 to i32, !dbg !3015
  %293 = call i32 (i8*, i8*, ...) @sprintf(i8* %228, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.360, i32 0, i32 0), i32 %232, i32 %236, i32 %240, i32 %244, i32 %248, i32 %252, i32 %256, i32 %260, i32 %264, i32 %268, i32 %272, i32 %276, i32 %280, i32 %284, i32 %288, i32 %292), !dbg !3016
  store i32 1, i32* %12, align 4, !dbg !3017
  br label %294

294:                                              ; preds = %222, %198
  %295 = getelementptr inbounds [1025 x i8], [1025 x i8]* %10, i32 0, i32 0, !dbg !3018
  %296 = getelementptr inbounds [1025 x i8], [1025 x i8]* %9, i32 0, i32 0, !dbg !3019
  %297 = load i32, i32* %12, align 4, !dbg !3020
  %298 = load i8*, i8** %7, align 4, !dbg !3021
  %299 = load i32, i32* %11, align 4, !dbg !3022
  %300 = icmp eq i32 %299, 0, !dbg !3023
  %301 = zext i1 %300 to i64, !dbg !3022
  %302 = select i1 %300, i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.258, i32 0, i32 0), !dbg !3022
  %303 = call i32 @create_session(i8* %295, i8* %296, i32 %297, i8* %298, i8* %302, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.357, i32 0, i32 0), i32 1), !dbg !3024
  %304 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.359, i32 0, i32 0)), !dbg !3025
  %305 = load i32, i32* @global_overview, align 4, !dbg !3026
  %306 = icmp ne i32 %305, 0, !dbg !3028
  br i1 %306, label %307, label %309, !dbg !3029

307:                                              ; preds = %294
  %308 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.359, i32 0, i32 0)), !dbg !3030
  call void @display_arecords(), !dbg !3032
  br label %309, !dbg !3033

309:                                              ; preds = %307, %294
  store i32 0, i32* %3, align 4, !dbg !3034
  br label %310, !dbg !3034

310:                                              ; preds = %309, %189
  %311 = load i32, i32* %3, align 4, !dbg !3035
  ret i32 %311, !dbg !3035
}

declare void @res_init(...) #7

declare i32 @getopt(i32, i8**, i8*) #3

declare i32 @atoi(i8*) #3

declare void @srandom(i32) #3

declare i64 @time(i64*) #3

; Function Attrs: noinline nounwind optnone
define i32 @main() #0 !dbg !3036 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 4
  %3 = alloca [3 x i8*], align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3039, metadata !DIExpression()), !dbg !3040
  store i32 3, i32* %1, align 4, !dbg !3040
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3041, metadata !DIExpression()), !dbg !3042
  store i8* getelementptr inbounds ([1201 x i8], [1201 x i8]* @.str.381, i32 0, i32 0), i8** %2, align 4, !dbg !3043
  call void @llvm.dbg.declare(metadata [3 x i8*]* %3, metadata !3044, metadata !DIExpression()), !dbg !3048
  %4 = getelementptr inbounds [3 x i8*], [3 x i8*]* %3, i32 0, i32 0, !dbg !3049
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.382, i32 0, i32 0), i8** %4, align 4, !dbg !3049
  %5 = getelementptr inbounds i8*, i8** %4, i32 1, !dbg !3049
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.383, i32 0, i32 0), i8** %5, align 4, !dbg !3049
  %6 = getelementptr inbounds i8*, i8** %5, i32 1, !dbg !3049
  %7 = load i8*, i8** %2, align 4, !dbg !3050
  store i8* %7, i8** %6, align 4, !dbg !3049
  %8 = load i32, i32* %1, align 4, !dbg !3051
  %9 = getelementptr inbounds [3 x i8*], [3 x i8*]* %3, i32 0, i32 0, !dbg !3052
  %10 = call i32 @main1(i32 %8, i8** %9), !dbg !3053
  ret i32 0, !dbg !3054
}

declare void @"overflow$0"(i8*, i8*)

attributes #0 = { noinline nounwind optnone "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nocallback nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #7 = { "frame-pointer"="none" "no-prototype" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #8 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #9 = { nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #10 = { nocallback nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { noreturn }
attributes #13 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!166, !167, !168}
!llvm.ident = !{!169}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "verbose", scope: !2, file: !10, line: 118, type: !73, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 13.0.0 (https://github.com/llvm/llvm-project fd1d8c2f04dde23bee0fb3a7d069a9b1046da979)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !110, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "testcases/<stdin>", directory: "/home/zzhzz/ISSTA23-Artifacts/parser")
!4 = !{}
!5 = !{!6, !8, !13, !25, !48, !55, !14, !56, !67, !77, !82, !87, !109}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 32)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 32)
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dnsrr", file: !10, line: 484, size: 256, elements: !11)
!10 = !DIFile(filename: "testcases/dnstracer.c", directory: "/home/zzhzz/ISSTA23-Artifacts/parser")
!11 = !{!12, !15, !16, !18, !19, !21, !22, !23, !24}
!12 = !DIDerivedType(tag: DW_TAG_member, name: "domainname", scope: !9, file: !10, line: 485, baseType: !13, size: 32)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 32)
!14 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "domainname_string", scope: !9, file: !10, line: 486, baseType: !13, size: 32, offset: 32)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !9, file: !10, line: 487, baseType: !17, size: 16, offset: 64)
!17 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !9, file: !10, line: 488, baseType: !17, size: 16, offset: 80)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "ttl", scope: !9, file: !10, line: 489, baseType: !20, size: 32, offset: 96)
!20 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "datalength", scope: !9, file: !10, line: 490, baseType: !17, size: 16, offset: 128)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !9, file: !10, line: 491, baseType: !13, size: 32, offset: 160)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "data_string", scope: !9, file: !10, line: 492, baseType: !13, size: 32, offset: 192)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !9, file: !10, line: 493, baseType: !8, size: 32, offset: 224)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 32)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dnsheader", file: !10, line: 445, size: 96, elements: !27)
!27 = !{!28, !29, !44, !45, !46, !47}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "identification", scope: !26, file: !10, line: 446, baseType: !17, size: 16)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !26, file: !10, line: 470, baseType: !30, size: 16, offset: 16)
!30 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !26, file: !10, line: 447, size: 16, elements: !31)
!31 = !{!32, !33}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !30, file: !10, line: 448, baseType: !17, size: 16)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "bit", scope: !30, file: !10, line: 469, baseType: !34, size: 16)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bit", file: !10, line: 449, size: 16, elements: !35)
!35 = !{!36, !37, !38, !39, !40, !41, !42, !43}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "rcode", scope: !34, file: !10, line: 460, baseType: !14, size: 4, flags: DIFlagBitField, extraData: i64 0)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "zero", scope: !34, file: !10, line: 461, baseType: !14, size: 3, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "ra", scope: !34, file: !10, line: 462, baseType: !14, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "rd", scope: !34, file: !10, line: 463, baseType: !14, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "tc", scope: !34, file: !10, line: 464, baseType: !14, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "aa", scope: !34, file: !10, line: 465, baseType: !14, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !34, file: !10, line: 466, baseType: !14, size: 4, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "qr", scope: !34, file: !10, line: 467, baseType: !14, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "nquestions", scope: !26, file: !10, line: 471, baseType: !17, size: 16, offset: 32)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "nanswerRR", scope: !26, file: !10, line: 472, baseType: !17, size: 16, offset: 48)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "nauthorityRR", scope: !26, file: !10, line: 473, baseType: !17, size: 16, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "nadditionalRR", scope: !26, file: !10, line: 474, baseType: !17, size: 16, offset: 80)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 32)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dnsquestion", file: !10, line: 477, size: 96, elements: !50)
!50 = !{!51, !52, !53, !54}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "querylength", scope: !49, file: !10, line: 478, baseType: !20, size: 32)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "query", scope: !49, file: !10, line: 479, baseType: !13, size: 32, offset: 32)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !49, file: !10, line: 480, baseType: !17, size: 16, offset: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !49, file: !10, line: 481, baseType: !17, size: 16, offset: 80)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 32)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !58, line: 9, size: 128, elements: !59)
!58 = !DIFile(filename: "/data/wasi-sdk/build/wasi-sdk-14.0/share/wasi-sysroot/include/__struct_sockaddr.h", directory: "")
!59 = !{!60, !63}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !57, file: !58, line: 10, baseType: !61, size: 16, align: 128)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !62, line: 4, baseType: !17)
!62 = !DIFile(filename: "/data/wasi-sdk/build/wasi-sdk-14.0/share/wasi-sysroot/include/__typedef_sa_family_t.h", directory: "")
!63 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !57, file: !58, line: 11, baseType: !64, offset: 16)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 0)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 32)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arecord", file: !10, line: 401, size: 192, elements: !69)
!69 = !{!70, !71, !72, !74, !75, !76}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "server_name", scope: !68, file: !10, line: 402, baseType: !6, size: 32)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "server_ip", scope: !68, file: !10, line: 403, baseType: !6, size: 32, offset: 32)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !68, file: !10, line: 404, baseType: !73, size: 32, offset: 64)
!73 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "rr_name", scope: !68, file: !10, line: 405, baseType: !6, size: 32, offset: 96)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "rr_data", scope: !68, file: !10, line: 406, baseType: !6, size: 32, offset: 128)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !68, file: !10, line: 407, baseType: !67, size: 32, offset: 160)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 32)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "answer", file: !10, line: 415, size: 64, elements: !79)
!79 = !{!80, !81}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !78, file: !10, line: 416, baseType: !6, size: 32)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !78, file: !10, line: 417, baseType: !77, size: 32, offset: 32)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 32)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "busy", file: !10, line: 410, size: 64, elements: !84)
!84 = !{!85, !86}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !83, file: !10, line: 411, baseType: !6, size: 32)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !83, file: !10, line: 412, baseType: !82, size: 32, offset: 32)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 32)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dnssession", file: !10, line: 420, size: 608, elements: !89)
!89 = !{!90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "send_header", scope: !88, file: !10, line: 421, baseType: !25, size: 32)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "send_question", scope: !88, file: !10, line: 422, baseType: !48, size: 32, offset: 32)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "recv_header", scope: !88, file: !10, line: 423, baseType: !25, size: 32, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "recv_question", scope: !88, file: !10, line: 424, baseType: !48, size: 32, offset: 96)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "answer", scope: !88, file: !10, line: 425, baseType: !8, size: 32, offset: 128)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "authority", scope: !88, file: !10, line: 426, baseType: !8, size: 32, offset: 160)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "additional", scope: !88, file: !10, line: 427, baseType: !8, size: 32, offset: 192)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !88, file: !10, line: 428, baseType: !87, size: 32, offset: 224)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !88, file: !10, line: 430, baseType: !6, size: 32, offset: 256)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !88, file: !10, line: 431, baseType: !6, size: 32, offset: 288)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "recv_len", scope: !88, file: !10, line: 433, baseType: !73, size: 32, offset: 320)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "recv_pkt", scope: !88, file: !10, line: 434, baseType: !6, size: 32, offset: 352)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "recv_pkt_header", scope: !88, file: !10, line: 435, baseType: !6, size: 32, offset: 384)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "recv_pkt_question", scope: !88, file: !10, line: 436, baseType: !6, size: 32, offset: 416)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "recv_pkt_answer", scope: !88, file: !10, line: 437, baseType: !6, size: 32, offset: 448)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "recv_pkt_authority", scope: !88, file: !10, line: 438, baseType: !6, size: 32, offset: 480)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "recv_pkt_additional", scope: !88, file: !10, line: 439, baseType: !6, size: 32, offset: 512)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "socket", scope: !88, file: !10, line: 441, baseType: !73, size: 32, offset: 544)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "ipv6", scope: !88, file: !10, line: 442, baseType: !73, size: 32, offset: 576)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 32)
!110 = !{!0, !111, !113, !115, !117, !119, !121, !123, !125, !127, !132, !140, !145, !150, !155, !160, !162, !164}
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression())
!112 = distinct !DIGlobalVariable(name: "global_overview", scope: !2, file: !10, line: 119, type: !73, isLocal: false, isDefinition: true)
!113 = !DIGlobalVariableExpression(var: !114, expr: !DIExpression())
!114 = distinct !DIGlobalVariable(name: "global_retries", scope: !2, file: !10, line: 120, type: !73, isLocal: false, isDefinition: true)
!115 = !DIGlobalVariableExpression(var: !116, expr: !DIExpression())
!116 = distinct !DIGlobalVariable(name: "global_caching", scope: !2, file: !10, line: 121, type: !73, isLocal: false, isDefinition: true)
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(name: "global_negative_caching", scope: !2, file: !10, line: 122, type: !73, isLocal: false, isDefinition: true)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(name: "global_querytype", scope: !2, file: !10, line: 123, type: !73, isLocal: false, isDefinition: true)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(name: "global_noipv6", scope: !2, file: !10, line: 124, type: !73, isLocal: false, isDefinition: true)
!123 = !DIGlobalVariableExpression(var: !124, expr: !DIExpression())
!124 = distinct !DIGlobalVariable(name: "global_timeout", scope: !2, file: !10, line: 125, type: !73, isLocal: false, isDefinition: true)
!125 = !DIGlobalVariableExpression(var: !126, expr: !DIExpression())
!126 = distinct !DIGlobalVariable(name: "global_source_address", scope: !2, file: !10, line: 126, type: !6, isLocal: false, isDefinition: true)
!127 = !DIGlobalVariableExpression(var: !128, expr: !DIExpression())
!128 = distinct !DIGlobalVariable(name: "rr_types", scope: !2, file: !10, line: 496, type: !129, isLocal: false, isDefinition: true)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 8192, elements: !130)
!130 = !{!131}
!131 = !DISubrange(count: 256)
!132 = !DIGlobalVariableExpression(var: !133, expr: !DIExpression())
!133 = distinct !DIGlobalVariable(name: "hostname", scope: !134, file: !10, line: 577, type: !137, isLocal: true, isDefinition: true)
!134 = distinct !DISubprogram(name: "getname", scope: !10, file: !10, line: 573, type: !135, scopeLine: 574, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!135 = !DISubroutineType(types: !136)
!136 = !{!6, !87, !109}
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 8200, elements: !138)
!138 = !{!139}
!139 = !DISubrange(count: 1025)
!140 = !DIGlobalVariableExpression(var: !141, expr: !DIExpression())
!141 = distinct !DIGlobalVariable(name: "hostname", scope: !142, file: !10, line: 757, type: !137, isLocal: true, isDefinition: true)
!142 = distinct !DISubprogram(name: "printablename", scope: !10, file: !10, line: 755, type: !143, scopeLine: 756, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!143 = !DISubroutineType(types: !144)
!144 = !{!6, !6, !73}
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(name: "retval", scope: !147, file: !10, line: 821, type: !137, isLocal: true, isDefinition: true)
!147 = distinct !DISubprogram(name: "get_ttl", scope: !10, file: !10, line: 819, type: !148, scopeLine: 820, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!148 = !DISubroutineType(types: !149)
!149 = !{!6, !73}
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(name: "retval", scope: !152, file: !10, line: 854, type: !137, isLocal: true, isDefinition: true)
!152 = distinct !DISubprogram(name: "get_resource", scope: !10, file: !10, line: 852, type: !153, scopeLine: 853, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!153 = !DISubroutineType(types: !154)
!154 = !{!6, !73, !87, !6, !73}
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(name: "retval", scope: !152, file: !10, line: 917, type: !157, isLocal: true, isDefinition: true)
!157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 24600, elements: !158)
!158 = !{!159}
!159 = !DISubrange(count: 3075)
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(name: "arecords", scope: !2, file: !10, line: 1303, type: !67, isLocal: false, isDefinition: true)
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(name: "answers", scope: !2, file: !10, line: 1354, type: !77, isLocal: false, isDefinition: true)
!164 = !DIGlobalVariableExpression(var: !165, expr: !DIExpression())
!165 = distinct !DIGlobalVariable(name: "busies", scope: !2, file: !10, line: 1390, type: !82, isLocal: false, isDefinition: true)
!166 = !{i32 7, !"Dwarf Version", i32 4}
!167 = !{i32 2, !"Debug Info Version", i32 3}
!168 = !{i32 1, !"wchar_size", i32 4}
!169 = !{!"clang version 13.0.0 (https://github.com/llvm/llvm-project fd1d8c2f04dde23bee0fb3a7d069a9b1046da979)"}
!170 = distinct !DISubprogram(name: "strnrcasecmp", scope: !10, file: !10, line: 543, type: !171, scopeLine: 544, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!171 = !DISubroutineType(types: !172)
!172 = !{!73, !173, !173, !175}
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 32)
!174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !176, line: 72, baseType: !177)
!176 = !DIFile(filename: "/data/wasi-sdk/build/wasi-sdk-14.0/share/wasi-sysroot/include/bits/alltypes.h", directory: "")
!177 = !DIBasicType(name: "long unsigned int", size: 32, encoding: DW_ATE_unsigned)
!178 = !DILocalVariable(name: "big", arg: 1, scope: !170, file: !10, line: 543, type: !173)
!179 = !DILocation(line: 543, column: 26, scope: !170)
!180 = !DILocalVariable(name: "little", arg: 2, scope: !170, file: !10, line: 543, type: !173)
!181 = !DILocation(line: 543, column: 43, scope: !170)
!182 = !DILocalVariable(name: "len", arg: 3, scope: !170, file: !10, line: 543, type: !175)
!183 = !DILocation(line: 543, column: 58, scope: !170)
!184 = !DILocalVariable(name: "p", scope: !170, file: !10, line: 545, type: !6)
!185 = !DILocation(line: 545, column: 11, scope: !170)
!186 = !DILocalVariable(name: "lenl", scope: !170, file: !10, line: 546, type: !175)
!187 = !DILocation(line: 546, column: 12, scope: !170)
!188 = !DILocalVariable(name: "lenb", scope: !170, file: !10, line: 546, type: !175)
!189 = !DILocation(line: 546, column: 18, scope: !170)
!190 = !DILocation(line: 548, column: 19, scope: !170)
!191 = !DILocation(line: 548, column: 12, scope: !170)
!192 = !DILocation(line: 548, column: 10, scope: !170)
!193 = !DILocation(line: 549, column: 19, scope: !170)
!194 = !DILocation(line: 549, column: 12, scope: !170)
!195 = !DILocation(line: 549, column: 10, scope: !170)
!196 = !DILocation(line: 551, column: 9, scope: !197)
!197 = distinct !DILexicalBlock(scope: !170, file: !10, line: 551, column: 9)
!198 = !DILocation(line: 551, column: 16, scope: !197)
!199 = !DILocation(line: 551, column: 14, scope: !197)
!200 = !DILocation(line: 551, column: 9, scope: !170)
!201 = !DILocation(line: 552, column: 2, scope: !197)
!202 = !DILocation(line: 553, column: 9, scope: !203)
!203 = distinct !DILexicalBlock(scope: !170, file: !10, line: 553, column: 9)
!204 = !DILocation(line: 553, column: 15, scope: !203)
!205 = !DILocation(line: 553, column: 13, scope: !203)
!206 = !DILocation(line: 553, column: 9, scope: !170)
!207 = !DILocation(line: 554, column: 2, scope: !203)
!208 = !DILocation(line: 556, column: 17, scope: !170)
!209 = !DILocation(line: 556, column: 23, scope: !170)
!210 = !DILocation(line: 556, column: 21, scope: !170)
!211 = !DILocation(line: 556, column: 30, scope: !170)
!212 = !DILocation(line: 556, column: 28, scope: !170)
!213 = !DILocation(line: 556, column: 7, scope: !170)
!214 = !DILocation(line: 557, column: 24, scope: !170)
!215 = !DILocation(line: 557, column: 27, scope: !170)
!216 = !DILocation(line: 557, column: 35, scope: !170)
!217 = !DILocation(line: 557, column: 12, scope: !170)
!218 = !DILocation(line: 557, column: 5, scope: !170)
!219 = !DILocation(line: 558, column: 1, scope: !170)
!220 = distinct !DISubprogram(name: "getlong", scope: !10, file: !10, line: 561, type: !221, scopeLine: 562, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!221 = !DISubroutineType(types: !222)
!222 = !{!20, !13}
!223 = !DILocalVariable(name: "s", arg: 1, scope: !220, file: !10, line: 561, type: !13)
!224 = !DILocation(line: 561, column: 24, scope: !220)
!225 = !DILocation(line: 563, column: 24, scope: !220)
!226 = !DILocation(line: 563, column: 23, scope: !220)
!227 = !DILocation(line: 563, column: 39, scope: !220)
!228 = !DILocation(line: 563, column: 38, scope: !220)
!229 = !DILocation(line: 563, column: 29, scope: !220)
!230 = !DILocation(line: 563, column: 50, scope: !220)
!231 = !DILocation(line: 563, column: 49, scope: !220)
!232 = !DILocation(line: 563, column: 44, scope: !220)
!233 = !DILocation(line: 563, column: 57, scope: !220)
!234 = !DILocation(line: 563, column: 55, scope: !220)
!235 = !DILocation(line: 563, column: 5, scope: !220)
!236 = distinct !DISubprogram(name: "getshort", scope: !10, file: !10, line: 567, type: !237, scopeLine: 568, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!237 = !DISubroutineType(types: !238)
!238 = !{!17, !13}
!239 = !DILocalVariable(name: "s", arg: 1, scope: !236, file: !10, line: 567, type: !13)
!240 = !DILocation(line: 567, column: 25, scope: !236)
!241 = !DILocation(line: 569, column: 16, scope: !236)
!242 = !DILocation(line: 569, column: 15, scope: !236)
!243 = !DILocation(line: 569, column: 23, scope: !236)
!244 = !DILocation(line: 569, column: 21, scope: !236)
!245 = !DILocation(line: 569, column: 12, scope: !236)
!246 = !DILocation(line: 569, column: 5, scope: !236)
!247 = !DILocalVariable(name: "session", arg: 1, scope: !134, file: !10, line: 573, type: !87)
!248 = !DILocation(line: 573, column: 28, scope: !134)
!249 = !DILocalVariable(name: "thisname", arg: 2, scope: !134, file: !10, line: 573, type: !109)
!250 = !DILocation(line: 573, column: 44, scope: !134)
!251 = !DILocalVariable(name: "compressing", scope: !134, file: !10, line: 575, type: !73)
!252 = !DILocation(line: 575, column: 10, scope: !134)
!253 = !DILocalVariable(name: "p", scope: !134, file: !10, line: 576, type: !6)
!254 = !DILocation(line: 576, column: 12, scope: !134)
!255 = !DILocation(line: 586, column: 10, scope: !256)
!256 = distinct !DILexicalBlock(scope: !134, file: !10, line: 586, column: 9)
!257 = !DILocation(line: 586, column: 9, scope: !256)
!258 = !DILocation(line: 586, column: 22, scope: !256)
!259 = !DILocation(line: 586, column: 9, scope: !134)
!260 = !DILocation(line: 587, column: 2, scope: !261)
!261 = distinct !DILexicalBlock(scope: !256, file: !10, line: 586, column: 28)
!262 = !DILocation(line: 588, column: 4, scope: !261)
!263 = !DILocation(line: 588, column: 13, scope: !261)
!264 = !DILocation(line: 589, column: 2, scope: !261)
!265 = !DILocation(line: 592, column: 10, scope: !134)
!266 = !DILocation(line: 592, column: 9, scope: !134)
!267 = !DILocation(line: 592, column: 7, scope: !134)
!268 = !DILocation(line: 593, column: 5, scope: !134)
!269 = !DILocation(line: 594, column: 5, scope: !134)
!270 = !DILocation(line: 594, column: 12, scope: !134)
!271 = !DILocation(line: 594, column: 17, scope: !134)
!272 = !DILocation(line: 601, column: 7, scope: !273)
!273 = distinct !DILexicalBlock(scope: !274, file: !10, line: 601, column: 6)
!274 = distinct !DILexicalBlock(scope: !134, file: !10, line: 594, column: 23)
!275 = !DILocation(line: 601, column: 11, scope: !273)
!276 = !DILocation(line: 601, column: 18, scope: !273)
!277 = !DILocation(line: 601, column: 6, scope: !274)
!278 = !DILocalVariable(name: "offset", scope: !279, file: !10, line: 602, type: !20)
!279 = distinct !DILexicalBlock(scope: !273, file: !10, line: 601, column: 24)
!280 = !DILocation(line: 602, column: 19, scope: !279)
!281 = !DILocalVariable(name: "oldp", scope: !279, file: !10, line: 603, type: !7)
!282 = !DILocation(line: 603, column: 11, scope: !279)
!283 = !DILocation(line: 605, column: 13, scope: !279)
!284 = !DILocation(line: 605, column: 11, scope: !279)
!285 = !DILocation(line: 606, column: 6, scope: !279)
!286 = !DILocation(line: 606, column: 11, scope: !279)
!287 = !DILocation(line: 607, column: 24, scope: !279)
!288 = !DILocation(line: 607, column: 15, scope: !279)
!289 = !DILocation(line: 607, column: 13, scope: !279)
!290 = !DILocation(line: 608, column: 13, scope: !279)
!291 = !DILocation(line: 608, column: 6, scope: !279)
!292 = !DILocation(line: 608, column: 11, scope: !279)
!293 = !DILocation(line: 609, column: 10, scope: !279)
!294 = !DILocation(line: 609, column: 19, scope: !279)
!295 = !DILocation(line: 609, column: 30, scope: !279)
!296 = !DILocation(line: 609, column: 28, scope: !279)
!297 = !DILocation(line: 609, column: 8, scope: !279)
!298 = !DILocation(line: 610, column: 10, scope: !299)
!299 = distinct !DILexicalBlock(scope: !279, file: !10, line: 610, column: 10)
!300 = !DILocation(line: 610, column: 22, scope: !299)
!301 = !DILocation(line: 610, column: 10, scope: !279)
!302 = !DILocation(line: 610, column: 29, scope: !299)
!303 = !DILocation(line: 610, column: 38, scope: !299)
!304 = !DILocation(line: 610, column: 28, scope: !299)
!305 = !DILocation(line: 612, column: 18, scope: !279)
!306 = !DILocation(line: 613, column: 6, scope: !279)
!307 = distinct !{!307, !269, !308, !309}
!308 = !DILocation(line: 630, column: 5, scope: !134)
!309 = !{!"llvm.loop.mustprogress"}
!310 = !DILocation(line: 624, column: 20, scope: !274)
!311 = !DILocation(line: 624, column: 18, scope: !274)
!312 = !DILocation(line: 624, column: 38, scope: !274)
!313 = !DILocation(line: 624, column: 41, scope: !274)
!314 = !DILocation(line: 624, column: 46, scope: !274)
!315 = !DILocation(line: 624, column: 2, scope: !274)
!316 = !DILocation(line: 625, column: 6, scope: !317)
!317 = distinct !DILexicalBlock(scope: !274, file: !10, line: 625, column: 6)
!318 = !DILocation(line: 625, column: 18, scope: !317)
!319 = !DILocation(line: 625, column: 6, scope: !274)
!320 = !DILocation(line: 626, column: 19, scope: !321)
!321 = distinct !DILexicalBlock(scope: !317, file: !10, line: 625, column: 24)
!322 = !DILocation(line: 626, column: 24, scope: !321)
!323 = !DILocation(line: 626, column: 7, scope: !321)
!324 = !DILocation(line: 626, column: 16, scope: !321)
!325 = !DILocation(line: 627, column: 11, scope: !326)
!326 = distinct !DILexicalBlock(scope: !321, file: !10, line: 627, column: 10)
!327 = !DILocation(line: 627, column: 10, scope: !326)
!328 = !DILocation(line: 627, column: 23, scope: !326)
!329 = !DILocation(line: 627, column: 10, scope: !321)
!330 = !DILocation(line: 627, column: 30, scope: !326)
!331 = !DILocation(line: 627, column: 39, scope: !326)
!332 = !DILocation(line: 627, column: 29, scope: !326)
!333 = !DILocation(line: 628, column: 2, scope: !321)
!334 = !DILocation(line: 629, column: 7, scope: !274)
!335 = !DILocation(line: 629, column: 12, scope: !274)
!336 = !DILocation(line: 629, column: 4, scope: !274)
!337 = !DILocation(line: 632, column: 5, scope: !134)
!338 = !DILocation(line: 633, column: 1, scope: !134)
!339 = distinct !DISubprogram(name: "extract_rr", scope: !10, file: !10, line: 636, type: !340, scopeLine: 637, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!340 = !DISubroutineType(types: !341)
!341 = !{!6, !87, !6, !342}
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 32)
!343 = !DILocalVariable(name: "session", arg: 1, scope: !339, file: !10, line: 636, type: !87)
!344 = !DILocation(line: 636, column: 31, scope: !339)
!345 = !DILocalVariable(name: "thisrr", arg: 2, scope: !339, file: !10, line: 636, type: !6)
!346 = !DILocation(line: 636, column: 46, scope: !339)
!347 = !DILocalVariable(name: "rr", arg: 3, scope: !339, file: !10, line: 636, type: !342)
!348 = !DILocation(line: 636, column: 69, scope: !339)
!349 = !DILocalVariable(name: "RR", scope: !339, file: !10, line: 638, type: !8)
!350 = !DILocation(line: 638, column: 20, scope: !339)
!351 = !DILocalVariable(name: "domainname", scope: !339, file: !10, line: 639, type: !6)
!352 = !DILocation(line: 639, column: 13, scope: !339)
!353 = !DILocalVariable(name: "p", scope: !339, file: !10, line: 640, type: !6)
!354 = !DILocation(line: 640, column: 13, scope: !339)
!355 = !DILocation(line: 642, column: 26, scope: !339)
!356 = !DILocation(line: 642, column: 10, scope: !339)
!357 = !DILocation(line: 642, column: 8, scope: !339)
!358 = !DILocation(line: 643, column: 17, scope: !339)
!359 = !DILocation(line: 643, column: 16, scope: !339)
!360 = !DILocation(line: 643, column: 5, scope: !339)
!361 = !DILocation(line: 643, column: 9, scope: !339)
!362 = !DILocation(line: 643, column: 14, scope: !339)
!363 = !DILocation(line: 650, column: 26, scope: !339)
!364 = !DILocation(line: 650, column: 18, scope: !339)
!365 = !DILocation(line: 650, column: 16, scope: !339)
!366 = !DILocation(line: 651, column: 29, scope: !339)
!367 = !DILocation(line: 651, column: 22, scope: !339)
!368 = !DILocation(line: 651, column: 5, scope: !339)
!369 = !DILocation(line: 651, column: 9, scope: !339)
!370 = !DILocation(line: 651, column: 20, scope: !339)
!371 = !DILocation(line: 652, column: 50, scope: !339)
!372 = !DILocation(line: 652, column: 36, scope: !339)
!373 = !DILocation(line: 652, column: 29, scope: !339)
!374 = !DILocation(line: 652, column: 5, scope: !339)
!375 = !DILocation(line: 652, column: 9, scope: !339)
!376 = !DILocation(line: 652, column: 27, scope: !339)
!377 = !DILocation(line: 653, column: 25, scope: !339)
!378 = !DILocation(line: 653, column: 16, scope: !339)
!379 = !DILocation(line: 653, column: 5, scope: !339)
!380 = !DILocation(line: 653, column: 9, scope: !339)
!381 = !DILocation(line: 653, column: 14, scope: !339)
!382 = !DILocation(line: 654, column: 26, scope: !339)
!383 = !DILocation(line: 654, column: 33, scope: !339)
!384 = !DILocation(line: 654, column: 17, scope: !339)
!385 = !DILocation(line: 654, column: 5, scope: !339)
!386 = !DILocation(line: 654, column: 9, scope: !339)
!387 = !DILocation(line: 654, column: 15, scope: !339)
!388 = !DILocation(line: 655, column: 23, scope: !339)
!389 = !DILocation(line: 655, column: 30, scope: !339)
!390 = !DILocation(line: 655, column: 15, scope: !339)
!391 = !DILocation(line: 655, column: 5, scope: !339)
!392 = !DILocation(line: 655, column: 9, scope: !339)
!393 = !DILocation(line: 655, column: 13, scope: !339)
!394 = !DILocation(line: 656, column: 31, scope: !339)
!395 = !DILocation(line: 656, column: 38, scope: !339)
!396 = !DILocation(line: 656, column: 22, scope: !339)
!397 = !DILocation(line: 656, column: 5, scope: !339)
!398 = !DILocation(line: 656, column: 9, scope: !339)
!399 = !DILocation(line: 656, column: 20, scope: !339)
!400 = !DILocation(line: 657, column: 43, scope: !339)
!401 = !DILocation(line: 657, column: 47, scope: !339)
!402 = !DILocation(line: 657, column: 33, scope: !339)
!403 = !DILocation(line: 657, column: 5, scope: !339)
!404 = !DILocation(line: 657, column: 9, scope: !339)
!405 = !DILocation(line: 657, column: 14, scope: !339)
!406 = !DILocation(line: 658, column: 12, scope: !339)
!407 = !DILocation(line: 658, column: 16, scope: !339)
!408 = !DILocation(line: 658, column: 22, scope: !339)
!409 = !DILocation(line: 658, column: 29, scope: !339)
!410 = !DILocation(line: 658, column: 35, scope: !339)
!411 = !DILocation(line: 658, column: 39, scope: !339)
!412 = !DILocation(line: 658, column: 5, scope: !339)
!413 = !DILocation(line: 660, column: 9, scope: !339)
!414 = !DILocation(line: 660, column: 16, scope: !339)
!415 = !DILocation(line: 660, column: 7, scope: !339)
!416 = !DILocation(line: 661, column: 43, scope: !339)
!417 = !DILocation(line: 661, column: 47, scope: !339)
!418 = !DILocation(line: 661, column: 53, scope: !339)
!419 = !DILocation(line: 661, column: 62, scope: !339)
!420 = !DILocation(line: 661, column: 30, scope: !339)
!421 = !DILocation(line: 661, column: 23, scope: !339)
!422 = !DILocation(line: 661, column: 5, scope: !339)
!423 = !DILocation(line: 661, column: 9, scope: !339)
!424 = !DILocation(line: 661, column: 21, scope: !339)
!425 = !DILocation(line: 662, column: 20, scope: !339)
!426 = !DILocation(line: 662, column: 24, scope: !339)
!427 = !DILocation(line: 662, column: 18, scope: !339)
!428 = !DILocation(line: 662, column: 12, scope: !339)
!429 = !DILocation(line: 664, column: 11, scope: !339)
!430 = !DILocation(line: 664, column: 6, scope: !339)
!431 = !DILocation(line: 664, column: 9, scope: !339)
!432 = !DILocation(line: 665, column: 12, scope: !339)
!433 = !DILocation(line: 665, column: 5, scope: !339)
!434 = !DILocalVariable(name: "name", arg: 1, scope: !142, file: !10, line: 755, type: !6)
!435 = !DILocation(line: 755, column: 21, scope: !142)
!436 = !DILocalVariable(name: "withdots", arg: 2, scope: !142, file: !10, line: 755, type: !73)
!437 = !DILocation(line: 755, column: 31, scope: !142)
!438 = !DILocalVariable(name: "p", scope: !142, file: !10, line: 758, type: !6)
!439 = !DILocation(line: 758, column: 11, scope: !142)
!440 = !DILocalVariable(name: "q", scope: !142, file: !10, line: 758, type: !7)
!441 = !DILocation(line: 758, column: 14, scope: !142)
!442 = !DILocation(line: 764, column: 9, scope: !443)
!443 = distinct !DILexicalBlock(scope: !142, file: !10, line: 764, column: 9)
!444 = !DILocation(line: 764, column: 14, scope: !443)
!445 = !DILocation(line: 764, column: 22, scope: !443)
!446 = !DILocation(line: 764, column: 25, scope: !443)
!447 = !DILocation(line: 764, column: 33, scope: !443)
!448 = !DILocation(line: 764, column: 9, scope: !142)
!449 = !DILocation(line: 765, column: 6, scope: !450)
!450 = distinct !DILexicalBlock(scope: !451, file: !10, line: 765, column: 6)
!451 = distinct !DILexicalBlock(scope: !443, file: !10, line: 764, column: 39)
!452 = !DILocation(line: 765, column: 15, scope: !450)
!453 = !DILocation(line: 765, column: 6, scope: !451)
!454 = !DILocation(line: 766, column: 6, scope: !450)
!455 = !DILocation(line: 768, column: 6, scope: !450)
!456 = !DILocation(line: 769, column: 2, scope: !451)
!457 = !DILocation(line: 772, column: 17, scope: !142)
!458 = !DILocation(line: 773, column: 9, scope: !142)
!459 = !DILocation(line: 773, column: 7, scope: !142)
!460 = !DILocation(line: 774, column: 5, scope: !142)
!461 = !DILocation(line: 774, column: 12, scope: !142)
!462 = !DILocation(line: 774, column: 17, scope: !142)
!463 = !DILocation(line: 775, column: 6, scope: !464)
!464 = distinct !DILexicalBlock(scope: !465, file: !10, line: 775, column: 6)
!465 = distinct !DILexicalBlock(scope: !142, file: !10, line: 774, column: 23)
!466 = !DILocation(line: 775, column: 15, scope: !464)
!467 = !DILocation(line: 775, column: 6, scope: !465)
!468 = !DILocation(line: 776, column: 25, scope: !464)
!469 = !DILocation(line: 776, column: 23, scope: !464)
!470 = !DILocation(line: 776, column: 51, scope: !464)
!471 = !DILocation(line: 776, column: 6, scope: !464)
!472 = !DILocation(line: 778, column: 6, scope: !464)
!473 = !DILocation(line: 779, column: 6, scope: !465)
!474 = !DILocation(line: 779, column: 8, scope: !465)
!475 = !DILocation(line: 779, column: 13, scope: !465)
!476 = !DILocation(line: 779, column: 4, scope: !465)
!477 = !DILocation(line: 780, column: 2, scope: !465)
!478 = !DILocation(line: 780, column: 4, scope: !465)
!479 = !DILocation(line: 780, column: 9, scope: !465)
!480 = !DILocation(line: 780, column: 14, scope: !465)
!481 = !DILocation(line: 781, column: 21, scope: !465)
!482 = !DILocation(line: 781, column: 19, scope: !465)
!483 = !DILocation(line: 781, column: 45, scope: !465)
!484 = !DILocation(line: 781, column: 47, scope: !465)
!485 = !DILocation(line: 781, column: 2, scope: !465)
!486 = !DILocation(line: 782, column: 6, scope: !465)
!487 = !DILocation(line: 782, column: 10, scope: !465)
!488 = !DILocation(line: 782, column: 8, scope: !465)
!489 = !DILocation(line: 782, column: 15, scope: !465)
!490 = !DILocation(line: 782, column: 4, scope: !465)
!491 = !DILocation(line: 783, column: 9, scope: !465)
!492 = !DILocation(line: 783, column: 2, scope: !465)
!493 = !DILocation(line: 783, column: 7, scope: !465)
!494 = distinct !{!494, !460, !495, !309}
!495 = !DILocation(line: 784, column: 5, scope: !142)
!496 = !DILocation(line: 786, column: 9, scope: !497)
!497 = distinct !DILexicalBlock(scope: !142, file: !10, line: 786, column: 9)
!498 = !DILocation(line: 786, column: 18, scope: !497)
!499 = !DILocation(line: 786, column: 9, scope: !142)
!500 = !DILocation(line: 787, column: 2, scope: !497)
!501 = !DILocation(line: 789, column: 2, scope: !497)
!502 = !DILocation(line: 790, column: 1, scope: !142)
!503 = !DILocalVariable(name: "type", arg: 1, scope: !152, file: !10, line: 852, type: !73)
!504 = !DILocation(line: 852, column: 18, scope: !152)
!505 = !DILocalVariable(name: "session", arg: 2, scope: !152, file: !10, line: 852, type: !87)
!506 = !DILocation(line: 852, column: 43, scope: !152)
!507 = !DILocalVariable(name: "buffer", arg: 3, scope: !152, file: !10, line: 852, type: !6)
!508 = !DILocation(line: 852, column: 58, scope: !152)
!509 = !DILocalVariable(name: "dots", arg: 4, scope: !152, file: !10, line: 852, type: !73)
!510 = !DILocation(line: 852, column: 70, scope: !152)
!511 = !DILocation(line: 861, column: 13, scope: !152)
!512 = !DILocation(line: 861, column: 5, scope: !152)
!513 = !DILocation(line: 864, column: 18, scope: !514)
!514 = distinct !DILexicalBlock(scope: !152, file: !10, line: 861, column: 19)
!515 = !DILocation(line: 864, column: 3, scope: !514)
!516 = !DILocation(line: 865, column: 18, scope: !514)
!517 = !DILocation(line: 865, column: 3, scope: !514)
!518 = !DILocation(line: 866, column: 18, scope: !514)
!519 = !DILocation(line: 866, column: 3, scope: !514)
!520 = !DILocation(line: 867, column: 18, scope: !514)
!521 = !DILocation(line: 867, column: 3, scope: !514)
!522 = !DILocation(line: 863, column: 2, scope: !514)
!523 = !DILocation(line: 868, column: 2, scope: !514)
!524 = !DILocation(line: 874, column: 18, scope: !514)
!525 = !DILocation(line: 874, column: 3, scope: !514)
!526 = !DILocation(line: 874, column: 45, scope: !514)
!527 = !DILocation(line: 874, column: 30, scope: !514)
!528 = !DILocation(line: 875, column: 18, scope: !514)
!529 = !DILocation(line: 875, column: 3, scope: !514)
!530 = !DILocation(line: 875, column: 45, scope: !514)
!531 = !DILocation(line: 875, column: 30, scope: !514)
!532 = !DILocation(line: 876, column: 18, scope: !514)
!533 = !DILocation(line: 876, column: 3, scope: !514)
!534 = !DILocation(line: 876, column: 45, scope: !514)
!535 = !DILocation(line: 876, column: 30, scope: !514)
!536 = !DILocation(line: 877, column: 18, scope: !514)
!537 = !DILocation(line: 877, column: 3, scope: !514)
!538 = !DILocation(line: 877, column: 45, scope: !514)
!539 = !DILocation(line: 877, column: 30, scope: !514)
!540 = !DILocation(line: 878, column: 18, scope: !514)
!541 = !DILocation(line: 878, column: 3, scope: !514)
!542 = !DILocation(line: 878, column: 45, scope: !514)
!543 = !DILocation(line: 878, column: 30, scope: !514)
!544 = !DILocation(line: 879, column: 18, scope: !514)
!545 = !DILocation(line: 879, column: 3, scope: !514)
!546 = !DILocation(line: 879, column: 45, scope: !514)
!547 = !DILocation(line: 879, column: 30, scope: !514)
!548 = !DILocation(line: 880, column: 18, scope: !514)
!549 = !DILocation(line: 880, column: 3, scope: !514)
!550 = !DILocation(line: 880, column: 45, scope: !514)
!551 = !DILocation(line: 880, column: 30, scope: !514)
!552 = !DILocation(line: 881, column: 18, scope: !514)
!553 = !DILocation(line: 881, column: 3, scope: !514)
!554 = !DILocation(line: 881, column: 45, scope: !514)
!555 = !DILocation(line: 881, column: 30, scope: !514)
!556 = !DILocation(line: 871, column: 2, scope: !514)
!557 = !DILocation(line: 883, column: 2, scope: !514)
!558 = !DILocation(line: 886, column: 39, scope: !514)
!559 = !DILocation(line: 886, column: 31, scope: !514)
!560 = !DILocation(line: 886, column: 58, scope: !514)
!561 = !DILocation(line: 886, column: 17, scope: !514)
!562 = !DILocation(line: 886, column: 2, scope: !514)
!563 = !DILocation(line: 887, column: 2, scope: !514)
!564 = !DILocation(line: 890, column: 39, scope: !514)
!565 = !DILocation(line: 890, column: 31, scope: !514)
!566 = !DILocation(line: 890, column: 58, scope: !514)
!567 = !DILocation(line: 890, column: 17, scope: !514)
!568 = !DILocation(line: 890, column: 2, scope: !514)
!569 = !DILocation(line: 891, column: 2, scope: !514)
!570 = !DILocalVariable(name: "us", scope: !571, file: !10, line: 895, type: !17)
!571 = distinct !DILexicalBlock(scope: !514, file: !10, line: 894, column: 5)
!572 = !DILocation(line: 895, column: 17, scope: !571)
!573 = !DILocation(line: 897, column: 16, scope: !571)
!574 = !DILocation(line: 897, column: 7, scope: !571)
!575 = !DILocation(line: 897, column: 5, scope: !571)
!576 = !DILocation(line: 898, column: 9, scope: !571)
!577 = !DILocation(line: 899, column: 28, scope: !571)
!578 = !DILocation(line: 899, column: 54, scope: !571)
!579 = !DILocation(line: 899, column: 46, scope: !571)
!580 = !DILocation(line: 899, column: 73, scope: !571)
!581 = !DILocation(line: 899, column: 32, scope: !571)
!582 = !DILocation(line: 899, column: 2, scope: !571)
!583 = !DILocation(line: 900, column: 2, scope: !571)
!584 = !DILocation(line: 904, column: 39, scope: !514)
!585 = !DILocation(line: 904, column: 31, scope: !514)
!586 = !DILocation(line: 904, column: 58, scope: !514)
!587 = !DILocation(line: 904, column: 17, scope: !514)
!588 = !DILocation(line: 904, column: 2, scope: !514)
!589 = !DILocation(line: 905, column: 2, scope: !514)
!590 = !DILocation(line: 908, column: 39, scope: !514)
!591 = !DILocation(line: 908, column: 31, scope: !514)
!592 = !DILocation(line: 908, column: 58, scope: !514)
!593 = !DILocation(line: 908, column: 17, scope: !514)
!594 = !DILocation(line: 908, column: 2, scope: !514)
!595 = !DILocation(line: 909, column: 2, scope: !514)
!596 = !DILocation(line: 912, column: 39, scope: !514)
!597 = !DILocation(line: 912, column: 31, scope: !514)
!598 = !DILocation(line: 912, column: 58, scope: !514)
!599 = !DILocation(line: 912, column: 17, scope: !514)
!600 = !DILocation(line: 912, column: 2, scope: !514)
!601 = !DILocation(line: 913, column: 2, scope: !514)
!602 = !DILocalVariable(name: "mname", scope: !603, file: !10, line: 918, type: !137)
!603 = distinct !DILexicalBlock(scope: !514, file: !10, line: 916, column: 5)
!604 = !DILocation(line: 918, column: 7, scope: !603)
!605 = !DILocalVariable(name: "rname", scope: !603, file: !10, line: 919, type: !137)
!606 = !DILocation(line: 919, column: 7, scope: !603)
!607 = !DILocalVariable(name: "ul", scope: !603, file: !10, line: 920, type: !177)
!608 = !DILocation(line: 920, column: 16, scope: !603)
!609 = !DILocation(line: 922, column: 9, scope: !603)
!610 = !DILocation(line: 922, column: 38, scope: !603)
!611 = !DILocation(line: 922, column: 30, scope: !603)
!612 = !DILocation(line: 922, column: 57, scope: !603)
!613 = !DILocation(line: 922, column: 16, scope: !603)
!614 = !DILocation(line: 922, column: 2, scope: !603)
!615 = !DILocation(line: 923, column: 9, scope: !603)
!616 = !DILocation(line: 923, column: 38, scope: !603)
!617 = !DILocation(line: 923, column: 30, scope: !603)
!618 = !DILocation(line: 923, column: 57, scope: !603)
!619 = !DILocation(line: 923, column: 16, scope: !603)
!620 = !DILocation(line: 923, column: 2, scope: !603)
!621 = !DILocation(line: 925, column: 15, scope: !603)
!622 = !DILocation(line: 925, column: 7, scope: !603)
!623 = !DILocation(line: 925, column: 5, scope: !603)
!624 = !DILocation(line: 926, column: 53, scope: !603)
!625 = !DILocation(line: 926, column: 57, scope: !603)
!626 = !DILocation(line: 926, column: 64, scope: !603)
!627 = !DILocation(line: 926, column: 2, scope: !603)
!628 = !DILocation(line: 927, column: 2, scope: !603)
!629 = !DILocation(line: 930, column: 14, scope: !514)
!630 = !DILocation(line: 933, column: 1, scope: !152)
!631 = distinct !DISubprogram(name: "extract_data", scope: !10, file: !10, line: 669, type: !632, scopeLine: 670, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!632 = !DISubroutineType(types: !633)
!633 = !{null, !87}
!634 = !DILocalVariable(name: "session", arg: 1, scope: !631, file: !10, line: 669, type: !87)
!635 = !DILocation(line: 669, column: 33, scope: !631)
!636 = !DILocalVariable(name: "header", scope: !631, file: !10, line: 671, type: !25)
!637 = !DILocation(line: 671, column: 24, scope: !631)
!638 = !DILocalVariable(name: "question", scope: !631, file: !10, line: 672, type: !48)
!639 = !DILocation(line: 672, column: 25, scope: !631)
!640 = !DILocalVariable(name: "answer", scope: !631, file: !10, line: 673, type: !8)
!641 = !DILocation(line: 673, column: 20, scope: !631)
!642 = !DILocalVariable(name: "authority", scope: !631, file: !10, line: 674, type: !8)
!643 = !DILocation(line: 674, column: 20, scope: !631)
!644 = !DILocalVariable(name: "additional", scope: !631, file: !10, line: 675, type: !8)
!645 = !DILocation(line: 675, column: 20, scope: !631)
!646 = !DILocalVariable(name: "pheader", scope: !631, file: !10, line: 677, type: !6)
!647 = !DILocation(line: 677, column: 12, scope: !631)
!648 = !DILocalVariable(name: "pquestion", scope: !631, file: !10, line: 678, type: !6)
!649 = !DILocation(line: 678, column: 12, scope: !631)
!650 = !DILocalVariable(name: "panswer", scope: !631, file: !10, line: 679, type: !6)
!651 = !DILocation(line: 679, column: 12, scope: !631)
!652 = !DILocalVariable(name: "pauthority", scope: !631, file: !10, line: 680, type: !6)
!653 = !DILocation(line: 680, column: 12, scope: !631)
!654 = !DILocalVariable(name: "padditional", scope: !631, file: !10, line: 681, type: !6)
!655 = !DILocation(line: 681, column: 12, scope: !631)
!656 = !DILocalVariable(name: "pbuffer", scope: !631, file: !10, line: 683, type: !6)
!657 = !DILocation(line: 683, column: 11, scope: !631)
!658 = !DILocalVariable(name: "i", scope: !631, file: !10, line: 684, type: !73)
!659 = !DILocation(line: 684, column: 9, scope: !631)
!660 = !DILocation(line: 686, column: 15, scope: !631)
!661 = !DILocation(line: 686, column: 24, scope: !631)
!662 = !DILocation(line: 686, column: 13, scope: !631)
!663 = !DILocation(line: 691, column: 32, scope: !631)
!664 = !DILocation(line: 691, column: 5, scope: !631)
!665 = !DILocation(line: 691, column: 14, scope: !631)
!666 = !DILocation(line: 691, column: 30, scope: !631)
!667 = !DILocation(line: 692, column: 15, scope: !631)
!668 = !DILocation(line: 692, column: 13, scope: !631)
!669 = !DILocation(line: 693, column: 34, scope: !631)
!670 = !DILocation(line: 693, column: 14, scope: !631)
!671 = !DILocation(line: 693, column: 12, scope: !631)
!672 = !DILocation(line: 694, column: 12, scope: !631)
!673 = !DILocation(line: 694, column: 5, scope: !631)
!674 = !DILocation(line: 694, column: 20, scope: !631)
!675 = !DILocation(line: 694, column: 29, scope: !631)
!676 = !DILocation(line: 695, column: 36, scope: !631)
!677 = !DILocation(line: 695, column: 44, scope: !631)
!678 = !DILocation(line: 695, column: 30, scope: !631)
!679 = !DILocation(line: 695, column: 5, scope: !631)
!680 = !DILocation(line: 695, column: 13, scope: !631)
!681 = !DILocation(line: 695, column: 28, scope: !631)
!682 = !DILocation(line: 696, column: 33, scope: !631)
!683 = !DILocation(line: 696, column: 41, scope: !631)
!684 = !DILocation(line: 696, column: 47, scope: !631)
!685 = !DILocation(line: 696, column: 27, scope: !631)
!686 = !DILocation(line: 696, column: 5, scope: !631)
!687 = !DILocation(line: 696, column: 13, scope: !631)
!688 = !DILocation(line: 696, column: 19, scope: !631)
!689 = !DILocation(line: 696, column: 25, scope: !631)
!690 = !DILocation(line: 697, column: 32, scope: !631)
!691 = !DILocation(line: 697, column: 40, scope: !631)
!692 = !DILocation(line: 697, column: 26, scope: !631)
!693 = !DILocation(line: 697, column: 5, scope: !631)
!694 = !DILocation(line: 697, column: 13, scope: !631)
!695 = !DILocation(line: 697, column: 24, scope: !631)
!696 = !DILocation(line: 698, column: 31, scope: !631)
!697 = !DILocation(line: 698, column: 39, scope: !631)
!698 = !DILocation(line: 698, column: 25, scope: !631)
!699 = !DILocation(line: 698, column: 5, scope: !631)
!700 = !DILocation(line: 698, column: 13, scope: !631)
!701 = !DILocation(line: 698, column: 23, scope: !631)
!702 = !DILocation(line: 699, column: 34, scope: !631)
!703 = !DILocation(line: 699, column: 42, scope: !631)
!704 = !DILocation(line: 699, column: 28, scope: !631)
!705 = !DILocation(line: 699, column: 5, scope: !631)
!706 = !DILocation(line: 699, column: 13, scope: !631)
!707 = !DILocation(line: 699, column: 26, scope: !631)
!708 = !DILocation(line: 700, column: 35, scope: !631)
!709 = !DILocation(line: 700, column: 43, scope: !631)
!710 = !DILocation(line: 700, column: 29, scope: !631)
!711 = !DILocation(line: 700, column: 5, scope: !631)
!712 = !DILocation(line: 700, column: 13, scope: !631)
!713 = !DILocation(line: 700, column: 27, scope: !631)
!714 = !DILocation(line: 701, column: 13, scope: !631)
!715 = !DILocation(line: 706, column: 34, scope: !631)
!716 = !DILocation(line: 706, column: 5, scope: !631)
!717 = !DILocation(line: 706, column: 14, scope: !631)
!718 = !DILocation(line: 706, column: 32, scope: !631)
!719 = !DILocation(line: 707, column: 17, scope: !631)
!720 = !DILocation(line: 707, column: 15, scope: !631)
!721 = !DILocation(line: 708, column: 38, scope: !631)
!722 = !DILocation(line: 708, column: 16, scope: !631)
!723 = !DILocation(line: 708, column: 14, scope: !631)
!724 = !DILocation(line: 709, column: 38, scope: !631)
!725 = !DILocation(line: 709, column: 30, scope: !631)
!726 = !DILocation(line: 709, column: 23, scope: !631)
!727 = !DILocation(line: 709, column: 5, scope: !631)
!728 = !DILocation(line: 709, column: 15, scope: !631)
!729 = !DILocation(line: 709, column: 21, scope: !631)
!730 = !DILocation(line: 710, column: 31, scope: !631)
!731 = !DILocation(line: 710, column: 22, scope: !631)
!732 = !DILocation(line: 710, column: 5, scope: !631)
!733 = !DILocation(line: 710, column: 15, scope: !631)
!734 = !DILocation(line: 710, column: 20, scope: !631)
!735 = !DILocation(line: 711, column: 32, scope: !631)
!736 = !DILocation(line: 711, column: 42, scope: !631)
!737 = !DILocation(line: 711, column: 23, scope: !631)
!738 = !DILocation(line: 711, column: 5, scope: !631)
!739 = !DILocation(line: 711, column: 15, scope: !631)
!740 = !DILocation(line: 711, column: 21, scope: !631)
!741 = !DILocation(line: 712, column: 15, scope: !631)
!742 = !DILocation(line: 712, column: 25, scope: !631)
!743 = !DILocation(line: 712, column: 13, scope: !631)
!744 = !DILocation(line: 717, column: 32, scope: !631)
!745 = !DILocation(line: 717, column: 5, scope: !631)
!746 = !DILocation(line: 717, column: 14, scope: !631)
!747 = !DILocation(line: 717, column: 30, scope: !631)
!748 = !DILocation(line: 718, column: 12, scope: !749)
!749 = distinct !DILexicalBlock(scope: !631, file: !10, line: 718, column: 5)
!750 = !DILocation(line: 718, column: 10, scope: !749)
!751 = !DILocation(line: 718, column: 17, scope: !752)
!752 = distinct !DILexicalBlock(scope: !749, file: !10, line: 718, column: 5)
!753 = !DILocation(line: 718, column: 21, scope: !752)
!754 = !DILocation(line: 718, column: 29, scope: !752)
!755 = !DILocation(line: 718, column: 19, scope: !752)
!756 = !DILocation(line: 718, column: 5, scope: !749)
!757 = !DILocation(line: 719, column: 12, scope: !758)
!758 = distinct !DILexicalBlock(scope: !752, file: !10, line: 718, column: 45)
!759 = !DILocation(line: 719, column: 10, scope: !758)
!760 = !DILocation(line: 720, column: 23, scope: !758)
!761 = !DILocation(line: 720, column: 32, scope: !758)
!762 = !DILocation(line: 720, column: 12, scope: !758)
!763 = !DILocation(line: 720, column: 10, scope: !758)
!764 = !DILocation(line: 721, column: 5, scope: !758)
!765 = !DILocation(line: 718, column: 41, scope: !752)
!766 = !DILocation(line: 718, column: 5, scope: !752)
!767 = distinct !{!767, !756, !768, !309}
!768 = !DILocation(line: 721, column: 5, scope: !749)
!769 = !DILocation(line: 726, column: 35, scope: !631)
!770 = !DILocation(line: 726, column: 5, scope: !631)
!771 = !DILocation(line: 726, column: 14, scope: !631)
!772 = !DILocation(line: 726, column: 33, scope: !631)
!773 = !DILocation(line: 727, column: 12, scope: !774)
!774 = distinct !DILexicalBlock(scope: !631, file: !10, line: 727, column: 5)
!775 = !DILocation(line: 727, column: 10, scope: !774)
!776 = !DILocation(line: 727, column: 17, scope: !777)
!777 = distinct !DILexicalBlock(scope: !774, file: !10, line: 727, column: 5)
!778 = !DILocation(line: 727, column: 21, scope: !777)
!779 = !DILocation(line: 727, column: 29, scope: !777)
!780 = !DILocation(line: 727, column: 19, scope: !777)
!781 = !DILocation(line: 727, column: 5, scope: !774)
!782 = !DILocation(line: 728, column: 15, scope: !783)
!783 = distinct !DILexicalBlock(scope: !777, file: !10, line: 727, column: 48)
!784 = !DILocation(line: 728, column: 13, scope: !783)
!785 = !DILocation(line: 729, column: 23, scope: !783)
!786 = !DILocation(line: 729, column: 32, scope: !783)
!787 = !DILocation(line: 729, column: 12, scope: !783)
!788 = !DILocation(line: 729, column: 10, scope: !783)
!789 = !DILocation(line: 730, column: 5, scope: !783)
!790 = !DILocation(line: 727, column: 44, scope: !777)
!791 = !DILocation(line: 727, column: 5, scope: !777)
!792 = distinct !{!792, !781, !793, !309}
!793 = !DILocation(line: 730, column: 5, scope: !774)
!794 = !DILocation(line: 735, column: 36, scope: !631)
!795 = !DILocation(line: 735, column: 5, scope: !631)
!796 = !DILocation(line: 735, column: 14, scope: !631)
!797 = !DILocation(line: 735, column: 34, scope: !631)
!798 = !DILocation(line: 736, column: 12, scope: !799)
!799 = distinct !DILexicalBlock(scope: !631, file: !10, line: 736, column: 5)
!800 = !DILocation(line: 736, column: 10, scope: !799)
!801 = !DILocation(line: 736, column: 17, scope: !802)
!802 = distinct !DILexicalBlock(scope: !799, file: !10, line: 736, column: 5)
!803 = !DILocation(line: 736, column: 21, scope: !802)
!804 = !DILocation(line: 736, column: 29, scope: !802)
!805 = !DILocation(line: 736, column: 19, scope: !802)
!806 = !DILocation(line: 736, column: 5, scope: !799)
!807 = !DILocation(line: 737, column: 16, scope: !808)
!808 = distinct !DILexicalBlock(scope: !802, file: !10, line: 736, column: 49)
!809 = !DILocation(line: 737, column: 14, scope: !808)
!810 = !DILocation(line: 738, column: 23, scope: !808)
!811 = !DILocation(line: 738, column: 32, scope: !808)
!812 = !DILocation(line: 738, column: 12, scope: !808)
!813 = !DILocation(line: 738, column: 10, scope: !808)
!814 = !DILocation(line: 739, column: 5, scope: !808)
!815 = !DILocation(line: 736, column: 45, scope: !802)
!816 = !DILocation(line: 736, column: 5, scope: !802)
!817 = distinct !{!817, !806, !818, !309}
!818 = !DILocation(line: 739, column: 5, scope: !799)
!819 = !DILocation(line: 741, column: 28, scope: !631)
!820 = !DILocation(line: 741, column: 5, scope: !631)
!821 = !DILocation(line: 741, column: 14, scope: !631)
!822 = !DILocation(line: 741, column: 26, scope: !631)
!823 = !DILocation(line: 742, column: 30, scope: !631)
!824 = !DILocation(line: 742, column: 5, scope: !631)
!825 = !DILocation(line: 742, column: 14, scope: !631)
!826 = !DILocation(line: 742, column: 28, scope: !631)
!827 = !DILocation(line: 743, column: 23, scope: !631)
!828 = !DILocation(line: 743, column: 5, scope: !631)
!829 = !DILocation(line: 743, column: 14, scope: !631)
!830 = !DILocation(line: 743, column: 21, scope: !631)
!831 = !DILocation(line: 744, column: 27, scope: !631)
!832 = !DILocation(line: 744, column: 5, scope: !631)
!833 = !DILocation(line: 744, column: 14, scope: !631)
!834 = !DILocation(line: 744, column: 25, scope: !631)
!835 = !DILocation(line: 745, column: 26, scope: !631)
!836 = !DILocation(line: 745, column: 5, scope: !631)
!837 = !DILocation(line: 745, column: 14, scope: !631)
!838 = !DILocation(line: 745, column: 24, scope: !631)
!839 = !DILocation(line: 746, column: 1, scope: !631)
!840 = distinct !DISubprogram(name: "get_class", scope: !10, file: !10, line: 793, type: !148, scopeLine: 794, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!841 = !DILocalVariable(name: "class", arg: 1, scope: !840, file: !10, line: 793, type: !73)
!842 = !DILocation(line: 793, column: 15, scope: !840)
!843 = !DILocation(line: 795, column: 13, scope: !840)
!844 = !DILocation(line: 795, column: 5, scope: !840)
!845 = !DILocation(line: 796, column: 19, scope: !846)
!846 = distinct !DILexicalBlock(scope: !840, file: !10, line: 795, column: 20)
!847 = !DILocation(line: 797, column: 22, scope: !846)
!848 = !DILocation(line: 798, column: 19, scope: !846)
!849 = !DILocation(line: 799, column: 21, scope: !846)
!850 = !DILocation(line: 800, column: 20, scope: !846)
!851 = !DILocation(line: 801, column: 15, scope: !846)
!852 = !DILocation(line: 803, column: 1, scope: !840)
!853 = distinct !DISubprogram(name: "get_type", scope: !10, file: !10, line: 806, type: !148, scopeLine: 807, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!854 = !DILocalVariable(name: "type", arg: 1, scope: !853, file: !10, line: 806, type: !73)
!855 = !DILocation(line: 806, column: 14, scope: !853)
!856 = !DILocation(line: 808, column: 13, scope: !853)
!857 = !DILocation(line: 808, column: 5, scope: !853)
!858 = !DILocation(line: 809, column: 18, scope: !859)
!859 = distinct !DILexicalBlock(scope: !853, file: !10, line: 808, column: 19)
!860 = !DILocation(line: 810, column: 19, scope: !859)
!861 = !DILocation(line: 811, column: 22, scope: !859)
!862 = !DILocation(line: 812, column: 20, scope: !859)
!863 = !DILocation(line: 813, column: 20, scope: !859)
!864 = !DILocation(line: 814, column: 15, scope: !859)
!865 = !DILocation(line: 816, column: 1, scope: !853)
!866 = !DILocalVariable(name: "ttl", arg: 1, scope: !147, file: !10, line: 819, type: !73)
!867 = !DILocation(line: 819, column: 13, scope: !147)
!868 = !DILocation(line: 827, column: 15, scope: !147)
!869 = !DILocation(line: 828, column: 9, scope: !870)
!870 = distinct !DILexicalBlock(scope: !147, file: !10, line: 828, column: 9)
!871 = !DILocation(line: 828, column: 13, scope: !870)
!872 = !DILocation(line: 828, column: 9, scope: !147)
!873 = !DILocation(line: 829, column: 25, scope: !874)
!874 = distinct !DILexicalBlock(scope: !870, file: !10, line: 828, column: 27)
!875 = !DILocation(line: 829, column: 28, scope: !874)
!876 = !DILocation(line: 829, column: 2, scope: !874)
!877 = !DILocation(line: 830, column: 6, scope: !874)
!878 = !DILocation(line: 831, column: 5, scope: !874)
!879 = !DILocation(line: 832, column: 9, scope: !880)
!880 = distinct !DILexicalBlock(scope: !147, file: !10, line: 832, column: 9)
!881 = !DILocation(line: 832, column: 13, scope: !880)
!882 = !DILocation(line: 832, column: 9, scope: !147)
!883 = !DILocation(line: 833, column: 19, scope: !884)
!884 = distinct !DILexicalBlock(scope: !880, file: !10, line: 832, column: 25)
!885 = !DILocation(line: 833, column: 17, scope: !884)
!886 = !DILocation(line: 833, column: 42, scope: !884)
!887 = !DILocation(line: 833, column: 45, scope: !884)
!888 = !DILocation(line: 833, column: 2, scope: !884)
!889 = !DILocation(line: 834, column: 6, scope: !884)
!890 = !DILocation(line: 835, column: 5, scope: !884)
!891 = !DILocation(line: 836, column: 9, scope: !892)
!892 = distinct !DILexicalBlock(scope: !147, file: !10, line: 836, column: 9)
!893 = !DILocation(line: 836, column: 13, scope: !892)
!894 = !DILocation(line: 836, column: 9, scope: !147)
!895 = !DILocation(line: 837, column: 19, scope: !896)
!896 = distinct !DILexicalBlock(scope: !892, file: !10, line: 836, column: 22)
!897 = !DILocation(line: 837, column: 17, scope: !896)
!898 = !DILocation(line: 837, column: 42, scope: !896)
!899 = !DILocation(line: 837, column: 45, scope: !896)
!900 = !DILocation(line: 837, column: 2, scope: !896)
!901 = !DILocation(line: 838, column: 6, scope: !896)
!902 = !DILocation(line: 839, column: 5, scope: !896)
!903 = !DILocation(line: 840, column: 9, scope: !904)
!904 = distinct !DILexicalBlock(scope: !147, file: !10, line: 840, column: 9)
!905 = !DILocation(line: 840, column: 13, scope: !904)
!906 = !DILocation(line: 840, column: 9, scope: !147)
!907 = !DILocation(line: 841, column: 19, scope: !908)
!908 = distinct !DILexicalBlock(scope: !904, file: !10, line: 840, column: 19)
!909 = !DILocation(line: 841, column: 17, scope: !908)
!910 = !DILocation(line: 841, column: 42, scope: !908)
!911 = !DILocation(line: 841, column: 45, scope: !908)
!912 = !DILocation(line: 841, column: 2, scope: !908)
!913 = !DILocation(line: 842, column: 6, scope: !908)
!914 = !DILocation(line: 843, column: 5, scope: !908)
!915 = !DILocation(line: 844, column: 9, scope: !916)
!916 = distinct !DILexicalBlock(scope: !147, file: !10, line: 844, column: 9)
!917 = !DILocation(line: 844, column: 13, scope: !916)
!918 = !DILocation(line: 844, column: 9, scope: !147)
!919 = !DILocation(line: 845, column: 19, scope: !920)
!920 = distinct !DILexicalBlock(scope: !916, file: !10, line: 844, column: 18)
!921 = !DILocation(line: 845, column: 17, scope: !920)
!922 = !DILocation(line: 845, column: 42, scope: !920)
!923 = !DILocation(line: 845, column: 2, scope: !920)
!924 = !DILocation(line: 846, column: 5, scope: !920)
!925 = !DILocation(line: 848, column: 5, scope: !147)
!926 = distinct !DISubprogram(name: "dump_question", scope: !10, file: !10, line: 936, type: !927, scopeLine: 937, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!927 = !DISubroutineType(types: !928)
!928 = !{null, !48}
!929 = !DILocalVariable(name: "question", arg: 1, scope: !926, file: !10, line: 936, type: !48)
!930 = !DILocation(line: 936, column: 35, scope: !926)
!931 = !DILocation(line: 938, column: 58, scope: !926)
!932 = !DILocation(line: 938, column: 68, scope: !926)
!933 = !DILocation(line: 938, column: 44, scope: !926)
!934 = !DILocation(line: 938, column: 5, scope: !926)
!935 = !DILocation(line: 940, column: 9, scope: !926)
!936 = !DILocation(line: 940, column: 19, scope: !926)
!937 = !DILocation(line: 940, column: 34, scope: !926)
!938 = !DILocation(line: 940, column: 44, scope: !926)
!939 = !DILocation(line: 940, column: 25, scope: !926)
!940 = !DILocation(line: 939, column: 5, scope: !926)
!941 = !DILocation(line: 942, column: 9, scope: !926)
!942 = !DILocation(line: 942, column: 19, scope: !926)
!943 = !DILocation(line: 942, column: 36, scope: !926)
!944 = !DILocation(line: 942, column: 46, scope: !926)
!945 = !DILocation(line: 942, column: 26, scope: !926)
!946 = !DILocation(line: 941, column: 5, scope: !926)
!947 = !DILocation(line: 943, column: 1, scope: !926)
!948 = distinct !DISubprogram(name: "dump_header", scope: !10, file: !10, line: 946, type: !949, scopeLine: 947, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!949 = !DISubroutineType(types: !950)
!950 = !{null, !25}
!951 = !DILocalVariable(name: "header", arg: 1, scope: !948, file: !10, line: 946, type: !25)
!952 = !DILocation(line: 946, column: 31, scope: !948)
!953 = !DILocation(line: 948, column: 49, scope: !948)
!954 = !DILocation(line: 948, column: 57, scope: !948)
!955 = !DILocation(line: 948, column: 5, scope: !948)
!956 = !DILocation(line: 949, column: 49, scope: !948)
!957 = !DILocation(line: 949, column: 57, scope: !948)
!958 = !DILocation(line: 949, column: 63, scope: !948)
!959 = !DILocation(line: 949, column: 5, scope: !948)
!960 = !DILocation(line: 951, column: 9, scope: !961)
!961 = distinct !DILexicalBlock(scope: !948, file: !10, line: 951, column: 9)
!962 = !DILocation(line: 951, column: 17, scope: !961)
!963 = !DILocation(line: 951, column: 23, scope: !961)
!964 = !DILocation(line: 951, column: 27, scope: !961)
!965 = !DILocation(line: 951, column: 9, scope: !948)
!966 = !DILocation(line: 951, column: 31, scope: !961)
!967 = !DILocation(line: 951, column: 50, scope: !961)
!968 = !DILocation(line: 952, column: 9, scope: !969)
!969 = distinct !DILexicalBlock(scope: !948, file: !10, line: 952, column: 9)
!970 = !DILocation(line: 952, column: 17, scope: !969)
!971 = !DILocation(line: 952, column: 23, scope: !969)
!972 = !DILocation(line: 952, column: 27, scope: !969)
!973 = !DILocation(line: 952, column: 9, scope: !948)
!974 = !DILocation(line: 952, column: 31, scope: !969)
!975 = !DILocation(line: 953, column: 9, scope: !976)
!976 = distinct !DILexicalBlock(scope: !948, file: !10, line: 953, column: 9)
!977 = !DILocation(line: 953, column: 17, scope: !976)
!978 = !DILocation(line: 953, column: 23, scope: !976)
!979 = !DILocation(line: 953, column: 27, scope: !976)
!980 = !DILocation(line: 953, column: 9, scope: !948)
!981 = !DILocation(line: 953, column: 31, scope: !976)
!982 = !DILocation(line: 954, column: 9, scope: !983)
!983 = distinct !DILexicalBlock(scope: !948, file: !10, line: 954, column: 9)
!984 = !DILocation(line: 954, column: 17, scope: !983)
!985 = !DILocation(line: 954, column: 23, scope: !983)
!986 = !DILocation(line: 954, column: 27, scope: !983)
!987 = !DILocation(line: 954, column: 9, scope: !948)
!988 = !DILocation(line: 954, column: 31, scope: !983)
!989 = !DILocation(line: 955, column: 9, scope: !990)
!990 = distinct !DILexicalBlock(scope: !948, file: !10, line: 955, column: 9)
!991 = !DILocation(line: 955, column: 17, scope: !990)
!992 = !DILocation(line: 955, column: 23, scope: !990)
!993 = !DILocation(line: 955, column: 27, scope: !990)
!994 = !DILocation(line: 955, column: 9, scope: !948)
!995 = !DILocation(line: 955, column: 31, scope: !990)
!996 = !DILocation(line: 956, column: 5, scope: !948)
!997 = !DILocation(line: 958, column: 44, scope: !948)
!998 = !DILocation(line: 958, column: 52, scope: !948)
!999 = !DILocation(line: 958, column: 58, scope: !948)
!1000 = !DILocation(line: 958, column: 62, scope: !948)
!1001 = !DILocation(line: 958, column: 5, scope: !948)
!1002 = !DILocation(line: 959, column: 13, scope: !948)
!1003 = !DILocation(line: 959, column: 21, scope: !948)
!1004 = !DILocation(line: 959, column: 27, scope: !948)
!1005 = !DILocation(line: 959, column: 31, scope: !948)
!1006 = !DILocation(line: 959, column: 5, scope: !948)
!1007 = !DILocation(line: 960, column: 13, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !948, file: !10, line: 959, column: 39)
!1009 = !DILocation(line: 960, column: 42, scope: !1008)
!1010 = !DILocation(line: 961, column: 13, scope: !1008)
!1011 = !DILocation(line: 961, column: 41, scope: !1008)
!1012 = !DILocation(line: 962, column: 13, scope: !1008)
!1013 = !DILocation(line: 962, column: 49, scope: !1008)
!1014 = !DILocation(line: 963, column: 13, scope: !1008)
!1015 = !DILocation(line: 963, column: 34, scope: !1008)
!1016 = !DILocation(line: 964, column: 13, scope: !1008)
!1017 = !DILocation(line: 964, column: 34, scope: !1008)
!1018 = !DILocation(line: 965, column: 14, scope: !1008)
!1019 = !DILocation(line: 965, column: 38, scope: !1008)
!1020 = !DILocation(line: 966, column: 14, scope: !1008)
!1021 = !DILocation(line: 966, column: 37, scope: !1008)
!1022 = !DILocation(line: 967, column: 14, scope: !1008)
!1023 = !DILocation(line: 968, column: 5, scope: !1008)
!1024 = !DILocation(line: 970, column: 44, scope: !948)
!1025 = !DILocation(line: 970, column: 52, scope: !948)
!1026 = !DILocation(line: 970, column: 58, scope: !948)
!1027 = !DILocation(line: 970, column: 62, scope: !948)
!1028 = !DILocation(line: 970, column: 5, scope: !948)
!1029 = !DILocation(line: 971, column: 13, scope: !948)
!1030 = !DILocation(line: 971, column: 21, scope: !948)
!1031 = !DILocation(line: 971, column: 27, scope: !948)
!1032 = !DILocation(line: 971, column: 31, scope: !948)
!1033 = !DILocation(line: 971, column: 5, scope: !948)
!1034 = !DILocation(line: 972, column: 13, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !948, file: !10, line: 971, column: 38)
!1036 = !DILocation(line: 972, column: 36, scope: !1035)
!1037 = !DILocation(line: 973, column: 13, scope: !1035)
!1038 = !DILocation(line: 973, column: 40, scope: !1035)
!1039 = !DILocation(line: 974, column: 13, scope: !1035)
!1040 = !DILocation(line: 974, column: 42, scope: !1035)
!1041 = !DILocation(line: 975, column: 13, scope: !1035)
!1042 = !DILocation(line: 975, column: 38, scope: !1035)
!1043 = !DILocation(line: 976, column: 13, scope: !1035)
!1044 = !DILocation(line: 976, column: 43, scope: !1035)
!1045 = !DILocation(line: 977, column: 13, scope: !1035)
!1046 = !DILocation(line: 977, column: 35, scope: !1035)
!1047 = !DILocation(line: 978, column: 13, scope: !1035)
!1048 = !DILocation(line: 978, column: 39, scope: !1035)
!1049 = !DILocation(line: 979, column: 13, scope: !1035)
!1050 = !DILocation(line: 979, column: 40, scope: !1035)
!1051 = !DILocation(line: 980, column: 13, scope: !1035)
!1052 = !DILocation(line: 980, column: 48, scope: !1035)
!1053 = !DILocation(line: 981, column: 13, scope: !1035)
!1054 = !DILocation(line: 981, column: 43, scope: !1035)
!1055 = !DILocation(line: 982, column: 14, scope: !1035)
!1056 = !DILocation(line: 982, column: 71, scope: !1035)
!1057 = !DILocation(line: 983, column: 14, scope: !1035)
!1058 = !DILocation(line: 983, column: 36, scope: !1035)
!1059 = !DILocation(line: 986, column: 45, scope: !948)
!1060 = !DILocation(line: 986, column: 53, scope: !948)
!1061 = !DILocation(line: 986, column: 5, scope: !948)
!1062 = !DILocation(line: 987, column: 45, scope: !948)
!1063 = !DILocation(line: 987, column: 53, scope: !948)
!1064 = !DILocation(line: 987, column: 5, scope: !948)
!1065 = !DILocation(line: 988, column: 45, scope: !948)
!1066 = !DILocation(line: 988, column: 53, scope: !948)
!1067 = !DILocation(line: 988, column: 5, scope: !948)
!1068 = !DILocation(line: 989, column: 45, scope: !948)
!1069 = !DILocation(line: 989, column: 53, scope: !948)
!1070 = !DILocation(line: 989, column: 5, scope: !948)
!1071 = !DILocation(line: 990, column: 1, scope: !948)
!1072 = distinct !DISubprogram(name: "dump_rr", scope: !10, file: !10, line: 993, type: !1073, scopeLine: 994, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{null, !8, !87}
!1075 = !DILocalVariable(name: "rr", arg: 1, scope: !1072, file: !10, line: 993, type: !8)
!1076 = !DILocation(line: 993, column: 23, scope: !1072)
!1077 = !DILocalVariable(name: "session", arg: 2, scope: !1072, file: !10, line: 993, type: !87)
!1078 = !DILocation(line: 993, column: 46, scope: !1072)
!1079 = !DILocation(line: 995, column: 58, scope: !1072)
!1080 = !DILocation(line: 995, column: 62, scope: !1072)
!1081 = !DILocation(line: 995, column: 44, scope: !1072)
!1082 = !DILocation(line: 995, column: 5, scope: !1072)
!1083 = !DILocation(line: 997, column: 9, scope: !1072)
!1084 = !DILocation(line: 997, column: 13, scope: !1072)
!1085 = !DILocation(line: 997, column: 28, scope: !1072)
!1086 = !DILocation(line: 997, column: 32, scope: !1072)
!1087 = !DILocation(line: 997, column: 19, scope: !1072)
!1088 = !DILocation(line: 996, column: 5, scope: !1072)
!1089 = !DILocation(line: 999, column: 9, scope: !1072)
!1090 = !DILocation(line: 999, column: 13, scope: !1072)
!1091 = !DILocation(line: 999, column: 30, scope: !1072)
!1092 = !DILocation(line: 999, column: 34, scope: !1072)
!1093 = !DILocation(line: 999, column: 20, scope: !1072)
!1094 = !DILocation(line: 998, column: 5, scope: !1072)
!1095 = !DILocation(line: 1001, column: 9, scope: !1072)
!1096 = !DILocation(line: 1001, column: 13, scope: !1072)
!1097 = !DILocation(line: 1001, column: 26, scope: !1072)
!1098 = !DILocation(line: 1001, column: 30, scope: !1072)
!1099 = !DILocation(line: 1001, column: 18, scope: !1072)
!1100 = !DILocation(line: 1000, column: 5, scope: !1072)
!1101 = !DILocation(line: 1002, column: 45, scope: !1072)
!1102 = !DILocation(line: 1002, column: 49, scope: !1072)
!1103 = !DILocation(line: 1002, column: 5, scope: !1072)
!1104 = !DILocation(line: 1004, column: 22, scope: !1072)
!1105 = !DILocation(line: 1004, column: 26, scope: !1072)
!1106 = !DILocation(line: 1004, column: 32, scope: !1072)
!1107 = !DILocation(line: 1004, column: 41, scope: !1072)
!1108 = !DILocation(line: 1004, column: 45, scope: !1072)
!1109 = !DILocation(line: 1004, column: 9, scope: !1072)
!1110 = !DILocation(line: 1003, column: 5, scope: !1072)
!1111 = !DILocation(line: 1005, column: 1, scope: !1072)
!1112 = distinct !DISubprogram(name: "dump_data", scope: !10, file: !10, line: 1008, type: !1113, scopeLine: 1009, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1113 = !DISubroutineType(types: !1114)
!1114 = !{null, !1115, !1131, !87}
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 32)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !1117, line: 11, size: 128, elements: !1118)
!1117 = !DIFile(filename: "/data/wasi-sdk/build/wasi-sdk-14.0/share/wasi-sysroot/include/__struct_sockaddr_in.h", directory: "")
!1118 = !{!1119, !1121, !1124}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !1116, file: !1117, line: 12, baseType: !1120, size: 16, align: 128)
!1120 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !176, line: 417, baseType: !17)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !1116, file: !1117, line: 13, baseType: !1122, size: 16, offset: 16)
!1122 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !1123, line: 4, baseType: !17)
!1123 = !DIFile(filename: "/data/wasi-sdk/build/wasi-sdk-14.0/share/wasi-sysroot/include/__typedef_in_port_t.h", directory: "")
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !1116, file: !1117, line: 14, baseType: !1125, size: 32, offset: 32)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !1126, line: 6, size: 32, elements: !1127)
!1126 = !DIFile(filename: "/data/wasi-sdk/build/wasi-sdk-14.0/share/wasi-sysroot/include/__struct_in_addr.h", directory: "")
!1127 = !{!1128}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !1125, file: !1126, line: 7, baseType: !1129, size: 32)
!1129 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !1130, line: 4, baseType: !20)
!1130 = !DIFile(filename: "/data/wasi-sdk/build/wasi-sdk-14.0/share/wasi-sysroot/include/__typedef_in_addr_t.h", directory: "")
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 32)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in6", file: !1133, line: 11, size: 256, elements: !1134)
!1133 = !DIFile(filename: "/data/wasi-sdk/build/wasi-sdk-14.0/share/wasi-sysroot/include/__struct_sockaddr_in6.h", directory: "")
!1134 = !{!1135, !1136, !1137, !1138, !1146}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_family", scope: !1132, file: !1133, line: 12, baseType: !1120, size: 16, align: 128)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_port", scope: !1132, file: !1133, line: 13, baseType: !1122, size: 16, offset: 16)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_flowinfo", scope: !1132, file: !1133, line: 14, baseType: !20, size: 32, offset: 32)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !1132, file: !1133, line: 15, baseType: !1139, size: 128, offset: 64)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !1140, line: 4, size: 128, elements: !1141)
!1140 = !DIFile(filename: "/data/wasi-sdk/build/wasi-sdk-14.0/share/wasi-sysroot/include/__struct_in6_addr.h", directory: "")
!1141 = !{!1142}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "s6_addr", scope: !1139, file: !1140, line: 5, baseType: !1143, size: 128, align: 32)
!1143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 128, elements: !1144)
!1144 = !{!1145}
!1145 = !DISubrange(count: 16)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_scope_id", scope: !1132, file: !1133, line: 16, baseType: !20, size: 32, offset: 192)
!1147 = !DILocalVariable(name: "dest4", arg: 1, scope: !1112, file: !10, line: 1008, type: !1115)
!1148 = !DILocation(line: 1008, column: 31, scope: !1112)
!1149 = !DILocalVariable(name: "dest6", arg: 2, scope: !1112, file: !10, line: 1008, type: !1131)
!1150 = !DILocation(line: 1008, column: 59, scope: !1112)
!1151 = !DILocalVariable(name: "session", arg: 3, scope: !1112, file: !10, line: 1008, type: !87)
!1152 = !DILocation(line: 1008, column: 85, scope: !1112)
!1153 = !DILocalVariable(name: "answerrr", scope: !1112, file: !10, line: 1010, type: !8)
!1154 = !DILocation(line: 1010, column: 19, scope: !1112)
!1155 = !DILocalVariable(name: "authorityrr", scope: !1112, file: !10, line: 1011, type: !8)
!1156 = !DILocation(line: 1011, column: 19, scope: !1112)
!1157 = !DILocalVariable(name: "additionalrr", scope: !1112, file: !10, line: 1012, type: !8)
!1158 = !DILocation(line: 1012, column: 19, scope: !1112)
!1159 = !DILocation(line: 1014, column: 9, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1112, file: !10, line: 1014, column: 9)
!1161 = !DILocation(line: 1014, column: 17, scope: !1160)
!1162 = !DILocation(line: 1014, column: 9, scope: !1112)
!1163 = !DILocation(line: 1014, column: 23, scope: !1160)
!1164 = !DILocation(line: 1020, column: 9, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1112, file: !10, line: 1020, column: 9)
!1166 = !DILocation(line: 1020, column: 15, scope: !1165)
!1167 = !DILocation(line: 1020, column: 9, scope: !1112)
!1168 = !DILocation(line: 1021, column: 2, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1165, file: !10, line: 1020, column: 24)
!1170 = !DILocation(line: 1022, column: 51, scope: !1169)
!1171 = !DILocation(line: 1022, column: 58, scope: !1169)
!1172 = !DILocation(line: 1022, column: 41, scope: !1169)
!1173 = !DILocation(line: 1022, column: 2, scope: !1169)
!1174 = !DILocation(line: 1023, column: 5, scope: !1169)
!1175 = !DILocation(line: 1024, column: 9, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1112, file: !10, line: 1024, column: 9)
!1177 = !DILocation(line: 1024, column: 15, scope: !1176)
!1178 = !DILocation(line: 1024, column: 9, scope: !1112)
!1179 = !DILocation(line: 1025, column: 2, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1176, file: !10, line: 1024, column: 24)
!1181 = !DILocation(line: 1026, column: 2, scope: !1180)
!1182 = !DILocation(line: 1027, column: 5, scope: !1180)
!1183 = !DILocation(line: 1029, column: 9, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1112, file: !10, line: 1029, column: 9)
!1185 = !DILocation(line: 1029, column: 18, scope: !1184)
!1186 = !DILocation(line: 1029, column: 30, scope: !1184)
!1187 = !DILocation(line: 1029, column: 38, scope: !1184)
!1188 = !DILocation(line: 1029, column: 41, scope: !1184)
!1189 = !DILocation(line: 1029, column: 50, scope: !1184)
!1190 = !DILocation(line: 1029, column: 62, scope: !1184)
!1191 = !DILocation(line: 1029, column: 9, scope: !1112)
!1192 = !DILocation(line: 1030, column: 2, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1184, file: !10, line: 1029, column: 71)
!1194 = !DILocation(line: 1031, column: 14, scope: !1193)
!1195 = !DILocation(line: 1031, column: 23, scope: !1193)
!1196 = !DILocation(line: 1031, column: 2, scope: !1193)
!1197 = !DILocation(line: 1032, column: 5, scope: !1193)
!1198 = !DILocation(line: 1034, column: 9, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1112, file: !10, line: 1034, column: 9)
!1200 = !DILocation(line: 1034, column: 18, scope: !1199)
!1201 = !DILocation(line: 1034, column: 30, scope: !1199)
!1202 = !DILocation(line: 1034, column: 9, scope: !1112)
!1203 = !DILocation(line: 1035, column: 2, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1199, file: !10, line: 1034, column: 39)
!1205 = !DILocation(line: 1036, column: 14, scope: !1204)
!1206 = !DILocation(line: 1036, column: 23, scope: !1204)
!1207 = !DILocation(line: 1036, column: 2, scope: !1204)
!1208 = !DILocation(line: 1037, column: 5, scope: !1204)
!1209 = !DILocation(line: 1039, column: 9, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1112, file: !10, line: 1039, column: 9)
!1211 = !DILocation(line: 1039, column: 18, scope: !1210)
!1212 = !DILocation(line: 1039, column: 32, scope: !1210)
!1213 = !DILocation(line: 1039, column: 40, scope: !1210)
!1214 = !DILocation(line: 1039, column: 43, scope: !1210)
!1215 = !DILocation(line: 1039, column: 52, scope: !1210)
!1216 = !DILocation(line: 1039, column: 66, scope: !1210)
!1217 = !DILocation(line: 1039, column: 9, scope: !1112)
!1218 = !DILocation(line: 1040, column: 2, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1210, file: !10, line: 1039, column: 75)
!1220 = !DILocation(line: 1041, column: 16, scope: !1219)
!1221 = !DILocation(line: 1041, column: 25, scope: !1219)
!1222 = !DILocation(line: 1041, column: 2, scope: !1219)
!1223 = !DILocation(line: 1042, column: 5, scope: !1219)
!1224 = !DILocation(line: 1043, column: 9, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1112, file: !10, line: 1043, column: 9)
!1226 = !DILocation(line: 1043, column: 18, scope: !1225)
!1227 = !DILocation(line: 1043, column: 32, scope: !1225)
!1228 = !DILocation(line: 1043, column: 9, scope: !1112)
!1229 = !DILocation(line: 1044, column: 2, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1225, file: !10, line: 1043, column: 41)
!1231 = !DILocation(line: 1045, column: 16, scope: !1230)
!1232 = !DILocation(line: 1045, column: 25, scope: !1230)
!1233 = !DILocation(line: 1045, column: 2, scope: !1230)
!1234 = !DILocation(line: 1046, column: 5, scope: !1230)
!1235 = !DILocation(line: 1048, column: 16, scope: !1112)
!1236 = !DILocation(line: 1048, column: 25, scope: !1112)
!1237 = !DILocation(line: 1048, column: 14, scope: !1112)
!1238 = !DILocation(line: 1049, column: 5, scope: !1112)
!1239 = !DILocation(line: 1049, column: 12, scope: !1112)
!1240 = !DILocation(line: 1049, column: 21, scope: !1112)
!1241 = !DILocation(line: 1050, column: 2, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1112, file: !10, line: 1049, column: 30)
!1243 = !DILocation(line: 1051, column: 10, scope: !1242)
!1244 = !DILocation(line: 1051, column: 20, scope: !1242)
!1245 = !DILocation(line: 1051, column: 2, scope: !1242)
!1246 = !DILocation(line: 1052, column: 13, scope: !1242)
!1247 = !DILocation(line: 1052, column: 23, scope: !1242)
!1248 = !DILocation(line: 1052, column: 11, scope: !1242)
!1249 = distinct !{!1249, !1238, !1250, !309}
!1250 = !DILocation(line: 1053, column: 5, scope: !1112)
!1251 = !DILocation(line: 1055, column: 19, scope: !1112)
!1252 = !DILocation(line: 1055, column: 28, scope: !1112)
!1253 = !DILocation(line: 1055, column: 17, scope: !1112)
!1254 = !DILocation(line: 1056, column: 5, scope: !1112)
!1255 = !DILocation(line: 1056, column: 12, scope: !1112)
!1256 = !DILocation(line: 1056, column: 24, scope: !1112)
!1257 = !DILocation(line: 1057, column: 2, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1112, file: !10, line: 1056, column: 33)
!1259 = !DILocation(line: 1058, column: 10, scope: !1258)
!1260 = !DILocation(line: 1058, column: 23, scope: !1258)
!1261 = !DILocation(line: 1058, column: 2, scope: !1258)
!1262 = !DILocation(line: 1059, column: 16, scope: !1258)
!1263 = !DILocation(line: 1059, column: 29, scope: !1258)
!1264 = !DILocation(line: 1059, column: 14, scope: !1258)
!1265 = distinct !{!1265, !1254, !1266, !309}
!1266 = !DILocation(line: 1060, column: 5, scope: !1112)
!1267 = !DILocation(line: 1062, column: 20, scope: !1112)
!1268 = !DILocation(line: 1062, column: 29, scope: !1112)
!1269 = !DILocation(line: 1062, column: 18, scope: !1112)
!1270 = !DILocation(line: 1063, column: 5, scope: !1112)
!1271 = !DILocation(line: 1063, column: 12, scope: !1112)
!1272 = !DILocation(line: 1063, column: 25, scope: !1112)
!1273 = !DILocation(line: 1064, column: 2, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1112, file: !10, line: 1063, column: 34)
!1275 = !DILocation(line: 1065, column: 10, scope: !1274)
!1276 = !DILocation(line: 1065, column: 24, scope: !1274)
!1277 = !DILocation(line: 1065, column: 2, scope: !1274)
!1278 = !DILocation(line: 1066, column: 17, scope: !1274)
!1279 = !DILocation(line: 1066, column: 31, scope: !1274)
!1280 = !DILocation(line: 1066, column: 15, scope: !1274)
!1281 = distinct !{!1281, !1270, !1282, !309}
!1282 = !DILocation(line: 1067, column: 5, scope: !1112)
!1283 = !DILocation(line: 1068, column: 1, scope: !1112)
!1284 = distinct !DISubprogram(name: "create_packet", scope: !10, file: !10, line: 1077, type: !1285, scopeLine: 1078, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1285 = !DISubroutineType(types: !1286)
!1286 = !{!13, !87}
!1287 = !DILocalVariable(name: "session", arg: 1, scope: !1284, file: !10, line: 1077, type: !87)
!1288 = !DILocation(line: 1077, column: 34, scope: !1284)
!1289 = !DILocalVariable(name: "pkt", scope: !1284, file: !10, line: 1079, type: !13)
!1290 = !DILocation(line: 1079, column: 21, scope: !1284)
!1291 = !DILocalVariable(name: "nheader", scope: !1284, file: !10, line: 1080, type: !26)
!1292 = !DILocation(line: 1080, column: 22, scope: !1284)
!1293 = !DILocalVariable(name: "nquestion", scope: !1284, file: !10, line: 1081, type: !49)
!1294 = !DILocation(line: 1081, column: 24, scope: !1284)
!1295 = !DILocalVariable(name: "len", scope: !1284, file: !10, line: 1082, type: !73)
!1296 = !DILocation(line: 1082, column: 11, scope: !1284)
!1297 = !DILocation(line: 1089, column: 38, scope: !1284)
!1298 = !DILocation(line: 1089, column: 47, scope: !1284)
!1299 = !DILocation(line: 1089, column: 62, scope: !1284)
!1300 = !DILocation(line: 1089, column: 36, scope: !1284)
!1301 = !DILocation(line: 1089, column: 74, scope: !1284)
!1302 = !DILocation(line: 1089, column: 9, scope: !1284)
!1303 = !DILocation(line: 1090, column: 38, scope: !1284)
!1304 = !DILocation(line: 1090, column: 28, scope: !1284)
!1305 = !DILocation(line: 1090, column: 9, scope: !1284)
!1306 = !DILocation(line: 1092, column: 5, scope: !1284)
!1307 = !DILocation(line: 1092, column: 22, scope: !1284)
!1308 = !DILocation(line: 1092, column: 31, scope: !1284)
!1309 = !DILocation(line: 1093, column: 5, scope: !1284)
!1310 = !DILocation(line: 1093, column: 24, scope: !1284)
!1311 = !DILocation(line: 1093, column: 33, scope: !1284)
!1312 = !DILocation(line: 1095, column: 36, scope: !1284)
!1313 = !DILocation(line: 1095, column: 45, scope: !1284)
!1314 = !DILocation(line: 1095, column: 58, scope: !1284)
!1315 = !DILocation(line: 1095, column: 30, scope: !1284)
!1316 = !DILocation(line: 1095, column: 13, scope: !1284)
!1317 = !DILocation(line: 1095, column: 28, scope: !1284)
!1318 = !DILocation(line: 1096, column: 33, scope: !1284)
!1319 = !DILocation(line: 1096, column: 42, scope: !1284)
!1320 = !DILocation(line: 1096, column: 55, scope: !1284)
!1321 = !DILocation(line: 1096, column: 61, scope: !1284)
!1322 = !DILocation(line: 1096, column: 27, scope: !1284)
!1323 = !DILocation(line: 1096, column: 13, scope: !1284)
!1324 = !DILocation(line: 1096, column: 19, scope: !1284)
!1325 = !DILocation(line: 1096, column: 25, scope: !1284)
!1326 = !DILocation(line: 1097, column: 32, scope: !1284)
!1327 = !DILocation(line: 1097, column: 41, scope: !1284)
!1328 = !DILocation(line: 1097, column: 54, scope: !1284)
!1329 = !DILocation(line: 1097, column: 26, scope: !1284)
!1330 = !DILocation(line: 1097, column: 13, scope: !1284)
!1331 = !DILocation(line: 1097, column: 24, scope: !1284)
!1332 = !DILocation(line: 1098, column: 31, scope: !1284)
!1333 = !DILocation(line: 1098, column: 40, scope: !1284)
!1334 = !DILocation(line: 1098, column: 53, scope: !1284)
!1335 = !DILocation(line: 1098, column: 25, scope: !1284)
!1336 = !DILocation(line: 1098, column: 13, scope: !1284)
!1337 = !DILocation(line: 1098, column: 23, scope: !1284)
!1338 = !DILocation(line: 1099, column: 34, scope: !1284)
!1339 = !DILocation(line: 1099, column: 43, scope: !1284)
!1340 = !DILocation(line: 1099, column: 56, scope: !1284)
!1341 = !DILocation(line: 1099, column: 28, scope: !1284)
!1342 = !DILocation(line: 1099, column: 13, scope: !1284)
!1343 = !DILocation(line: 1099, column: 26, scope: !1284)
!1344 = !DILocation(line: 1100, column: 35, scope: !1284)
!1345 = !DILocation(line: 1100, column: 44, scope: !1284)
!1346 = !DILocation(line: 1100, column: 57, scope: !1284)
!1347 = !DILocation(line: 1100, column: 29, scope: !1284)
!1348 = !DILocation(line: 1100, column: 13, scope: !1284)
!1349 = !DILocation(line: 1100, column: 27, scope: !1284)
!1350 = !DILocation(line: 1102, column: 28, scope: !1284)
!1351 = !DILocation(line: 1102, column: 37, scope: !1284)
!1352 = !DILocation(line: 1102, column: 52, scope: !1284)
!1353 = !DILocation(line: 1102, column: 22, scope: !1284)
!1354 = !DILocation(line: 1102, column: 15, scope: !1284)
!1355 = !DILocation(line: 1102, column: 20, scope: !1284)
!1356 = !DILocation(line: 1103, column: 29, scope: !1284)
!1357 = !DILocation(line: 1103, column: 38, scope: !1284)
!1358 = !DILocation(line: 1103, column: 53, scope: !1284)
!1359 = !DILocation(line: 1103, column: 23, scope: !1284)
!1360 = !DILocation(line: 1103, column: 15, scope: !1284)
!1361 = !DILocation(line: 1103, column: 21, scope: !1284)
!1362 = !DILocation(line: 1105, column: 12, scope: !1284)
!1363 = !DILocation(line: 1105, column: 5, scope: !1284)
!1364 = !DILocation(line: 1106, column: 12, scope: !1284)
!1365 = !DILocation(line: 1106, column: 16, scope: !1284)
!1366 = !DILocation(line: 1106, column: 54, scope: !1284)
!1367 = !DILocation(line: 1106, column: 71, scope: !1284)
!1368 = !DILocation(line: 1106, column: 5, scope: !1284)
!1369 = !DILocation(line: 1107, column: 12, scope: !1284)
!1370 = !DILocation(line: 1107, column: 16, scope: !1284)
!1371 = !DILocation(line: 1107, column: 55, scope: !1284)
!1372 = !DILocation(line: 1107, column: 43, scope: !1284)
!1373 = !DILocation(line: 1107, column: 80, scope: !1284)
!1374 = !DILocation(line: 1107, column: 5, scope: !1284)
!1375 = !DILocation(line: 1109, column: 12, scope: !1284)
!1376 = !DILocation(line: 1109, column: 5, scope: !1284)
!1377 = distinct !DISubprogram(name: "create_socket", scope: !10, file: !10, line: 1119, type: !1378, scopeLine: 1120, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1378 = !DISubroutineType(types: !1379)
!1379 = !{!73, !73}
!1380 = !DILocalVariable(name: "PF", arg: 1, scope: !1377, file: !10, line: 1119, type: !73)
!1381 = !DILocation(line: 1119, column: 19, scope: !1377)
!1382 = !DILocalVariable(name: "s", scope: !1377, file: !10, line: 1121, type: !73)
!1383 = !DILocation(line: 1121, column: 9, scope: !1377)
!1384 = !DILocation(line: 1123, column: 21, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1377, file: !10, line: 1123, column: 9)
!1386 = !DILocation(line: 1123, column: 14, scope: !1385)
!1387 = !DILocation(line: 1123, column: 12, scope: !1385)
!1388 = !DILocation(line: 1123, column: 41, scope: !1385)
!1389 = !DILocation(line: 1123, column: 9, scope: !1377)
!1390 = !DILocation(line: 1124, column: 2, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1385, file: !10, line: 1123, column: 46)
!1392 = !DILocation(line: 1125, column: 2, scope: !1391)
!1393 = !DILocation(line: 1126, column: 2, scope: !1391)
!1394 = !DILocation(line: 1129, column: 9, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1377, file: !10, line: 1129, column: 9)
!1396 = !DILocation(line: 1129, column: 31, scope: !1395)
!1397 = !DILocation(line: 1129, column: 9, scope: !1377)
!1398 = !DILocalVariable(name: "hints", scope: !1399, file: !10, line: 1130, type: !1400)
!1399 = distinct !DILexicalBlock(scope: !1395, file: !10, line: 1129, column: 40)
!1400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "addrinfo", file: !10, line: 170, size: 256, elements: !1401)
!1401 = !{!1402, !1403, !1404, !1405, !1406, !1408, !1409, !1410}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "ai_flags", scope: !1400, file: !10, line: 171, baseType: !73, size: 32)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "ai_family", scope: !1400, file: !10, line: 172, baseType: !73, size: 32, offset: 32)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "ai_socktype", scope: !1400, file: !10, line: 173, baseType: !73, size: 32, offset: 64)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "ai_protocol", scope: !1400, file: !10, line: 174, baseType: !73, size: 32, offset: 96)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "ai_addrlen", scope: !1400, file: !10, line: 175, baseType: !1407, size: 32, offset: 128)
!1407 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !176, line: 412, baseType: !20)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "ai_canonname", scope: !1400, file: !10, line: 176, baseType: !6, size: 32, offset: 160)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "ai_addr", scope: !1400, file: !10, line: 177, baseType: !56, size: 32, offset: 192)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "ai_next", scope: !1400, file: !10, line: 178, baseType: !1411, size: 32, offset: 224)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 32)
!1412 = !DILocation(line: 1130, column: 18, scope: !1399)
!1413 = !DILocalVariable(name: "src_res", scope: !1399, file: !10, line: 1130, type: !1411)
!1414 = !DILocation(line: 1130, column: 26, scope: !1399)
!1415 = !DILocalVariable(name: "error", scope: !1399, file: !10, line: 1131, type: !73)
!1416 = !DILocation(line: 1131, column: 6, scope: !1399)
!1417 = !DILocation(line: 1134, column: 9, scope: !1399)
!1418 = !DILocation(line: 1135, column: 15, scope: !1399)
!1419 = !DILocation(line: 1135, column: 24, scope: !1399)
!1420 = !DILocation(line: 1136, column: 15, scope: !1399)
!1421 = !DILocation(line: 1136, column: 25, scope: !1399)
!1422 = !DILocation(line: 1137, column: 15, scope: !1399)
!1423 = !DILocation(line: 1137, column: 27, scope: !1399)
!1424 = !DILocation(line: 1138, column: 29, scope: !1399)
!1425 = !DILocation(line: 1138, column: 55, scope: !1399)
!1426 = !DILocation(line: 1138, column: 63, scope: !1399)
!1427 = !DILocation(line: 1138, column: 17, scope: !1399)
!1428 = !DILocation(line: 1138, column: 15, scope: !1399)
!1429 = !DILocation(line: 1139, column: 13, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1399, file: !10, line: 1139, column: 13)
!1431 = !DILocation(line: 1139, column: 19, scope: !1430)
!1432 = !DILocation(line: 1139, column: 13, scope: !1399)
!1433 = !DILocation(line: 1140, column: 12, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1430, file: !10, line: 1139, column: 34)
!1435 = !DILocation(line: 1140, column: 21, scope: !1434)
!1436 = !DILocation(line: 1141, column: 26, scope: !1434)
!1437 = !DILocation(line: 1141, column: 52, scope: !1434)
!1438 = !DILocation(line: 1141, column: 60, scope: !1434)
!1439 = !DILocation(line: 1141, column: 14, scope: !1434)
!1440 = !DILocation(line: 1141, column: 12, scope: !1434)
!1441 = !DILocation(line: 1142, column: 9, scope: !1434)
!1442 = !DILocation(line: 1143, column: 13, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1399, file: !10, line: 1143, column: 13)
!1444 = !DILocation(line: 1143, column: 19, scope: !1443)
!1445 = !DILocation(line: 1143, column: 13, scope: !1399)
!1446 = !DILocation(line: 1144, column: 13, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1443, file: !10, line: 1143, column: 25)
!1448 = !DILocation(line: 1144, column: 6, scope: !1447)
!1449 = !DILocation(line: 1145, column: 10, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1447, file: !10, line: 1145, column: 10)
!1451 = !DILocation(line: 1145, column: 16, scope: !1450)
!1452 = !DILocation(line: 1145, column: 10, scope: !1447)
!1453 = !DILocation(line: 1146, column: 10, scope: !1450)
!1454 = !DILocation(line: 1146, column: 3, scope: !1450)
!1455 = !DILocation(line: 1147, column: 6, scope: !1447)
!1456 = !DILocation(line: 1150, column: 11, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1399, file: !10, line: 1150, column: 6)
!1458 = !DILocation(line: 1150, column: 14, scope: !1457)
!1459 = !DILocation(line: 1150, column: 23, scope: !1457)
!1460 = !DILocation(line: 1150, column: 32, scope: !1457)
!1461 = !DILocation(line: 1150, column: 41, scope: !1457)
!1462 = !DILocation(line: 1150, column: 6, scope: !1457)
!1463 = !DILocation(line: 1150, column: 53, scope: !1457)
!1464 = !DILocation(line: 1150, column: 6, scope: !1399)
!1465 = !DILocation(line: 1151, column: 6, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1457, file: !10, line: 1150, column: 58)
!1467 = !DILocation(line: 1152, column: 6, scope: !1466)
!1468 = !DILocation(line: 1154, column: 5, scope: !1399)
!1469 = !DILocation(line: 1156, column: 12, scope: !1377)
!1470 = !DILocation(line: 1156, column: 5, scope: !1377)
!1471 = distinct !DISubprogram(name: "send_data", scope: !10, file: !10, line: 1160, type: !1472, scopeLine: 1161, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1472 = !DISubroutineType(types: !1473)
!1473 = !{!73, !6, !87}
!1474 = !DILocalVariable(name: "server", arg: 1, scope: !1471, file: !10, line: 1160, type: !6)
!1475 = !DILocation(line: 1160, column: 17, scope: !1471)
!1476 = !DILocalVariable(name: "session", arg: 2, scope: !1471, file: !10, line: 1160, type: !87)
!1477 = !DILocation(line: 1160, column: 44, scope: !1471)
!1478 = !DILocalVariable(name: "cc", scope: !1471, file: !10, line: 1162, type: !73)
!1479 = !DILocation(line: 1162, column: 10, scope: !1471)
!1480 = !DILocalVariable(name: "pkt", scope: !1471, file: !10, line: 1163, type: !6)
!1481 = !DILocation(line: 1163, column: 12, scope: !1471)
!1482 = !DILocalVariable(name: "len", scope: !1471, file: !10, line: 1164, type: !73)
!1483 = !DILocation(line: 1164, column: 10, scope: !1471)
!1484 = !DILocalVariable(name: "dest4", scope: !1471, file: !10, line: 1165, type: !1116)
!1485 = !DILocation(line: 1165, column: 24, scope: !1471)
!1486 = !DILocalVariable(name: "dest6", scope: !1471, file: !10, line: 1167, type: !1132)
!1487 = !DILocation(line: 1167, column: 25, scope: !1471)
!1488 = !DILocation(line: 1170, column: 38, scope: !1471)
!1489 = !DILocation(line: 1170, column: 47, scope: !1471)
!1490 = !DILocation(line: 1170, column: 62, scope: !1471)
!1491 = !DILocation(line: 1170, column: 36, scope: !1471)
!1492 = !DILocation(line: 1170, column: 74, scope: !1471)
!1493 = !DILocation(line: 1170, column: 9, scope: !1471)
!1494 = !DILocation(line: 1173, column: 9, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1471, file: !10, line: 1173, column: 9)
!1496 = !DILocation(line: 1173, column: 18, scope: !1495)
!1497 = !DILocation(line: 1173, column: 9, scope: !1471)
!1498 = !DILocation(line: 1174, column: 2, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1495, file: !10, line: 1173, column: 24)
!1500 = !DILocation(line: 1175, column: 8, scope: !1499)
!1501 = !DILocation(line: 1175, column: 20, scope: !1499)
!1502 = !DILocation(line: 1176, column: 20, scope: !1499)
!1503 = !DILocation(line: 1176, column: 8, scope: !1499)
!1504 = !DILocation(line: 1176, column: 18, scope: !1499)
!1505 = !DILocation(line: 1177, column: 22, scope: !1499)
!1506 = !DILocation(line: 1177, column: 37, scope: !1499)
!1507 = !DILocation(line: 1177, column: 30, scope: !1499)
!1508 = !DILocation(line: 1177, column: 2, scope: !1499)
!1509 = !DILocation(line: 1179, column: 26, scope: !1499)
!1510 = !DILocation(line: 1179, column: 2, scope: !1499)
!1511 = !DILocation(line: 1181, column: 5, scope: !1499)
!1512 = !DILocation(line: 1184, column: 2, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1495, file: !10, line: 1183, column: 5)
!1514 = !DILocation(line: 1185, column: 8, scope: !1513)
!1515 = !DILocation(line: 1185, column: 19, scope: !1513)
!1516 = !DILocation(line: 1186, column: 19, scope: !1513)
!1517 = !DILocation(line: 1186, column: 8, scope: !1513)
!1518 = !DILocation(line: 1186, column: 17, scope: !1513)
!1519 = !DILocation(line: 1187, column: 36, scope: !1513)
!1520 = !DILocation(line: 1187, column: 26, scope: !1513)
!1521 = !DILocation(line: 1187, column: 8, scope: !1513)
!1522 = !DILocation(line: 1187, column: 17, scope: !1513)
!1523 = !DILocation(line: 1187, column: 24, scope: !1513)
!1524 = !DILocation(line: 1189, column: 26, scope: !1513)
!1525 = !DILocation(line: 1189, column: 2, scope: !1513)
!1526 = !DILocation(line: 1192, column: 25, scope: !1471)
!1527 = !DILocation(line: 1192, column: 11, scope: !1471)
!1528 = !DILocation(line: 1192, column: 9, scope: !1471)
!1529 = !DILocation(line: 1193, column: 22, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1471, file: !10, line: 1193, column: 9)
!1531 = !DILocation(line: 1193, column: 31, scope: !1530)
!1532 = !DILocation(line: 1193, column: 39, scope: !1530)
!1533 = !DILocation(line: 1193, column: 44, scope: !1530)
!1534 = !DILocation(line: 1195, column: 6, scope: !1530)
!1535 = !DILocation(line: 1195, column: 15, scope: !1530)
!1536 = !DILocation(line: 1195, column: 22, scope: !1530)
!1537 = !DILocation(line: 1195, column: 50, scope: !1530)
!1538 = !DILocation(line: 1196, column: 6, scope: !1530)
!1539 = !DILocation(line: 1196, column: 15, scope: !1530)
!1540 = !DILocation(line: 1193, column: 15, scope: !1530)
!1541 = !DILocation(line: 1193, column: 13, scope: !1530)
!1542 = !DILocation(line: 1200, column: 5, scope: !1530)
!1543 = !DILocation(line: 1193, column: 9, scope: !1471)
!1544 = !DILocation(line: 1201, column: 6, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1530, file: !10, line: 1200, column: 12)
!1546 = !DILocation(line: 1202, column: 5, scope: !1545)
!1547 = !DILocation(line: 1204, column: 10, scope: !1471)
!1548 = !DILocation(line: 1204, column: 5, scope: !1471)
!1549 = !DILocation(line: 1205, column: 12, scope: !1471)
!1550 = !DILocation(line: 1205, column: 5, scope: !1471)
!1551 = distinct !DISubprogram(name: "receive_data", scope: !10, file: !10, line: 1209, type: !1552, scopeLine: 1210, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1552 = !DISubroutineType(types: !1553)
!1553 = !{!73, !87, !73}
!1554 = !DILocalVariable(name: "session", arg: 1, scope: !1551, file: !10, line: 1209, type: !87)
!1555 = !DILocation(line: 1209, column: 33, scope: !1551)
!1556 = !DILocalVariable(name: "retry", arg: 2, scope: !1551, file: !10, line: 1209, type: !73)
!1557 = !DILocation(line: 1209, column: 46, scope: !1551)
!1558 = !DILocalVariable(name: "buffer", scope: !1551, file: !10, line: 1211, type: !1559)
!1559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 16384, elements: !1560)
!1560 = !{!1561}
!1561 = !DISubrange(count: 2048)
!1562 = !DILocation(line: 1211, column: 11, scope: !1551)
!1563 = !DILocalVariable(name: "len", scope: !1551, file: !10, line: 1212, type: !73)
!1564 = !DILocation(line: 1212, column: 11, scope: !1551)
!1565 = !DILocalVariable(name: "in_set", scope: !1551, file: !10, line: 1213, type: !1566)
!1566 = !DIDerivedType(tag: DW_TAG_typedef, name: "fd_set", file: !1567, line: 12, baseType: !1568)
!1567 = !DIFile(filename: "/data/wasi-sdk/build/wasi-sdk-14.0/share/wasi-sysroot/include/__typedef_fd_set.h", directory: "")
!1568 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1567, line: 9, size: 32800, elements: !1569)
!1569 = !{!1570, !1571}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "__nfds", scope: !1568, file: !1567, line: 10, baseType: !175, size: 32)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "__fds", scope: !1568, file: !1567, line: 11, baseType: !1572, size: 32768, offset: 32)
!1572 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 32768, elements: !1573)
!1573 = !{!1574}
!1574 = !DISubrange(count: 1024)
!1575 = !DILocation(line: 1213, column: 13, scope: !1551)
!1576 = !DILocalVariable(name: "timeout", scope: !1551, file: !10, line: 1214, type: !1577)
!1577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !1578, line: 8, size: 128, elements: !1579)
!1578 = !DIFile(filename: "/data/wasi-sdk/build/wasi-sdk-14.0/share/wasi-sysroot/include/__struct_timeval.h", directory: "")
!1579 = !{!1580, !1584}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1577, file: !1578, line: 9, baseType: !1581, size: 64)
!1581 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !1582, line: 5, baseType: !1583)
!1582 = !DIFile(filename: "/data/wasi-sdk/build/wasi-sdk-14.0/share/wasi-sysroot/include/__typedef_time_t.h", directory: "")
!1583 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !1577, file: !1578, line: 10, baseType: !1585, size: 64, offset: 64)
!1585 = !DIDerivedType(tag: DW_TAG_typedef, name: "suseconds_t", file: !1586, line: 6, baseType: !1583)
!1586 = !DIFile(filename: "/data/wasi-sdk/build/wasi-sdk-14.0/share/wasi-sysroot/include/__typedef_suseconds_t.h", directory: "")
!1587 = !DILocation(line: 1214, column: 20, scope: !1551)
!1588 = !DILocation(line: 1216, column: 32, scope: !1551)
!1589 = !DILocation(line: 1216, column: 29, scope: !1551)
!1590 = !DILocation(line: 1216, column: 24, scope: !1551)
!1591 = !DILocation(line: 1216, column: 22, scope: !1551)
!1592 = !DILocation(line: 1216, column: 13, scope: !1551)
!1593 = !DILocation(line: 1216, column: 20, scope: !1551)
!1594 = !DILocation(line: 1217, column: 13, scope: !1551)
!1595 = !DILocation(line: 1217, column: 21, scope: !1551)
!1596 = !DILocation(line: 1218, column: 9, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1551, file: !10, line: 1218, column: 9)
!1598 = !DILocation(line: 1218, column: 24, scope: !1597)
!1599 = !DILocation(line: 1218, column: 35, scope: !1597)
!1600 = !DILocation(line: 1218, column: 44, scope: !1597)
!1601 = !DILocation(line: 1218, column: 42, scope: !1597)
!1602 = !DILocation(line: 1218, column: 9, scope: !1551)
!1603 = !DILocation(line: 1219, column: 19, scope: !1597)
!1604 = !DILocation(line: 1219, column: 10, scope: !1597)
!1605 = !DILocation(line: 1219, column: 17, scope: !1597)
!1606 = !DILocation(line: 1219, column: 2, scope: !1597)
!1607 = !DILocation(line: 1221, column: 5, scope: !1551)
!1608 = !DILocation(line: 1222, column: 5, scope: !1551)
!1609 = !DILocation(line: 1224, column: 16, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1551, file: !10, line: 1224, column: 9)
!1611 = !DILocation(line: 1224, column: 25, scope: !1610)
!1612 = !DILocation(line: 1224, column: 32, scope: !1610)
!1613 = !DILocation(line: 1224, column: 9, scope: !1610)
!1614 = !DILocation(line: 1224, column: 68, scope: !1610)
!1615 = !DILocation(line: 1224, column: 9, scope: !1551)
!1616 = !DILocation(line: 1225, column: 2, scope: !1610)
!1617 = !DILocation(line: 1226, column: 10, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1551, file: !10, line: 1226, column: 9)
!1619 = !DILocation(line: 1226, column: 9, scope: !1551)
!1620 = !DILocation(line: 1227, column: 2, scope: !1618)
!1621 = !DILocation(line: 1228, column: 21, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1551, file: !10, line: 1228, column: 9)
!1623 = !DILocation(line: 1228, column: 30, scope: !1622)
!1624 = !DILocation(line: 1228, column: 38, scope: !1622)
!1625 = !DILocation(line: 1228, column: 16, scope: !1622)
!1626 = !DILocation(line: 1228, column: 14, scope: !1622)
!1627 = !DILocation(line: 1228, column: 66, scope: !1622)
!1628 = !DILocation(line: 1228, column: 9, scope: !1551)
!1629 = !DILocation(line: 1229, column: 2, scope: !1622)
!1630 = !DILocation(line: 1231, column: 18, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1551, file: !10, line: 1231, column: 9)
!1632 = !DILocation(line: 1231, column: 9, scope: !1631)
!1633 = !DILocation(line: 1231, column: 29, scope: !1631)
!1634 = !DILocation(line: 1231, column: 38, scope: !1631)
!1635 = !DILocation(line: 1231, column: 51, scope: !1631)
!1636 = !DILocation(line: 1231, column: 26, scope: !1631)
!1637 = !DILocation(line: 1231, column: 9, scope: !1551)
!1638 = !DILocation(line: 1232, column: 10, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1631, file: !10, line: 1231, column: 67)
!1640 = !DILocation(line: 1233, column: 6, scope: !1639)
!1641 = !DILocation(line: 1233, column: 15, scope: !1639)
!1642 = !DILocation(line: 1233, column: 28, scope: !1639)
!1643 = !DILocation(line: 1233, column: 53, scope: !1639)
!1644 = !DILocation(line: 1233, column: 44, scope: !1639)
!1645 = !DILocation(line: 1232, column: 2, scope: !1639)
!1646 = !DILocation(line: 1234, column: 2, scope: !1639)
!1647 = !DILocation(line: 1237, column: 25, scope: !1551)
!1648 = !DILocation(line: 1237, column: 5, scope: !1551)
!1649 = !DILocation(line: 1237, column: 14, scope: !1551)
!1650 = !DILocation(line: 1237, column: 23, scope: !1551)
!1651 = !DILocation(line: 1238, column: 43, scope: !1551)
!1652 = !DILocation(line: 1238, column: 33, scope: !1551)
!1653 = !DILocation(line: 1238, column: 5, scope: !1551)
!1654 = !DILocation(line: 1238, column: 14, scope: !1551)
!1655 = !DILocation(line: 1238, column: 23, scope: !1551)
!1656 = !DILocation(line: 1239, column: 12, scope: !1551)
!1657 = !DILocation(line: 1239, column: 21, scope: !1551)
!1658 = !DILocation(line: 1239, column: 5, scope: !1551)
!1659 = !DILocation(line: 1239, column: 39, scope: !1551)
!1660 = !DILocation(line: 1240, column: 18, scope: !1551)
!1661 = !DILocation(line: 1240, column: 5, scope: !1551)
!1662 = !DILocation(line: 1241, column: 27, scope: !1551)
!1663 = !DILocation(line: 1241, column: 5, scope: !1551)
!1664 = !DILocation(line: 1242, column: 5, scope: !1551)
!1665 = !DILocation(line: 1243, column: 1, scope: !1551)
!1666 = distinct !DISubprogram(name: "FD_ZERO", scope: !1667, file: !1667, line: 55, type: !1668, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1667 = !DIFile(filename: "/data/wasi-sdk/build/wasi-sdk-14.0/share/wasi-sysroot/include/__fd_set.h", directory: "")
!1668 = !DISubroutineType(types: !1669)
!1669 = !{null, !1670}
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 32)
!1671 = !DILocalVariable(name: "__set", arg: 1, scope: !1666, file: !1667, line: 55, type: !1670)
!1672 = !DILocation(line: 55, column: 38, scope: !1666)
!1673 = !DILocation(line: 56, column: 5, scope: !1666)
!1674 = !DILocation(line: 56, column: 12, scope: !1666)
!1675 = !DILocation(line: 56, column: 19, scope: !1666)
!1676 = !DILocation(line: 57, column: 1, scope: !1666)
!1677 = distinct !DISubprogram(name: "FD_SET", scope: !1667, file: !1667, line: 42, type: !1678, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1678 = !DISubroutineType(types: !1679)
!1679 = !{null, !73, !1670}
!1680 = !DILocalVariable(name: "__fd", arg: 1, scope: !1677, file: !1667, line: 42, type: !73)
!1681 = !DILocation(line: 42, column: 33, scope: !1677)
!1682 = !DILocalVariable(name: "__set", arg: 2, scope: !1677, file: !1667, line: 42, type: !1670)
!1683 = !DILocation(line: 42, column: 47, scope: !1677)
!1684 = !DILocalVariable(name: "__n", scope: !1677, file: !1667, line: 43, type: !175)
!1685 = !DILocation(line: 43, column: 12, scope: !1677)
!1686 = !DILocation(line: 43, column: 18, scope: !1677)
!1687 = !DILocation(line: 43, column: 25, scope: !1677)
!1688 = !DILocalVariable(name: "__p", scope: !1689, file: !1667, line: 44, type: !1690)
!1689 = distinct !DILexicalBlock(scope: !1677, file: !1667, line: 44, column: 5)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 32)
!1691 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!1692 = !DILocation(line: 44, column: 21, scope: !1689)
!1693 = !DILocation(line: 44, column: 27, scope: !1689)
!1694 = !DILocation(line: 44, column: 34, scope: !1689)
!1695 = !DILocalVariable(name: "__e", scope: !1689, file: !1667, line: 44, type: !1690)
!1696 = !DILocation(line: 44, column: 42, scope: !1689)
!1697 = !DILocation(line: 44, column: 48, scope: !1689)
!1698 = !DILocation(line: 44, column: 54, scope: !1689)
!1699 = !DILocation(line: 44, column: 52, scope: !1689)
!1700 = !DILocation(line: 44, column: 10, scope: !1689)
!1701 = !DILocation(line: 45, column: 10, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1689, file: !1667, line: 44, column: 5)
!1703 = !DILocation(line: 45, column: 16, scope: !1702)
!1704 = !DILocation(line: 45, column: 14, scope: !1702)
!1705 = !DILocation(line: 44, column: 5, scope: !1689)
!1706 = !DILocation(line: 47, column: 14, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1708, file: !1667, line: 47, column: 13)
!1708 = distinct !DILexicalBlock(scope: !1702, file: !1667, line: 46, column: 5)
!1709 = !DILocation(line: 47, column: 13, scope: !1707)
!1710 = !DILocation(line: 47, column: 21, scope: !1707)
!1711 = !DILocation(line: 47, column: 18, scope: !1707)
!1712 = !DILocation(line: 47, column: 13, scope: !1708)
!1713 = !DILocation(line: 48, column: 13, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1707, file: !1667, line: 47, column: 27)
!1715 = !DILocation(line: 50, column: 5, scope: !1708)
!1716 = !DILocation(line: 45, column: 21, scope: !1702)
!1717 = !DILocation(line: 44, column: 5, scope: !1702)
!1718 = distinct !{!1718, !1705, !1719, !309}
!1719 = !DILocation(line: 50, column: 5, scope: !1689)
!1720 = !DILocation(line: 51, column: 21, scope: !1677)
!1721 = !DILocation(line: 51, column: 25, scope: !1677)
!1722 = !DILocation(line: 51, column: 5, scope: !1677)
!1723 = !DILocation(line: 51, column: 12, scope: !1677)
!1724 = !DILocation(line: 51, column: 19, scope: !1677)
!1725 = !DILocation(line: 52, column: 25, scope: !1677)
!1726 = !DILocation(line: 52, column: 5, scope: !1677)
!1727 = !DILocation(line: 52, column: 12, scope: !1677)
!1728 = !DILocation(line: 52, column: 18, scope: !1677)
!1729 = !DILocation(line: 52, column: 23, scope: !1677)
!1730 = !DILocation(line: 53, column: 1, scope: !1677)
!1731 = distinct !DISubprogram(name: "FD_ISSET", scope: !1667, file: !1667, line: 29, type: !1732, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1732 = !DISubroutineType(types: !1733)
!1733 = !{!1734, !73, !1735}
!1734 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 32)
!1736 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1566)
!1737 = !DILocalVariable(name: "__fd", arg: 1, scope: !1731, file: !1667, line: 29, type: !73)
!1738 = !DILocation(line: 29, column: 14, scope: !1731)
!1739 = !DILocalVariable(name: "__set", arg: 2, scope: !1731, file: !1667, line: 29, type: !1735)
!1740 = !DILocation(line: 29, column: 34, scope: !1731)
!1741 = !DILocalVariable(name: "__n", scope: !1731, file: !1667, line: 31, type: !175)
!1742 = !DILocation(line: 31, column: 12, scope: !1731)
!1743 = !DILocation(line: 31, column: 18, scope: !1731)
!1744 = !DILocation(line: 31, column: 25, scope: !1731)
!1745 = !DILocalVariable(name: "__p", scope: !1746, file: !1667, line: 32, type: !1690)
!1746 = distinct !DILexicalBlock(scope: !1731, file: !1667, line: 32, column: 5)
!1747 = !DILocation(line: 32, column: 21, scope: !1746)
!1748 = !DILocation(line: 32, column: 27, scope: !1746)
!1749 = !DILocation(line: 32, column: 34, scope: !1746)
!1750 = !DILocalVariable(name: "__e", scope: !1746, file: !1667, line: 32, type: !1690)
!1751 = !DILocation(line: 32, column: 42, scope: !1746)
!1752 = !DILocation(line: 32, column: 48, scope: !1746)
!1753 = !DILocation(line: 32, column: 54, scope: !1746)
!1754 = !DILocation(line: 32, column: 52, scope: !1746)
!1755 = !DILocation(line: 32, column: 10, scope: !1746)
!1756 = !DILocation(line: 33, column: 10, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1746, file: !1667, line: 32, column: 5)
!1758 = !DILocation(line: 33, column: 16, scope: !1757)
!1759 = !DILocation(line: 33, column: 14, scope: !1757)
!1760 = !DILocation(line: 32, column: 5, scope: !1746)
!1761 = !DILocation(line: 35, column: 14, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1763, file: !1667, line: 35, column: 13)
!1763 = distinct !DILexicalBlock(scope: !1757, file: !1667, line: 34, column: 5)
!1764 = !DILocation(line: 35, column: 13, scope: !1762)
!1765 = !DILocation(line: 35, column: 21, scope: !1762)
!1766 = !DILocation(line: 35, column: 18, scope: !1762)
!1767 = !DILocation(line: 35, column: 13, scope: !1763)
!1768 = !DILocation(line: 36, column: 13, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1762, file: !1667, line: 35, column: 27)
!1770 = !DILocation(line: 38, column: 5, scope: !1763)
!1771 = !DILocation(line: 33, column: 21, scope: !1757)
!1772 = !DILocation(line: 32, column: 5, scope: !1757)
!1773 = distinct !{!1773, !1760, !1774, !309}
!1774 = !DILocation(line: 38, column: 5, scope: !1746)
!1775 = !DILocation(line: 39, column: 5, scope: !1731)
!1776 = !DILocation(line: 40, column: 1, scope: !1731)
!1777 = distinct !DISubprogram(name: "create_header", scope: !10, file: !10, line: 1252, type: !632, scopeLine: 1253, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1778 = !DILocalVariable(name: "session", arg: 1, scope: !1777, file: !10, line: 1252, type: !87)
!1779 = !DILocation(line: 1252, column: 34, scope: !1777)
!1780 = !DILocation(line: 1255, column: 48, scope: !1777)
!1781 = !DILocation(line: 1255, column: 28, scope: !1777)
!1782 = !DILocation(line: 1255, column: 5, scope: !1777)
!1783 = !DILocation(line: 1255, column: 14, scope: !1777)
!1784 = !DILocation(line: 1255, column: 26, scope: !1777)
!1785 = !DILocation(line: 1263, column: 48, scope: !1777)
!1786 = !DILocation(line: 1263, column: 57, scope: !1777)
!1787 = !DILocation(line: 1263, column: 5, scope: !1777)
!1788 = !DILocation(line: 1263, column: 14, scope: !1777)
!1789 = !DILocation(line: 1263, column: 27, scope: !1777)
!1790 = !DILocation(line: 1263, column: 46, scope: !1777)
!1791 = !DILocation(line: 1264, column: 5, scope: !1777)
!1792 = !DILocation(line: 1264, column: 14, scope: !1777)
!1793 = !DILocation(line: 1264, column: 27, scope: !1777)
!1794 = !DILocation(line: 1264, column: 43, scope: !1777)
!1795 = !DILocation(line: 1265, column: 1, scope: !1777)
!1796 = distinct !DISubprogram(name: "create_question", scope: !10, file: !10, line: 1268, type: !1797, scopeLine: 1269, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1797 = !DISubroutineType(types: !1798)
!1798 = !{null, !87, !6}
!1799 = !DILocalVariable(name: "session", arg: 1, scope: !1796, file: !10, line: 1268, type: !87)
!1800 = !DILocation(line: 1268, column: 36, scope: !1796)
!1801 = !DILocalVariable(name: "name", arg: 2, scope: !1796, file: !10, line: 1268, type: !6)
!1802 = !DILocation(line: 1268, column: 51, scope: !1796)
!1803 = !DILocalVariable(name: "p", scope: !1796, file: !10, line: 1270, type: !6)
!1804 = !DILocation(line: 1270, column: 11, scope: !1796)
!1805 = !DILocalVariable(name: "q", scope: !1796, file: !10, line: 1270, type: !6)
!1806 = !DILocation(line: 1270, column: 15, scope: !1796)
!1807 = !DILocation(line: 1273, column: 24, scope: !1796)
!1808 = !DILocation(line: 1273, column: 2, scope: !1796)
!1809 = !DILocation(line: 1272, column: 5, scope: !1796)
!1810 = !DILocation(line: 1272, column: 14, scope: !1796)
!1811 = !DILocation(line: 1272, column: 28, scope: !1796)
!1812 = !DILocation(line: 1275, column: 50, scope: !1796)
!1813 = !DILocation(line: 1275, column: 43, scope: !1796)
!1814 = !DILocation(line: 1275, column: 56, scope: !1796)
!1815 = !DILocation(line: 1275, column: 5, scope: !1796)
!1816 = !DILocation(line: 1275, column: 14, scope: !1796)
!1817 = !DILocation(line: 1275, column: 29, scope: !1796)
!1818 = !DILocation(line: 1275, column: 41, scope: !1796)
!1819 = !DILocation(line: 1277, column: 29, scope: !1796)
!1820 = !DILocation(line: 1277, column: 38, scope: !1796)
!1821 = !DILocation(line: 1277, column: 53, scope: !1796)
!1822 = !DILocation(line: 1277, column: 65, scope: !1796)
!1823 = !DILocation(line: 1277, column: 19, scope: !1796)
!1824 = !DILocation(line: 1276, column: 5, scope: !1796)
!1825 = !DILocation(line: 1276, column: 14, scope: !1796)
!1826 = !DILocation(line: 1276, column: 29, scope: !1796)
!1827 = !DILocation(line: 1276, column: 35, scope: !1796)
!1828 = !DILocation(line: 1278, column: 12, scope: !1796)
!1829 = !DILocation(line: 1278, column: 21, scope: !1796)
!1830 = !DILocation(line: 1278, column: 36, scope: !1796)
!1831 = !DILocation(line: 1278, column: 42, scope: !1796)
!1832 = !DILocation(line: 1278, column: 47, scope: !1796)
!1833 = !DILocation(line: 1278, column: 5, scope: !1796)
!1834 = !DILocation(line: 1280, column: 9, scope: !1796)
!1835 = !DILocation(line: 1280, column: 18, scope: !1796)
!1836 = !DILocation(line: 1280, column: 33, scope: !1796)
!1837 = !DILocation(line: 1280, column: 39, scope: !1796)
!1838 = !DILocation(line: 1280, column: 7, scope: !1796)
!1839 = !DILocation(line: 1281, column: 9, scope: !1796)
!1840 = !DILocation(line: 1281, column: 18, scope: !1796)
!1841 = !DILocation(line: 1281, column: 33, scope: !1796)
!1842 = !DILocation(line: 1281, column: 7, scope: !1796)
!1843 = !DILocation(line: 1282, column: 5, scope: !1796)
!1844 = !DILocation(line: 1282, column: 12, scope: !1796)
!1845 = !DILocation(line: 1282, column: 17, scope: !1796)
!1846 = !DILocation(line: 1283, column: 6, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1848, file: !10, line: 1283, column: 6)
!1848 = distinct !DILexicalBlock(scope: !1796, file: !10, line: 1282, column: 23)
!1849 = !DILocation(line: 1283, column: 11, scope: !1847)
!1850 = !DILocation(line: 1283, column: 6, scope: !1848)
!1851 = !DILocation(line: 1284, column: 13, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1847, file: !10, line: 1283, column: 19)
!1853 = !DILocation(line: 1284, column: 17, scope: !1852)
!1854 = !DILocation(line: 1284, column: 15, scope: !1852)
!1855 = !DILocation(line: 1284, column: 19, scope: !1852)
!1856 = !DILocation(line: 1284, column: 6, scope: !1852)
!1857 = !DILocation(line: 1284, column: 11, scope: !1852)
!1858 = !DILocation(line: 1285, column: 10, scope: !1852)
!1859 = !DILocation(line: 1285, column: 8, scope: !1852)
!1860 = !DILocation(line: 1286, column: 2, scope: !1852)
!1861 = !DILocation(line: 1287, column: 3, scope: !1848)
!1862 = distinct !{!1862, !1843, !1863, !309}
!1863 = !DILocation(line: 1288, column: 5, scope: !1796)
!1864 = !DILocation(line: 1289, column: 12, scope: !1796)
!1865 = !DILocation(line: 1289, column: 16, scope: !1796)
!1866 = !DILocation(line: 1289, column: 14, scope: !1796)
!1867 = !DILocation(line: 1289, column: 18, scope: !1796)
!1868 = !DILocation(line: 1289, column: 5, scope: !1796)
!1869 = !DILocation(line: 1289, column: 10, scope: !1796)
!1870 = !DILocation(line: 1291, column: 36, scope: !1796)
!1871 = !DILocation(line: 1291, column: 5, scope: !1796)
!1872 = !DILocation(line: 1291, column: 14, scope: !1796)
!1873 = !DILocation(line: 1291, column: 29, scope: !1796)
!1874 = !DILocation(line: 1291, column: 34, scope: !1796)
!1875 = !DILocation(line: 1292, column: 5, scope: !1796)
!1876 = !DILocation(line: 1292, column: 14, scope: !1796)
!1877 = !DILocation(line: 1292, column: 29, scope: !1796)
!1878 = !DILocation(line: 1292, column: 35, scope: !1796)
!1879 = !DILocation(line: 1293, column: 1, scope: !1796)
!1880 = distinct !DISubprogram(name: "add_arecord", scope: !10, file: !10, line: 1306, type: !1881, scopeLine: 1307, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1881 = !DISubroutineType(types: !1882)
!1882 = !{null, !87, !8, !6, !6}
!1883 = !DILocalVariable(name: "session", arg: 1, scope: !1880, file: !10, line: 1306, type: !87)
!1884 = !DILocation(line: 1306, column: 32, scope: !1880)
!1885 = !DILocalVariable(name: "rr", arg: 2, scope: !1880, file: !10, line: 1306, type: !8)
!1886 = !DILocation(line: 1306, column: 55, scope: !1880)
!1887 = !DILocalVariable(name: "server_name", arg: 3, scope: !1880, file: !10, line: 1306, type: !6)
!1888 = !DILocation(line: 1306, column: 65, scope: !1880)
!1889 = !DILocalVariable(name: "server_ip", arg: 4, scope: !1880, file: !10, line: 1306, type: !6)
!1890 = !DILocation(line: 1306, column: 84, scope: !1880)
!1891 = !DILocalVariable(name: "arecord", scope: !1880, file: !10, line: 1308, type: !67)
!1892 = !DILocation(line: 1308, column: 22, scope: !1880)
!1893 = !DILocation(line: 1310, column: 33, scope: !1880)
!1894 = !DILocation(line: 1310, column: 15, scope: !1880)
!1895 = !DILocation(line: 1310, column: 13, scope: !1880)
!1896 = !DILocation(line: 1311, column: 35, scope: !1880)
!1897 = !DILocation(line: 1311, column: 28, scope: !1880)
!1898 = !DILocation(line: 1311, column: 5, scope: !1880)
!1899 = !DILocation(line: 1311, column: 14, scope: !1880)
!1900 = !DILocation(line: 1311, column: 26, scope: !1880)
!1901 = !DILocation(line: 1312, column: 33, scope: !1880)
!1902 = !DILocation(line: 1312, column: 26, scope: !1880)
!1903 = !DILocation(line: 1312, column: 5, scope: !1880)
!1904 = !DILocation(line: 1312, column: 14, scope: !1880)
!1905 = !DILocation(line: 1312, column: 24, scope: !1880)
!1906 = !DILocation(line: 1313, column: 45, scope: !1880)
!1907 = !DILocation(line: 1313, column: 49, scope: !1880)
!1908 = !DILocation(line: 1313, column: 31, scope: !1880)
!1909 = !DILocation(line: 1313, column: 24, scope: !1880)
!1910 = !DILocation(line: 1313, column: 5, scope: !1880)
!1911 = !DILocation(line: 1313, column: 14, scope: !1880)
!1912 = !DILocation(line: 1313, column: 22, scope: !1880)
!1913 = !DILocation(line: 1315, column: 9, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1880, file: !10, line: 1315, column: 9)
!1915 = !DILocation(line: 1315, column: 13, scope: !1914)
!1916 = !DILocation(line: 1315, column: 25, scope: !1914)
!1917 = !DILocation(line: 1315, column: 9, scope: !1880)
!1918 = !DILocation(line: 1316, column: 2, scope: !1914)
!1919 = !DILocation(line: 1316, column: 11, scope: !1914)
!1920 = !DILocation(line: 1316, column: 19, scope: !1914)
!1921 = !DILocation(line: 1318, column: 28, scope: !1914)
!1922 = !DILocation(line: 1318, column: 32, scope: !1914)
!1923 = !DILocation(line: 1318, column: 21, scope: !1914)
!1924 = !DILocation(line: 1318, column: 2, scope: !1914)
!1925 = !DILocation(line: 1318, column: 11, scope: !1914)
!1926 = !DILocation(line: 1318, column: 19, scope: !1914)
!1927 = !DILocation(line: 1320, column: 21, scope: !1880)
!1928 = !DILocation(line: 1320, column: 5, scope: !1880)
!1929 = !DILocation(line: 1320, column: 14, scope: !1880)
!1930 = !DILocation(line: 1320, column: 19, scope: !1880)
!1931 = !DILocation(line: 1321, column: 16, scope: !1880)
!1932 = !DILocation(line: 1321, column: 14, scope: !1880)
!1933 = !DILocation(line: 1322, column: 1, scope: !1880)
!1934 = distinct !DISubprogram(name: "display_arecords", scope: !10, file: !10, line: 1325, type: !1935, scopeLine: 1326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1935 = !DISubroutineType(types: !1936)
!1936 = !{null}
!1937 = !DILocalVariable(name: "arecord", scope: !1934, file: !10, line: 1327, type: !67)
!1938 = !DILocation(line: 1327, column: 22, scope: !1934)
!1939 = !DILocalVariable(name: "i", scope: !1934, file: !10, line: 1328, type: !73)
!1940 = !DILocation(line: 1328, column: 11, scope: !1934)
!1941 = !DILocalVariable(name: "s", scope: !1934, file: !10, line: 1329, type: !1942)
!1942 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 80, elements: !1943)
!1943 = !{!1944}
!1944 = !DISubrange(count: 10)
!1945 = !DILocation(line: 1329, column: 11, scope: !1934)
!1946 = !DILocation(line: 1331, column: 15, scope: !1934)
!1947 = !DILocation(line: 1331, column: 13, scope: !1934)
!1948 = !DILocation(line: 1332, column: 5, scope: !1934)
!1949 = !DILocation(line: 1332, column: 12, scope: !1934)
!1950 = !DILocation(line: 1332, column: 20, scope: !1934)
!1951 = !DILocation(line: 1334, column: 6, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1934, file: !10, line: 1332, column: 29)
!1953 = !DILocation(line: 1334, column: 15, scope: !1952)
!1954 = !DILocation(line: 1334, column: 28, scope: !1952)
!1955 = !DILocation(line: 1334, column: 37, scope: !1952)
!1956 = !DILocation(line: 1333, column: 2, scope: !1952)
!1957 = !DILocation(line: 1335, column: 11, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1952, file: !10, line: 1335, column: 6)
!1959 = !DILocation(line: 1335, column: 9, scope: !1958)
!1960 = !DILocation(line: 1335, column: 13, scope: !1958)
!1961 = !DILocation(line: 1335, column: 6, scope: !1952)
!1962 = !DILocation(line: 1336, column: 6, scope: !1958)
!1963 = !DILocation(line: 1338, column: 14, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1958, file: !10, line: 1337, column: 7)
!1965 = !DILocation(line: 1338, column: 31, scope: !1964)
!1966 = !DILocation(line: 1338, column: 29, scope: !1964)
!1967 = !DILocation(line: 1338, column: 6, scope: !1964)
!1968 = !DILocation(line: 1339, column: 13, scope: !1964)
!1969 = !DILocation(line: 1339, column: 6, scope: !1964)
!1970 = !DILocation(line: 1341, column: 23, scope: !1952)
!1971 = !DILocation(line: 1341, column: 32, scope: !1952)
!1972 = !DILocation(line: 1341, column: 41, scope: !1952)
!1973 = !DILocation(line: 1341, column: 50, scope: !1952)
!1974 = !DILocation(line: 1341, column: 2, scope: !1952)
!1975 = !DILocation(line: 1342, column: 12, scope: !1952)
!1976 = !DILocation(line: 1342, column: 21, scope: !1952)
!1977 = !DILocation(line: 1342, column: 10, scope: !1952)
!1978 = distinct !{!1978, !1948, !1979, !309}
!1979 = !DILocation(line: 1343, column: 5, scope: !1934)
!1980 = !DILocation(line: 1344, column: 1, scope: !1934)
!1981 = distinct !DISubprogram(name: "add_answer", scope: !10, file: !10, line: 1357, type: !1982, scopeLine: 1358, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1982 = !DISubroutineType(types: !1983)
!1983 = !{null, !6}
!1984 = !DILocalVariable(name: "server", arg: 1, scope: !1981, file: !10, line: 1357, type: !6)
!1985 = !DILocation(line: 1357, column: 18, scope: !1981)
!1986 = !DILocalVariable(name: "answer", scope: !1981, file: !10, line: 1359, type: !77)
!1987 = !DILocation(line: 1359, column: 20, scope: !1981)
!1988 = !DILocation(line: 1361, column: 31, scope: !1981)
!1989 = !DILocation(line: 1361, column: 14, scope: !1981)
!1990 = !DILocation(line: 1361, column: 12, scope: !1981)
!1991 = !DILocation(line: 1362, column: 29, scope: !1981)
!1992 = !DILocation(line: 1362, column: 22, scope: !1981)
!1993 = !DILocation(line: 1362, column: 5, scope: !1981)
!1994 = !DILocation(line: 1362, column: 13, scope: !1981)
!1995 = !DILocation(line: 1362, column: 20, scope: !1981)
!1996 = !DILocation(line: 1363, column: 20, scope: !1981)
!1997 = !DILocation(line: 1363, column: 5, scope: !1981)
!1998 = !DILocation(line: 1363, column: 13, scope: !1981)
!1999 = !DILocation(line: 1363, column: 18, scope: !1981)
!2000 = !DILocation(line: 1364, column: 15, scope: !1981)
!2001 = !DILocation(line: 1364, column: 13, scope: !1981)
!2002 = !DILocation(line: 1365, column: 1, scope: !1981)
!2003 = distinct !DISubprogram(name: "has_answer", scope: !10, file: !10, line: 1368, type: !2004, scopeLine: 1369, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2004 = !DISubroutineType(types: !2005)
!2005 = !{!73, !6}
!2006 = !DILocalVariable(name: "server", arg: 1, scope: !2003, file: !10, line: 1368, type: !6)
!2007 = !DILocation(line: 1368, column: 18, scope: !2003)
!2008 = !DILocalVariable(name: "answer", scope: !2003, file: !10, line: 1370, type: !77)
!2009 = !DILocation(line: 1370, column: 20, scope: !2003)
!2010 = !DILocation(line: 1372, column: 14, scope: !2003)
!2011 = !DILocation(line: 1372, column: 12, scope: !2003)
!2012 = !DILocation(line: 1373, column: 5, scope: !2003)
!2013 = !DILocation(line: 1373, column: 12, scope: !2003)
!2014 = !DILocation(line: 1373, column: 19, scope: !2003)
!2015 = !DILocation(line: 1374, column: 13, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !2017, file: !10, line: 1374, column: 6)
!2017 = distinct !DILexicalBlock(scope: !2003, file: !10, line: 1373, column: 28)
!2018 = !DILocation(line: 1374, column: 21, scope: !2016)
!2019 = !DILocation(line: 1374, column: 29, scope: !2016)
!2020 = !DILocation(line: 1374, column: 6, scope: !2016)
!2021 = !DILocation(line: 1374, column: 37, scope: !2016)
!2022 = !DILocation(line: 1374, column: 6, scope: !2017)
!2023 = !DILocation(line: 1375, column: 6, scope: !2016)
!2024 = !DILocation(line: 1376, column: 11, scope: !2017)
!2025 = !DILocation(line: 1376, column: 19, scope: !2017)
!2026 = !DILocation(line: 1376, column: 9, scope: !2017)
!2027 = distinct !{!2027, !2012, !2028, !309}
!2028 = !DILocation(line: 1377, column: 5, scope: !2003)
!2029 = !DILocation(line: 1378, column: 5, scope: !2003)
!2030 = !DILocation(line: 1379, column: 1, scope: !2003)
!2031 = distinct !DISubprogram(name: "add_busy", scope: !10, file: !10, line: 1393, type: !1982, scopeLine: 1394, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2032 = !DILocalVariable(name: "server", arg: 1, scope: !2031, file: !10, line: 1393, type: !6)
!2033 = !DILocation(line: 1393, column: 16, scope: !2031)
!2034 = !DILocalVariable(name: "busy", scope: !2031, file: !10, line: 1395, type: !82)
!2035 = !DILocation(line: 1395, column: 18, scope: !2031)
!2036 = !DILocation(line: 1397, column: 27, scope: !2031)
!2037 = !DILocation(line: 1397, column: 12, scope: !2031)
!2038 = !DILocation(line: 1397, column: 10, scope: !2031)
!2039 = !DILocation(line: 1398, column: 27, scope: !2031)
!2040 = !DILocation(line: 1398, column: 20, scope: !2031)
!2041 = !DILocation(line: 1398, column: 5, scope: !2031)
!2042 = !DILocation(line: 1398, column: 11, scope: !2031)
!2043 = !DILocation(line: 1398, column: 18, scope: !2031)
!2044 = !DILocation(line: 1399, column: 18, scope: !2031)
!2045 = !DILocation(line: 1399, column: 5, scope: !2031)
!2046 = !DILocation(line: 1399, column: 11, scope: !2031)
!2047 = !DILocation(line: 1399, column: 16, scope: !2031)
!2048 = !DILocation(line: 1400, column: 14, scope: !2031)
!2049 = !DILocation(line: 1400, column: 12, scope: !2031)
!2050 = !DILocation(line: 1401, column: 1, scope: !2031)
!2051 = distinct !DISubprogram(name: "remove_busy", scope: !10, file: !10, line: 1404, type: !1982, scopeLine: 1405, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2052 = !DILocalVariable(name: "server", arg: 1, scope: !2051, file: !10, line: 1404, type: !6)
!2053 = !DILocation(line: 1404, column: 19, scope: !2051)
!2054 = !DILocalVariable(name: "busy", scope: !2051, file: !10, line: 1406, type: !82)
!2055 = !DILocation(line: 1406, column: 18, scope: !2051)
!2056 = !DILocalVariable(name: "prev", scope: !2051, file: !10, line: 1406, type: !82)
!2057 = !DILocation(line: 1406, column: 25, scope: !2051)
!2058 = !DILocation(line: 1408, column: 16, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2051, file: !10, line: 1408, column: 9)
!2060 = !DILocation(line: 1408, column: 24, scope: !2059)
!2061 = !DILocation(line: 1408, column: 32, scope: !2059)
!2062 = !DILocation(line: 1408, column: 9, scope: !2059)
!2063 = !DILocation(line: 1408, column: 40, scope: !2059)
!2064 = !DILocation(line: 1408, column: 9, scope: !2051)
!2065 = !DILocation(line: 1409, column: 9, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !2059, file: !10, line: 1408, column: 46)
!2067 = !DILocation(line: 1409, column: 7, scope: !2066)
!2068 = !DILocation(line: 1410, column: 11, scope: !2066)
!2069 = !DILocation(line: 1410, column: 19, scope: !2066)
!2070 = !DILocation(line: 1410, column: 9, scope: !2066)
!2071 = !DILocation(line: 1411, column: 7, scope: !2066)
!2072 = !DILocation(line: 1411, column: 2, scope: !2066)
!2073 = !DILocation(line: 1412, column: 2, scope: !2066)
!2074 = !DILocation(line: 1415, column: 12, scope: !2051)
!2075 = !DILocation(line: 1415, column: 10, scope: !2051)
!2076 = !DILocation(line: 1416, column: 12, scope: !2051)
!2077 = !DILocation(line: 1416, column: 18, scope: !2051)
!2078 = !DILocation(line: 1416, column: 10, scope: !2051)
!2079 = !DILocation(line: 1417, column: 5, scope: !2051)
!2080 = !DILocation(line: 1417, column: 12, scope: !2051)
!2081 = !DILocation(line: 1417, column: 17, scope: !2051)
!2082 = !DILocation(line: 1418, column: 13, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !2084, file: !10, line: 1418, column: 6)
!2084 = distinct !DILexicalBlock(scope: !2051, file: !10, line: 1417, column: 26)
!2085 = !DILocation(line: 1418, column: 19, scope: !2083)
!2086 = !DILocation(line: 1418, column: 27, scope: !2083)
!2087 = !DILocation(line: 1418, column: 6, scope: !2083)
!2088 = !DILocation(line: 1418, column: 35, scope: !2083)
!2089 = !DILocation(line: 1418, column: 6, scope: !2084)
!2090 = !DILocation(line: 1419, column: 19, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !2083, file: !10, line: 1418, column: 41)
!2092 = !DILocation(line: 1419, column: 25, scope: !2091)
!2093 = !DILocation(line: 1419, column: 6, scope: !2091)
!2094 = !DILocation(line: 1419, column: 12, scope: !2091)
!2095 = !DILocation(line: 1419, column: 17, scope: !2091)
!2096 = !DILocation(line: 1420, column: 11, scope: !2091)
!2097 = !DILocation(line: 1420, column: 6, scope: !2091)
!2098 = !DILocation(line: 1421, column: 6, scope: !2091)
!2099 = distinct !{!2099, !2079, !2100, !309}
!2100 = !DILocation(line: 1423, column: 5, scope: !2051)
!2101 = !DILocation(line: 1424, column: 1, scope: !2051)
!2102 = distinct !DISubprogram(name: "is_busy", scope: !10, file: !10, line: 1427, type: !2004, scopeLine: 1428, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2103 = !DILocalVariable(name: "server", arg: 1, scope: !2102, file: !10, line: 1427, type: !6)
!2104 = !DILocation(line: 1427, column: 15, scope: !2102)
!2105 = !DILocalVariable(name: "busy", scope: !2102, file: !10, line: 1429, type: !82)
!2106 = !DILocation(line: 1429, column: 18, scope: !2102)
!2107 = !DILocation(line: 1431, column: 12, scope: !2102)
!2108 = !DILocation(line: 1431, column: 10, scope: !2102)
!2109 = !DILocation(line: 1432, column: 5, scope: !2102)
!2110 = !DILocation(line: 1432, column: 12, scope: !2102)
!2111 = !DILocation(line: 1432, column: 17, scope: !2102)
!2112 = !DILocation(line: 1433, column: 13, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2114, file: !10, line: 1433, column: 6)
!2114 = distinct !DILexicalBlock(scope: !2102, file: !10, line: 1432, column: 26)
!2115 = !DILocation(line: 1433, column: 19, scope: !2113)
!2116 = !DILocation(line: 1433, column: 27, scope: !2113)
!2117 = !DILocation(line: 1433, column: 6, scope: !2113)
!2118 = !DILocation(line: 1433, column: 35, scope: !2113)
!2119 = !DILocation(line: 1433, column: 6, scope: !2114)
!2120 = !DILocation(line: 1434, column: 6, scope: !2113)
!2121 = !DILocation(line: 1435, column: 9, scope: !2114)
!2122 = !DILocation(line: 1435, column: 15, scope: !2114)
!2123 = !DILocation(line: 1435, column: 7, scope: !2114)
!2124 = distinct !{!2124, !2109, !2125, !309}
!2125 = !DILocation(line: 1436, column: 5, scope: !2102)
!2126 = !DILocation(line: 1437, column: 5, scope: !2102)
!2127 = !DILocation(line: 1438, column: 1, scope: !2102)
!2128 = distinct !DISubprogram(name: "create_session", scope: !10, file: !10, line: 1447, type: !2129, scopeLine: 1449, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2129 = !DISubroutineType(types: !2130)
!2130 = !{!73, !6, !6, !73, !6, !6, !73, !6, !73}
!2131 = !DILocalVariable(name: "host", arg: 1, scope: !2128, file: !10, line: 1447, type: !6)
!2132 = !DILocation(line: 1447, column: 22, scope: !2128)
!2133 = !DILocalVariable(name: "server_ip", arg: 2, scope: !2128, file: !10, line: 1447, type: !6)
!2134 = !DILocation(line: 1447, column: 34, scope: !2128)
!2135 = !DILocalVariable(name: "ipv6", arg: 3, scope: !2128, file: !10, line: 1447, type: !73)
!2136 = !DILocation(line: 1447, column: 49, scope: !2128)
!2137 = !DILocalVariable(name: "server_name", arg: 4, scope: !2128, file: !10, line: 1447, type: !6)
!2138 = !DILocation(line: 1447, column: 61, scope: !2128)
!2139 = !DILocalVariable(name: "server_authfor", arg: 5, scope: !2128, file: !10, line: 1448, type: !6)
!2140 = !DILocation(line: 1448, column: 11, scope: !2128)
!2141 = !DILocalVariable(name: "depth", arg: 6, scope: !2128, file: !10, line: 1448, type: !73)
!2142 = !DILocation(line: 1448, column: 31, scope: !2128)
!2143 = !DILocalVariable(name: "prefix", arg: 7, scope: !2128, file: !10, line: 1448, type: !6)
!2144 = !DILocation(line: 1448, column: 44, scope: !2128)
!2145 = !DILocalVariable(name: "last", arg: 8, scope: !2128, file: !10, line: 1448, type: !73)
!2146 = !DILocation(line: 1448, column: 56, scope: !2128)
!2147 = !DILocalVariable(name: "session", scope: !2128, file: !10, line: 1450, type: !87)
!2148 = !DILocation(line: 1450, column: 25, scope: !2128)
!2149 = !DILocalVariable(name: "rrauth", scope: !2128, file: !10, line: 1451, type: !8)
!2150 = !DILocation(line: 1451, column: 20, scope: !2128)
!2151 = !DILocalVariable(name: "rradd", scope: !2128, file: !10, line: 1452, type: !8)
!2152 = !DILocation(line: 1452, column: 20, scope: !2128)
!2153 = !DILocalVariable(name: "i", scope: !2128, file: !10, line: 1453, type: !73)
!2154 = !DILocation(line: 1453, column: 11, scope: !2128)
!2155 = !DILocalVariable(name: "retval", scope: !2128, file: !10, line: 1453, type: !73)
!2156 = !DILocation(line: 1453, column: 14, scope: !2128)
!2157 = !DILocalVariable(name: "errorcode", scope: !2128, file: !10, line: 1453, type: !73)
!2158 = !DILocation(line: 1453, column: 22, scope: !2128)
!2159 = !DILocalVariable(name: "refersbackwards", scope: !2128, file: !10, line: 1453, type: !73)
!2160 = !DILocation(line: 1453, column: 33, scope: !2128)
!2161 = !DILocalVariable(name: "s", scope: !2128, file: !10, line: 1454, type: !137)
!2162 = !DILocation(line: 1454, column: 11, scope: !2128)
!2163 = !DILocation(line: 1459, column: 9, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2128, file: !10, line: 1459, column: 9)
!2165 = !DILocation(line: 1459, column: 15, scope: !2164)
!2166 = !DILocation(line: 1459, column: 9, scope: !2128)
!2167 = !DILocation(line: 1460, column: 17, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2164, file: !10, line: 1459, column: 21)
!2169 = !DILocation(line: 1460, column: 25, scope: !2168)
!2170 = !DILocation(line: 1460, column: 30, scope: !2168)
!2171 = !DILocation(line: 1460, column: 2, scope: !2168)
!2172 = !DILocation(line: 1461, column: 2, scope: !2168)
!2173 = !DILocation(line: 1462, column: 5, scope: !2168)
!2174 = !DILocation(line: 1464, column: 19, scope: !2128)
!2175 = !DILocation(line: 1464, column: 5, scope: !2128)
!2176 = !DILocation(line: 1466, column: 9, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2128, file: !10, line: 1466, column: 9)
!2178 = !DILocation(line: 1466, column: 24, scope: !2177)
!2179 = !DILocation(line: 1466, column: 9, scope: !2128)
!2180 = !DILocation(line: 1467, column: 18, scope: !2177)
!2181 = !DILocation(line: 1467, column: 2, scope: !2177)
!2182 = !DILocation(line: 1469, column: 9, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2128, file: !10, line: 1469, column: 9)
!2184 = !DILocation(line: 1469, column: 22, scope: !2183)
!2185 = !DILocation(line: 1469, column: 9, scope: !2128)
!2186 = !DILocation(line: 1470, column: 2, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2183, file: !10, line: 1469, column: 28)
!2188 = !DILocation(line: 1471, column: 2, scope: !2187)
!2189 = !DILocation(line: 1474, column: 9, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !2128, file: !10, line: 1474, column: 9)
!2191 = !DILocation(line: 1474, column: 23, scope: !2190)
!2192 = !DILocation(line: 1474, column: 26, scope: !2190)
!2193 = !DILocation(line: 1474, column: 9, scope: !2128)
!2194 = !DILocation(line: 1475, column: 29, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !2190, file: !10, line: 1474, column: 32)
!2196 = !DILocation(line: 1475, column: 2, scope: !2195)
!2197 = !DILocation(line: 1476, column: 2, scope: !2195)
!2198 = !DILocation(line: 1485, column: 21, scope: !2128)
!2199 = !DILocation(line: 1485, column: 5, scope: !2128)
!2200 = !DILocation(line: 1486, column: 12, scope: !2128)
!2201 = !DILocation(line: 1486, column: 5, scope: !2128)
!2202 = !DILocation(line: 1493, column: 17, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2128, file: !10, line: 1493, column: 9)
!2204 = !DILocation(line: 1493, column: 9, scope: !2203)
!2205 = !DILocation(line: 1493, column: 28, scope: !2203)
!2206 = !DILocation(line: 1493, column: 9, scope: !2128)
!2207 = !DILocation(line: 1494, column: 2, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2203, file: !10, line: 1493, column: 34)
!2209 = !DILocation(line: 1495, column: 9, scope: !2208)
!2210 = !DILocation(line: 1495, column: 2, scope: !2208)
!2211 = !DILocation(line: 1496, column: 2, scope: !2208)
!2212 = !DILocation(line: 1502, column: 9, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2128, file: !10, line: 1502, column: 9)
!2214 = !DILocation(line: 1502, column: 24, scope: !2213)
!2215 = !DILocation(line: 1502, column: 38, scope: !2213)
!2216 = !DILocation(line: 1502, column: 27, scope: !2213)
!2217 = !DILocation(line: 1502, column: 9, scope: !2128)
!2218 = !DILocation(line: 1503, column: 2, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2213, file: !10, line: 1502, column: 50)
!2220 = !DILocation(line: 1504, column: 2, scope: !2219)
!2221 = !DILocation(line: 1510, column: 14, scope: !2128)
!2222 = !DILocation(line: 1510, column: 5, scope: !2128)
!2223 = !DILocation(line: 1516, column: 36, scope: !2128)
!2224 = !DILocation(line: 1516, column: 15, scope: !2128)
!2225 = !DILocation(line: 1516, column: 13, scope: !2128)
!2226 = !DILocation(line: 1517, column: 37, scope: !2128)
!2227 = !DILocation(line: 1517, column: 23, scope: !2128)
!2228 = !DILocation(line: 1517, column: 5, scope: !2128)
!2229 = !DILocation(line: 1517, column: 14, scope: !2128)
!2230 = !DILocation(line: 1517, column: 21, scope: !2128)
!2231 = !DILocation(line: 1518, column: 21, scope: !2128)
!2232 = !DILocation(line: 1518, column: 5, scope: !2128)
!2233 = !DILocation(line: 1518, column: 14, scope: !2128)
!2234 = !DILocation(line: 1518, column: 19, scope: !2128)
!2235 = !DILocation(line: 1519, column: 30, scope: !2128)
!2236 = !DILocation(line: 1519, column: 23, scope: !2128)
!2237 = !DILocation(line: 1519, column: 5, scope: !2128)
!2238 = !DILocation(line: 1519, column: 14, scope: !2128)
!2239 = !DILocation(line: 1519, column: 21, scope: !2128)
!2240 = !DILocation(line: 1520, column: 28, scope: !2128)
!2241 = !DILocation(line: 1520, column: 21, scope: !2128)
!2242 = !DILocation(line: 1520, column: 5, scope: !2128)
!2243 = !DILocation(line: 1520, column: 14, scope: !2128)
!2244 = !DILocation(line: 1520, column: 19, scope: !2128)
!2245 = !DILocation(line: 1521, column: 19, scope: !2128)
!2246 = !DILocation(line: 1521, column: 5, scope: !2128)
!2247 = !DILocation(line: 1522, column: 21, scope: !2128)
!2248 = !DILocation(line: 1522, column: 30, scope: !2128)
!2249 = !DILocation(line: 1522, column: 5, scope: !2128)
!2250 = !DILocation(line: 1527, column: 15, scope: !2128)
!2251 = !DILocation(line: 1528, column: 12, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2128, file: !10, line: 1528, column: 5)
!2253 = !DILocation(line: 1528, column: 10, scope: !2252)
!2254 = !DILocation(line: 1528, column: 17, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2252, file: !10, line: 1528, column: 5)
!2256 = !DILocation(line: 1528, column: 21, scope: !2255)
!2257 = !DILocation(line: 1528, column: 19, scope: !2255)
!2258 = !DILocation(line: 1528, column: 5, scope: !2252)
!2259 = !DILocation(line: 1529, column: 12, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2255, file: !10, line: 1528, column: 42)
!2261 = !DILocation(line: 1529, column: 23, scope: !2260)
!2262 = !DILocation(line: 1529, column: 2, scope: !2260)
!2263 = !DILocation(line: 1530, column: 32, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2260, file: !10, line: 1530, column: 6)
!2265 = !DILocation(line: 1530, column: 41, scope: !2264)
!2266 = !DILocation(line: 1530, column: 19, scope: !2264)
!2267 = !DILocation(line: 1530, column: 17, scope: !2264)
!2268 = !DILocation(line: 1530, column: 45, scope: !2264)
!2269 = !DILocation(line: 1530, column: 6, scope: !2260)
!2270 = !DILocation(line: 1531, column: 6, scope: !2264)
!2271 = !DILocation(line: 1532, column: 2, scope: !2260)
!2272 = !DILocation(line: 1533, column: 9, scope: !2260)
!2273 = !DILocation(line: 1533, column: 2, scope: !2260)
!2274 = !DILocation(line: 1534, column: 5, scope: !2260)
!2275 = !DILocation(line: 1528, column: 38, scope: !2255)
!2276 = !DILocation(line: 1528, column: 5, scope: !2255)
!2277 = distinct !{!2277, !2258, !2278, !309}
!2278 = !DILocation(line: 1534, column: 5, scope: !2252)
!2279 = !DILocation(line: 1535, column: 11, scope: !2128)
!2280 = !DILocation(line: 1535, column: 20, scope: !2128)
!2281 = !DILocation(line: 1535, column: 5, scope: !2128)
!2282 = !DILocation(line: 1540, column: 9, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2128, file: !10, line: 1540, column: 9)
!2284 = !DILocation(line: 1540, column: 19, scope: !2283)
!2285 = !DILocation(line: 1540, column: 9, scope: !2128)
!2286 = !DILocation(line: 1541, column: 14, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2283, file: !10, line: 1540, column: 25)
!2288 = !DILocation(line: 1541, column: 2, scope: !2287)
!2289 = !DILocation(line: 1542, column: 6, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !2287, file: !10, line: 1542, column: 6)
!2291 = !DILocation(line: 1542, column: 6, scope: !2287)
!2292 = !DILocation(line: 1542, column: 42, scope: !2290)
!2293 = !DILocation(line: 1542, column: 31, scope: !2290)
!2294 = !DILocation(line: 1543, column: 2, scope: !2287)
!2295 = !DILocation(line: 1550, column: 9, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2128, file: !10, line: 1550, column: 9)
!2297 = !DILocation(line: 1550, column: 18, scope: !2296)
!2298 = !DILocation(line: 1550, column: 31, scope: !2296)
!2299 = !DILocation(line: 1550, column: 41, scope: !2296)
!2300 = !DILocation(line: 1550, column: 9, scope: !2128)
!2301 = !DILocalVariable(name: "answer", scope: !2302, file: !10, line: 1551, type: !8)
!2302 = distinct !DILexicalBlock(scope: !2296, file: !10, line: 1550, column: 47)
!2303 = !DILocation(line: 1551, column: 16, scope: !2302)
!2304 = !DILocation(line: 1553, column: 6, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2302, file: !10, line: 1553, column: 6)
!2306 = !DILocation(line: 1553, column: 15, scope: !2305)
!2307 = !DILocation(line: 1553, column: 28, scope: !2305)
!2308 = !DILocation(line: 1553, column: 34, scope: !2305)
!2309 = !DILocation(line: 1553, column: 38, scope: !2305)
!2310 = !DILocation(line: 1553, column: 6, scope: !2302)
!2311 = !DILocation(line: 1554, column: 6, scope: !2305)
!2312 = !DILocation(line: 1556, column: 6, scope: !2305)
!2313 = !DILocation(line: 1558, column: 11, scope: !2302)
!2314 = !DILocation(line: 1558, column: 20, scope: !2302)
!2315 = !DILocation(line: 1558, column: 9, scope: !2302)
!2316 = !DILocation(line: 1559, column: 2, scope: !2302)
!2317 = !DILocation(line: 1559, column: 9, scope: !2302)
!2318 = !DILocation(line: 1559, column: 16, scope: !2302)
!2319 = !DILocation(line: 1560, column: 10, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2321, file: !10, line: 1560, column: 10)
!2321 = distinct !DILexicalBlock(scope: !2302, file: !10, line: 1559, column: 25)
!2322 = !DILocation(line: 1560, column: 18, scope: !2320)
!2323 = !DILocation(line: 1560, column: 26, scope: !2320)
!2324 = !DILocation(line: 1560, column: 23, scope: !2320)
!2325 = !DILocation(line: 1560, column: 10, scope: !2321)
!2326 = !DILocation(line: 1561, column: 45, scope: !2320)
!2327 = !DILocation(line: 1561, column: 53, scope: !2320)
!2328 = !DILocation(line: 1561, column: 36, scope: !2320)
!2329 = !DILocation(line: 1561, column: 3, scope: !2320)
!2330 = !DILocation(line: 1562, column: 18, scope: !2321)
!2331 = !DILocation(line: 1562, column: 27, scope: !2321)
!2332 = !DILocation(line: 1562, column: 35, scope: !2321)
!2333 = !DILocation(line: 1562, column: 48, scope: !2321)
!2334 = !DILocation(line: 1562, column: 6, scope: !2321)
!2335 = !DILocation(line: 1563, column: 15, scope: !2321)
!2336 = !DILocation(line: 1563, column: 23, scope: !2321)
!2337 = !DILocation(line: 1563, column: 13, scope: !2321)
!2338 = distinct !{!2338, !2316, !2339, !309}
!2339 = !DILocation(line: 1564, column: 2, scope: !2302)
!2340 = !DILocation(line: 1565, column: 6, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2302, file: !10, line: 1565, column: 6)
!2342 = !DILocation(line: 1565, column: 6, scope: !2302)
!2343 = !DILocation(line: 1565, column: 33, scope: !2341)
!2344 = !DILocation(line: 1565, column: 22, scope: !2341)
!2345 = !DILocation(line: 1566, column: 5, scope: !2302)
!2346 = !DILocation(line: 1572, column: 9, scope: !2347)
!2347 = distinct !DILexicalBlock(scope: !2128, file: !10, line: 1572, column: 9)
!2348 = !DILocation(line: 1572, column: 18, scope: !2347)
!2349 = !DILocation(line: 1572, column: 28, scope: !2347)
!2350 = !DILocation(line: 1572, column: 36, scope: !2347)
!2351 = !DILocation(line: 1572, column: 39, scope: !2347)
!2352 = !DILocation(line: 1572, column: 54, scope: !2347)
!2353 = !DILocation(line: 1572, column: 9, scope: !2128)
!2354 = !DILocation(line: 1573, column: 6, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2356, file: !10, line: 1573, column: 6)
!2356 = distinct !DILexicalBlock(scope: !2347, file: !10, line: 1572, column: 63)
!2357 = !DILocation(line: 1573, column: 15, scope: !2355)
!2358 = !DILocation(line: 1573, column: 28, scope: !2355)
!2359 = !DILocation(line: 1573, column: 34, scope: !2355)
!2360 = !DILocation(line: 1573, column: 38, scope: !2355)
!2361 = !DILocation(line: 1573, column: 41, scope: !2355)
!2362 = !DILocation(line: 1573, column: 46, scope: !2355)
!2363 = !DILocation(line: 1574, column: 17, scope: !2355)
!2364 = !DILocation(line: 1575, column: 10, scope: !2355)
!2365 = !DILocation(line: 1575, column: 19, scope: !2355)
!2366 = !DILocation(line: 1575, column: 30, scope: !2355)
!2367 = !DILocation(line: 1574, column: 6, scope: !2355)
!2368 = !DILocation(line: 1575, column: 49, scope: !2355)
!2369 = !DILocation(line: 1573, column: 6, scope: !2356)
!2370 = !DILocation(line: 1576, column: 6, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !2355, file: !10, line: 1575, column: 55)
!2372 = !DILocation(line: 1577, column: 18, scope: !2371)
!2373 = !DILocation(line: 1577, column: 6, scope: !2371)
!2374 = !DILocation(line: 1578, column: 6, scope: !2371)
!2375 = !DILocation(line: 1580, column: 5, scope: !2356)
!2376 = !DILocation(line: 1587, column: 9, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2128, file: !10, line: 1587, column: 9)
!2378 = !DILocation(line: 1587, column: 18, scope: !2377)
!2379 = !DILocation(line: 1587, column: 31, scope: !2377)
!2380 = !DILocation(line: 1587, column: 37, scope: !2377)
!2381 = !DILocation(line: 1587, column: 41, scope: !2377)
!2382 = !DILocation(line: 1587, column: 9, scope: !2128)
!2383 = !DILocation(line: 1588, column: 14, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !2377, file: !10, line: 1587, column: 45)
!2385 = !DILocation(line: 1588, column: 2, scope: !2384)
!2386 = !DILocation(line: 1589, column: 2, scope: !2384)
!2387 = !DILocation(line: 1599, column: 12, scope: !2128)
!2388 = !DILocation(line: 1600, column: 14, scope: !2128)
!2389 = !DILocation(line: 1600, column: 23, scope: !2128)
!2390 = !DILocation(line: 1600, column: 12, scope: !2128)
!2391 = !DILocation(line: 1601, column: 5, scope: !2128)
!2392 = !DILocation(line: 1601, column: 12, scope: !2128)
!2393 = !DILocation(line: 1601, column: 19, scope: !2128)
!2394 = !DILocalVariable(name: "found", scope: !2395, file: !10, line: 1602, type: !73)
!2395 = distinct !DILexicalBlock(scope: !2128, file: !10, line: 1601, column: 28)
!2396 = !DILocation(line: 1602, column: 6, scope: !2395)
!2397 = !DILocalVariable(name: "nextserver_ip", scope: !2395, file: !10, line: 1603, type: !137)
!2398 = !DILocation(line: 1603, column: 7, scope: !2395)
!2399 = !DILocalVariable(name: "nextserver_name", scope: !2395, file: !10, line: 1604, type: !137)
!2400 = !DILocation(line: 1604, column: 7, scope: !2395)
!2401 = !DILocation(line: 1609, column: 6, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2395, file: !10, line: 1609, column: 6)
!2403 = !DILocation(line: 1609, column: 14, scope: !2402)
!2404 = !DILocation(line: 1609, column: 19, scope: !2402)
!2405 = !DILocation(line: 1609, column: 6, scope: !2395)
!2406 = !DILocation(line: 1610, column: 15, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2402, file: !10, line: 1609, column: 31)
!2408 = !DILocation(line: 1610, column: 23, scope: !2407)
!2409 = !DILocation(line: 1610, column: 13, scope: !2407)
!2410 = !DILocation(line: 1611, column: 6, scope: !2407)
!2411 = distinct !{!2411, !2391, !2412, !309}
!2412 = !DILocation(line: 1765, column: 5, scope: !2128)
!2413 = !DILocation(line: 1619, column: 13, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2395, file: !10, line: 1619, column: 6)
!2415 = !DILocation(line: 1619, column: 21, scope: !2414)
!2416 = !DILocation(line: 1619, column: 6, scope: !2414)
!2417 = !DILocation(line: 1619, column: 45, scope: !2414)
!2418 = !DILocation(line: 1619, column: 6, scope: !2395)
!2419 = !DILocation(line: 1620, column: 15, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !2414, file: !10, line: 1619, column: 51)
!2421 = !DILocation(line: 1620, column: 23, scope: !2420)
!2422 = !DILocation(line: 1620, column: 13, scope: !2420)
!2423 = !DILocation(line: 1621, column: 26, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !2420, file: !10, line: 1621, column: 10)
!2425 = !DILocation(line: 1621, column: 10, scope: !2420)
!2426 = !DILocation(line: 1622, column: 3, scope: !2424)
!2427 = !DILocation(line: 1623, column: 6, scope: !2420)
!2428 = !DILocation(line: 1626, column: 6, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !2395, file: !10, line: 1626, column: 6)
!2430 = !DILocation(line: 1626, column: 21, scope: !2429)
!2431 = !DILocation(line: 1626, column: 29, scope: !2429)
!2432 = !DILocation(line: 1626, column: 39, scope: !2429)
!2433 = !DILocation(line: 1626, column: 32, scope: !2429)
!2434 = !DILocation(line: 1626, column: 60, scope: !2429)
!2435 = !DILocation(line: 1626, column: 65, scope: !2429)
!2436 = !DILocation(line: 1627, column: 19, scope: !2429)
!2437 = !DILocation(line: 1627, column: 27, scope: !2429)
!2438 = !DILocation(line: 1627, column: 46, scope: !2429)
!2439 = !DILocation(line: 1628, column: 10, scope: !2429)
!2440 = !DILocation(line: 1628, column: 3, scope: !2429)
!2441 = !DILocation(line: 1627, column: 6, scope: !2429)
!2442 = !DILocation(line: 1628, column: 27, scope: !2429)
!2443 = !DILocation(line: 1626, column: 6, scope: !2395)
!2444 = !DILocation(line: 1629, column: 26, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2446, file: !10, line: 1629, column: 10)
!2446 = distinct !DILexicalBlock(scope: !2429, file: !10, line: 1628, column: 33)
!2447 = !DILocation(line: 1629, column: 10, scope: !2446)
!2448 = !DILocation(line: 1630, column: 3, scope: !2445)
!2449 = !DILocation(line: 1631, column: 15, scope: !2446)
!2450 = !DILocation(line: 1631, column: 23, scope: !2446)
!2451 = !DILocation(line: 1631, column: 13, scope: !2446)
!2452 = !DILocation(line: 1632, column: 6, scope: !2446)
!2453 = !DILocation(line: 1639, column: 10, scope: !2395)
!2454 = !DILocation(line: 1639, column: 19, scope: !2395)
!2455 = !DILocation(line: 1639, column: 8, scope: !2395)
!2456 = !DILocation(line: 1640, column: 2, scope: !2395)
!2457 = !DILocation(line: 1640, column: 9, scope: !2395)
!2458 = !DILocation(line: 1640, column: 15, scope: !2395)
!2459 = !DILocation(line: 1641, column: 30, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !2461, file: !10, line: 1641, column: 9)
!2461 = distinct !DILexicalBlock(scope: !2395, file: !10, line: 1640, column: 24)
!2462 = !DILocation(line: 1641, column: 37, scope: !2460)
!2463 = !DILocation(line: 1641, column: 16, scope: !2460)
!2464 = !DILocation(line: 1642, column: 3, scope: !2460)
!2465 = !DILocation(line: 1642, column: 11, scope: !2460)
!2466 = !DILocation(line: 1641, column: 9, scope: !2460)
!2467 = !DILocation(line: 1642, column: 24, scope: !2460)
!2468 = !DILocation(line: 1641, column: 9, scope: !2461)
!2469 = !DILocation(line: 1643, column: 8, scope: !2460)
!2470 = !DILocation(line: 1643, column: 3, scope: !2460)
!2471 = !DILocation(line: 1644, column: 14, scope: !2461)
!2472 = !DILocation(line: 1644, column: 21, scope: !2461)
!2473 = !DILocation(line: 1644, column: 12, scope: !2461)
!2474 = distinct !{!2474, !2456, !2475, !309}
!2475 = !DILocation(line: 1645, column: 2, scope: !2395)
!2476 = !DILocation(line: 1647, column: 10, scope: !2395)
!2477 = !DILocation(line: 1647, column: 19, scope: !2395)
!2478 = !DILocation(line: 1647, column: 8, scope: !2395)
!2479 = !DILocation(line: 1648, column: 2, scope: !2395)
!2480 = !DILocation(line: 1652, column: 6, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2395, file: !10, line: 1648, column: 5)
!2482 = !DILocation(line: 1652, column: 13, scope: !2481)
!2483 = !DILocation(line: 1652, column: 19, scope: !2481)
!2484 = !DILocation(line: 1653, column: 28, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2486, file: !10, line: 1653, column: 7)
!2486 = distinct !DILexicalBlock(scope: !2481, file: !10, line: 1652, column: 28)
!2487 = !DILocation(line: 1653, column: 35, scope: !2485)
!2488 = !DILocation(line: 1653, column: 14, scope: !2485)
!2489 = !DILocation(line: 1654, column: 7, scope: !2485)
!2490 = !DILocation(line: 1654, column: 15, scope: !2485)
!2491 = !DILocation(line: 1653, column: 7, scope: !2485)
!2492 = !DILocation(line: 1654, column: 28, scope: !2485)
!2493 = !DILocation(line: 1653, column: 7, scope: !2486)
!2494 = !DILocation(line: 1655, column: 7, scope: !2485)
!2495 = !DILocation(line: 1656, column: 11, scope: !2486)
!2496 = !DILocation(line: 1656, column: 18, scope: !2486)
!2497 = !DILocation(line: 1656, column: 9, scope: !2486)
!2498 = distinct !{!2498, !2480, !2499, !309}
!2499 = !DILocation(line: 1657, column: 6, scope: !2481)
!2500 = !DILocation(line: 1662, column: 14, scope: !2481)
!2501 = !DILocation(line: 1663, column: 3, scope: !2481)
!2502 = !DILocation(line: 1663, column: 11, scope: !2481)
!2503 = !DILocation(line: 1663, column: 16, scope: !2481)
!2504 = !DILocation(line: 1663, column: 34, scope: !2481)
!2505 = !DILocation(line: 1663, column: 40, scope: !2481)
!2506 = !DILocation(line: 1662, column: 6, scope: !2481)
!2507 = !DILocation(line: 1668, column: 10, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2481, file: !10, line: 1668, column: 10)
!2509 = !DILocation(line: 1668, column: 16, scope: !2508)
!2510 = !DILocation(line: 1668, column: 10, scope: !2481)
!2511 = !DILocation(line: 1673, column: 3, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2508, file: !10, line: 1668, column: 25)
!2513 = !DILocation(line: 1675, column: 10, scope: !2512)
!2514 = !DILocation(line: 1675, column: 41, scope: !2512)
!2515 = !DILocation(line: 1675, column: 48, scope: !2512)
!2516 = !DILocation(line: 1675, column: 27, scope: !2512)
!2517 = !DILocation(line: 1675, column: 3, scope: !2512)
!2518 = !DILocation(line: 1676, column: 10, scope: !2512)
!2519 = !DILocation(line: 1676, column: 25, scope: !2512)
!2520 = !DILocation(line: 1676, column: 32, scope: !2512)
!2521 = !DILocation(line: 1676, column: 3, scope: !2512)
!2522 = !DILocation(line: 1677, column: 28, scope: !2512)
!2523 = !DILocation(line: 1678, column: 8, scope: !2512)
!2524 = !DILocation(line: 1678, column: 24, scope: !2512)
!2525 = !DILocation(line: 1678, column: 31, scope: !2512)
!2526 = !DILocation(line: 1678, column: 36, scope: !2512)
!2527 = !DILocation(line: 1678, column: 23, scope: !2512)
!2528 = !DILocation(line: 1679, column: 8, scope: !2512)
!2529 = !DILocation(line: 1679, column: 25, scope: !2512)
!2530 = !DILocation(line: 1679, column: 33, scope: !2512)
!2531 = !DILocation(line: 1680, column: 8, scope: !2512)
!2532 = !DILocation(line: 1680, column: 14, scope: !2512)
!2533 = !DILocation(line: 1680, column: 19, scope: !2512)
!2534 = !DILocation(line: 1681, column: 9, scope: !2512)
!2535 = !DILocation(line: 1681, column: 17, scope: !2512)
!2536 = !DILocation(line: 1681, column: 22, scope: !2512)
!2537 = !DILocation(line: 1681, column: 30, scope: !2512)
!2538 = !DILocation(line: 1681, column: 33, scope: !2512)
!2539 = !DILocation(line: 1681, column: 39, scope: !2512)
!2540 = !DILocation(line: 0, scope: !2512)
!2541 = !DILocation(line: 1681, column: 8, scope: !2512)
!2542 = !DILocation(line: 1677, column: 13, scope: !2512)
!2543 = !DILocation(line: 1677, column: 10, scope: !2512)
!2544 = !DILocation(line: 1682, column: 6, scope: !2512)
!2545 = !DILocalVariable(name: "ip", scope: !2546, file: !10, line: 1683, type: !73)
!2546 = distinct !DILexicalBlock(scope: !2508, file: !10, line: 1682, column: 13)
!2547 = !DILocation(line: 1683, column: 7, scope: !2546)
!2548 = !DILocalVariable(name: "ipfound", scope: !2546, file: !10, line: 1683, type: !73)
!2549 = !DILocation(line: 1683, column: 11, scope: !2546)
!2550 = !DILocation(line: 1685, column: 10, scope: !2546)
!2551 = !DILocation(line: 1685, column: 27, scope: !2546)
!2552 = !DILocation(line: 1685, column: 35, scope: !2546)
!2553 = !DILocation(line: 1685, column: 3, scope: !2546)
!2554 = !DILocation(line: 1690, column: 11, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2546, file: !10, line: 1690, column: 3)
!2556 = !DILocation(line: 1690, column: 8, scope: !2555)
!2557 = !DILocation(line: 1690, column: 16, scope: !2558)
!2558 = distinct !DILexicalBlock(scope: !2555, file: !10, line: 1690, column: 3)
!2559 = !DILocation(line: 1690, column: 19, scope: !2558)
!2560 = !DILocation(line: 1690, column: 3, scope: !2555)
!2561 = !DILocalVariable(name: "count", scope: !2562, file: !10, line: 1692, type: !73)
!2562 = distinct !DILexicalBlock(scope: !2558, file: !10, line: 1690, column: 30)
!2563 = !DILocation(line: 1692, column: 11, scope: !2562)
!2564 = !DILocalVariable(name: "i", scope: !2562, file: !10, line: 1692, type: !73)
!2565 = !DILocation(line: 1692, column: 18, scope: !2562)
!2566 = !DILocalVariable(name: "h", scope: !2562, file: !10, line: 1693, type: !2567)
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2568, size: 32)
!2568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hostent", file: !10, line: 129, size: 160, elements: !2569)
!2569 = !{!2570, !2571, !2572, !2573, !2574}
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "h_name", scope: !2568, file: !10, line: 130, baseType: !6, size: 32)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "h_aliases", scope: !2568, file: !10, line: 131, baseType: !109, size: 32, offset: 32)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "h_addrtype", scope: !2568, file: !10, line: 132, baseType: !73, size: 32, offset: 64)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "h_length", scope: !2568, file: !10, line: 133, baseType: !73, size: 32, offset: 96)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "h_addr_list", scope: !2568, file: !10, line: 134, baseType: !109, size: 32, offset: 128)
!2575 = !DILocation(line: 1693, column: 23, scope: !2562)
!2576 = !DILocalVariable(name: "addr_list", scope: !2562, file: !10, line: 1694, type: !109)
!2577 = !DILocation(line: 1694, column: 14, scope: !2562)
!2578 = !DILocation(line: 1696, column: 11, scope: !2562)
!2579 = !DILocation(line: 1696, column: 9, scope: !2562)
!2580 = !DILocation(line: 1698, column: 11, scope: !2581)
!2581 = distinct !DILexicalBlock(scope: !2562, file: !10, line: 1698, column: 11)
!2582 = !DILocation(line: 1698, column: 13, scope: !2581)
!2583 = !DILocation(line: 1698, column: 11, scope: !2562)
!2584 = !DILocation(line: 1698, column: 22, scope: !2581)
!2585 = !DILocation(line: 1705, column: 13, scope: !2562)
!2586 = !DILocation(line: 1706, column: 7, scope: !2562)
!2587 = !DILocation(line: 1706, column: 14, scope: !2562)
!2588 = !DILocation(line: 1706, column: 17, scope: !2562)
!2589 = !DILocation(line: 1706, column: 29, scope: !2562)
!2590 = !DILocation(line: 1706, column: 36, scope: !2562)
!2591 = !DILocation(line: 1706, column: 50, scope: !2562)
!2592 = distinct !{!2592, !2586, !2591, !309}
!2593 = !DILocation(line: 1707, column: 35, scope: !2562)
!2594 = !DILocation(line: 1707, column: 28, scope: !2562)
!2595 = !DILocation(line: 1707, column: 19, scope: !2562)
!2596 = !DILocation(line: 1707, column: 17, scope: !2562)
!2597 = !DILocation(line: 1708, column: 14, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !2562, file: !10, line: 1708, column: 7)
!2599 = !DILocation(line: 1708, column: 12, scope: !2598)
!2600 = !DILocation(line: 1708, column: 19, scope: !2601)
!2601 = distinct !DILexicalBlock(scope: !2598, file: !10, line: 1708, column: 7)
!2602 = !DILocation(line: 1708, column: 23, scope: !2601)
!2603 = !DILocation(line: 1708, column: 21, scope: !2601)
!2604 = !DILocation(line: 1708, column: 7, scope: !2598)
!2605 = !DILocation(line: 1709, column: 37, scope: !2606)
!2606 = distinct !DILexicalBlock(scope: !2601, file: !10, line: 1708, column: 35)
!2607 = !DILocation(line: 1709, column: 40, scope: !2606)
!2608 = !DILocation(line: 1709, column: 27, scope: !2606)
!2609 = !DILocation(line: 1709, column: 4, scope: !2606)
!2610 = !DILocation(line: 1709, column: 14, scope: !2606)
!2611 = !DILocation(line: 1709, column: 17, scope: !2606)
!2612 = !DILocation(line: 1710, column: 11, scope: !2606)
!2613 = !DILocation(line: 1710, column: 21, scope: !2606)
!2614 = !DILocation(line: 1710, column: 25, scope: !2606)
!2615 = !DILocation(line: 1710, column: 28, scope: !2606)
!2616 = !DILocation(line: 1710, column: 40, scope: !2606)
!2617 = !DILocation(line: 1710, column: 44, scope: !2606)
!2618 = !DILocation(line: 1710, column: 47, scope: !2606)
!2619 = !DILocation(line: 1710, column: 4, scope: !2606)
!2620 = !DILocation(line: 1711, column: 7, scope: !2606)
!2621 = !DILocation(line: 1708, column: 31, scope: !2601)
!2622 = !DILocation(line: 1708, column: 7, scope: !2601)
!2623 = distinct !{!2623, !2604, !2624, !309}
!2624 = !DILocation(line: 1711, column: 7, scope: !2598)
!2625 = !DILocation(line: 1713, column: 14, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2562, file: !10, line: 1713, column: 7)
!2627 = !DILocation(line: 1713, column: 12, scope: !2626)
!2628 = !DILocation(line: 1713, column: 19, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2626, file: !10, line: 1713, column: 7)
!2630 = !DILocation(line: 1713, column: 23, scope: !2629)
!2631 = !DILocation(line: 1713, column: 21, scope: !2629)
!2632 = !DILocation(line: 1713, column: 7, scope: !2626)
!2633 = !DILocation(line: 1714, column: 8, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !2635, file: !10, line: 1714, column: 8)
!2635 = distinct !DILexicalBlock(scope: !2629, file: !10, line: 1713, column: 35)
!2636 = !DILocation(line: 1714, column: 11, scope: !2634)
!2637 = !DILocation(line: 1714, column: 8, scope: !2635)
!2638 = !DILocalVariable(name: "s", scope: !2639, file: !10, line: 1715, type: !13)
!2639 = distinct !DILexicalBlock(scope: !2634, file: !10, line: 1714, column: 17)
!2640 = !DILocation(line: 1715, column: 23, scope: !2639)
!2641 = !DILocation(line: 1715, column: 27, scope: !2639)
!2642 = !DILocation(line: 1715, column: 37, scope: !2639)
!2643 = !DILocation(line: 1716, column: 16, scope: !2639)
!2644 = !DILocation(line: 1717, column: 24, scope: !2639)
!2645 = !DILocation(line: 1717, column: 30, scope: !2639)
!2646 = !DILocation(line: 1717, column: 36, scope: !2639)
!2647 = !DILocation(line: 1717, column: 42, scope: !2639)
!2648 = !DILocation(line: 1716, column: 8, scope: !2639)
!2649 = !DILocation(line: 1718, column: 13, scope: !2639)
!2650 = !DILocation(line: 1719, column: 4, scope: !2639)
!2651 = !DILocalVariable(name: "s", scope: !2652, file: !10, line: 1720, type: !13)
!2652 = distinct !DILexicalBlock(scope: !2634, file: !10, line: 1719, column: 11)
!2653 = !DILocation(line: 1720, column: 23, scope: !2652)
!2654 = !DILocation(line: 1720, column: 27, scope: !2652)
!2655 = !DILocation(line: 1720, column: 37, scope: !2652)
!2656 = !DILocation(line: 1721, column: 16, scope: !2652)
!2657 = !DILocation(line: 1724, column: 5, scope: !2652)
!2658 = !DILocation(line: 1724, column: 12, scope: !2652)
!2659 = !DILocation(line: 1724, column: 19, scope: !2652)
!2660 = !DILocation(line: 1724, column: 26, scope: !2652)
!2661 = !DILocation(line: 1724, column: 33, scope: !2652)
!2662 = !DILocation(line: 1724, column: 40, scope: !2652)
!2663 = !DILocation(line: 1724, column: 47, scope: !2652)
!2664 = !DILocation(line: 1724, column: 54, scope: !2652)
!2665 = !DILocation(line: 1725, column: 5, scope: !2652)
!2666 = !DILocation(line: 1725, column: 12, scope: !2652)
!2667 = !DILocation(line: 1725, column: 19, scope: !2652)
!2668 = !DILocation(line: 1725, column: 26, scope: !2652)
!2669 = !DILocation(line: 1725, column: 33, scope: !2652)
!2670 = !DILocation(line: 1725, column: 40, scope: !2652)
!2671 = !DILocation(line: 1725, column: 47, scope: !2652)
!2672 = !DILocation(line: 1725, column: 54, scope: !2652)
!2673 = !DILocation(line: 1721, column: 8, scope: !2652)
!2674 = !DILocation(line: 1726, column: 13, scope: !2652)
!2675 = !DILocation(line: 1728, column: 4, scope: !2635)
!2676 = !DILocation(line: 1730, column: 29, scope: !2635)
!2677 = !DILocation(line: 1731, column: 8, scope: !2635)
!2678 = !DILocation(line: 1731, column: 23, scope: !2635)
!2679 = !DILocation(line: 1731, column: 26, scope: !2635)
!2680 = !DILocation(line: 1732, column: 8, scope: !2635)
!2681 = !DILocation(line: 1732, column: 25, scope: !2635)
!2682 = !DILocation(line: 1732, column: 33, scope: !2635)
!2683 = !DILocation(line: 1733, column: 8, scope: !2635)
!2684 = !DILocation(line: 1733, column: 14, scope: !2635)
!2685 = !DILocation(line: 1733, column: 19, scope: !2635)
!2686 = !DILocation(line: 1734, column: 9, scope: !2635)
!2687 = !DILocation(line: 1734, column: 17, scope: !2635)
!2688 = !DILocation(line: 1734, column: 22, scope: !2635)
!2689 = !DILocation(line: 1734, column: 30, scope: !2635)
!2690 = !DILocation(line: 1734, column: 33, scope: !2635)
!2691 = !DILocation(line: 1734, column: 39, scope: !2635)
!2692 = !DILocation(line: 0, scope: !2635)
!2693 = !DILocation(line: 1734, column: 8, scope: !2635)
!2694 = !DILocation(line: 1730, column: 14, scope: !2635)
!2695 = !DILocation(line: 1730, column: 11, scope: !2635)
!2696 = !DILocation(line: 1735, column: 11, scope: !2635)
!2697 = !DILocation(line: 1736, column: 7, scope: !2635)
!2698 = !DILocation(line: 1713, column: 31, scope: !2629)
!2699 = !DILocation(line: 1713, column: 7, scope: !2629)
!2700 = distinct !{!2700, !2632, !2701, !309}
!2701 = !DILocation(line: 1736, column: 7, scope: !2626)
!2702 = !DILocation(line: 1737, column: 3, scope: !2562)
!2703 = !DILocation(line: 1690, column: 26, scope: !2558)
!2704 = !DILocation(line: 1690, column: 3, scope: !2558)
!2705 = distinct !{!2705, !2560, !2706, !309}
!2706 = !DILocation(line: 1737, column: 3, scope: !2555)
!2707 = !DILocation(line: 1739, column: 7, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2546, file: !10, line: 1739, column: 7)
!2709 = !DILocation(line: 1739, column: 15, scope: !2708)
!2710 = !DILocation(line: 1739, column: 7, scope: !2546)
!2711 = !DILocation(line: 1745, column: 7, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2708, file: !10, line: 1739, column: 21)
!2713 = !DILocation(line: 1746, column: 7, scope: !2712)
!2714 = !DILocation(line: 1746, column: 24, scope: !2712)
!2715 = !DILocation(line: 1747, column: 32, scope: !2712)
!2716 = !DILocation(line: 1748, column: 4, scope: !2712)
!2717 = !DILocation(line: 1749, column: 4, scope: !2712)
!2718 = !DILocation(line: 1749, column: 21, scope: !2712)
!2719 = !DILocation(line: 1749, column: 29, scope: !2712)
!2720 = !DILocation(line: 1750, column: 4, scope: !2712)
!2721 = !DILocation(line: 1750, column: 10, scope: !2712)
!2722 = !DILocation(line: 1750, column: 15, scope: !2712)
!2723 = !DILocation(line: 1751, column: 5, scope: !2712)
!2724 = !DILocation(line: 1751, column: 13, scope: !2712)
!2725 = !DILocation(line: 1751, column: 18, scope: !2712)
!2726 = !DILocation(line: 1751, column: 26, scope: !2712)
!2727 = !DILocation(line: 1751, column: 29, scope: !2712)
!2728 = !DILocation(line: 1751, column: 35, scope: !2712)
!2729 = !DILocation(line: 0, scope: !2712)
!2730 = !DILocation(line: 1751, column: 4, scope: !2712)
!2731 = !DILocation(line: 1747, column: 17, scope: !2712)
!2732 = !DILocation(line: 1747, column: 14, scope: !2712)
!2733 = !DILocation(line: 1752, column: 3, scope: !2712)
!2734 = !DILocation(line: 1759, column: 10, scope: !2735)
!2735 = distinct !DILexicalBlock(scope: !2481, file: !10, line: 1759, column: 10)
!2736 = !DILocation(line: 1759, column: 18, scope: !2735)
!2737 = !DILocation(line: 1759, column: 10, scope: !2481)
!2738 = !DILocation(line: 1760, column: 3, scope: !2735)
!2739 = !DILocation(line: 1761, column: 10, scope: !2740)
!2740 = distinct !DILexicalBlock(scope: !2481, file: !10, line: 1761, column: 10)
!2741 = !DILocation(line: 1761, column: 16, scope: !2740)
!2742 = !DILocation(line: 1761, column: 10, scope: !2481)
!2743 = !DILocation(line: 1762, column: 11, scope: !2740)
!2744 = !DILocation(line: 1762, column: 18, scope: !2740)
!2745 = !DILocation(line: 1762, column: 9, scope: !2740)
!2746 = !DILocation(line: 1762, column: 3, scope: !2740)
!2747 = !DILocation(line: 1763, column: 2, scope: !2481)
!2748 = !DILocation(line: 1763, column: 11, scope: !2395)
!2749 = !DILocation(line: 1763, column: 17, scope: !2395)
!2750 = distinct !{!2750, !2479, !2751, !309}
!2751 = !DILocation(line: 1763, column: 24, scope: !2395)
!2752 = !DILocation(line: 1764, column: 11, scope: !2395)
!2753 = !DILocation(line: 1764, column: 19, scope: !2395)
!2754 = !DILocation(line: 1764, column: 9, scope: !2395)
!2755 = !DILocation(line: 1771, column: 9, scope: !2756)
!2756 = distinct !DILexicalBlock(scope: !2128, file: !10, line: 1771, column: 9)
!2757 = !DILocation(line: 1771, column: 24, scope: !2756)
!2758 = !DILocation(line: 1771, column: 27, scope: !2756)
!2759 = !DILocation(line: 1771, column: 34, scope: !2756)
!2760 = !DILocation(line: 1771, column: 9, scope: !2128)
!2761 = !DILocation(line: 1771, column: 51, scope: !2756)
!2762 = !DILocation(line: 1771, column: 40, scope: !2756)
!2763 = !DILocation(line: 1772, column: 17, scope: !2128)
!2764 = !DILocation(line: 1772, column: 5, scope: !2128)
!2765 = !DILocation(line: 1774, column: 12, scope: !2128)
!2766 = !DILocation(line: 1774, column: 5, scope: !2128)
!2767 = !DILocation(line: 1775, column: 1, scope: !2128)
!2768 = distinct !DISubprogram(name: "usage", scope: !10, file: !10, line: 1785, type: !1935, scopeLine: 1786, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2769 = !DILocation(line: 1787, column: 13, scope: !2768)
!2770 = !DILocation(line: 1787, column: 5, scope: !2768)
!2771 = !DILocation(line: 1802, column: 13, scope: !2768)
!2772 = !DILocation(line: 1802, column: 5, scope: !2768)
!2773 = !DILocation(line: 1806, column: 5, scope: !2768)
!2774 = distinct !DISubprogram(name: "main1", scope: !10, file: !10, line: 1825, type: !2775, scopeLine: 1826, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2775 = !DISubroutineType(types: !2776)
!2776 = !{!73, !73, !109}
!2777 = !DILocalVariable(name: "argc", arg: 1, scope: !2774, file: !10, line: 1825, type: !73)
!2778 = !DILocation(line: 1825, column: 11, scope: !2774)
!2779 = !DILocalVariable(name: "argv", arg: 2, scope: !2774, file: !10, line: 1825, type: !109)
!2780 = !DILocation(line: 1825, column: 24, scope: !2774)
!2781 = !DILocalVariable(name: "ch", scope: !2774, file: !10, line: 1827, type: !73)
!2782 = !DILocation(line: 1827, column: 10, scope: !2774)
!2783 = !DILocalVariable(name: "server_name", scope: !2774, file: !10, line: 1828, type: !6)
!2784 = !DILocation(line: 1828, column: 12, scope: !2774)
!2785 = !DILocalVariable(name: "server_ip", scope: !2774, file: !10, line: 1829, type: !6)
!2786 = !DILocation(line: 1829, column: 12, scope: !2774)
!2787 = !DILocalVariable(name: "ipaddress", scope: !2774, file: !10, line: 1830, type: !137)
!2788 = !DILocation(line: 1830, column: 10, scope: !2774)
!2789 = !DILocalVariable(name: "argv0", scope: !2774, file: !10, line: 1831, type: !137)
!2790 = !DILocation(line: 1831, column: 10, scope: !2774)
!2791 = !DILocalVariable(name: "server_root", scope: !2774, file: !10, line: 1832, type: !73)
!2792 = !DILocation(line: 1832, column: 10, scope: !2774)
!2793 = !DILocalVariable(name: "ipv6", scope: !2774, file: !10, line: 1833, type: !73)
!2794 = !DILocation(line: 1833, column: 10, scope: !2774)
!2795 = !DILocation(line: 1841, column: 16, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !2774, file: !10, line: 1841, column: 9)
!2797 = !DILocation(line: 1841, column: 24, scope: !2796)
!2798 = !DILocation(line: 1841, column: 9, scope: !2774)
!2799 = !DILocation(line: 1842, column: 2, scope: !2796)
!2800 = !DILocation(line: 1844, column: 14, scope: !2801)
!2801 = distinct !DILexicalBlock(scope: !2774, file: !10, line: 1844, column: 9)
!2802 = !DILocation(line: 1844, column: 22, scope: !2801)
!2803 = !DILocation(line: 1844, column: 9, scope: !2774)
!2804 = !DILocation(line: 1845, column: 21, scope: !2805)
!2805 = distinct !DILexicalBlock(scope: !2801, file: !10, line: 1844, column: 27)
!2806 = !DILocation(line: 1845, column: 14, scope: !2805)
!2807 = !DILocation(line: 1845, column: 12, scope: !2805)
!2808 = !DILocation(line: 1846, column: 23, scope: !2805)
!2809 = !DILocation(line: 1846, column: 16, scope: !2805)
!2810 = !DILocation(line: 1846, column: 14, scope: !2805)
!2811 = !DILocation(line: 1847, column: 5, scope: !2805)
!2812 = !DILocation(line: 1853, column: 5, scope: !2774)
!2813 = !DILocation(line: 1854, column: 5, scope: !2774)
!2814 = !DILocation(line: 1854, column: 25, scope: !2774)
!2815 = !DILocation(line: 1854, column: 31, scope: !2774)
!2816 = !DILocation(line: 1854, column: 18, scope: !2774)
!2817 = !DILocation(line: 1854, column: 16, scope: !2774)
!2818 = !DILocation(line: 1854, column: 57, scope: !2774)
!2819 = !DILocation(line: 1855, column: 10, scope: !2820)
!2820 = distinct !DILexicalBlock(scope: !2774, file: !10, line: 1854, column: 64)
!2821 = !DILocation(line: 1855, column: 2, scope: !2820)
!2822 = !DILocation(line: 1858, column: 20, scope: !2823)
!2823 = distinct !DILexicalBlock(scope: !2820, file: !10, line: 1855, column: 14)
!2824 = !DILocation(line: 1862, column: 6, scope: !2823)
!2825 = !DILocation(line: 1865, column: 21, scope: !2823)
!2826 = !DILocation(line: 1866, column: 6, scope: !2823)
!2827 = !DILocation(line: 1869, column: 30, scope: !2823)
!2828 = !DILocation(line: 1870, column: 6, scope: !2823)
!2829 = !DILocation(line: 1873, column: 22, scope: !2823)
!2830 = !DILocation(line: 1874, column: 6, scope: !2823)
!2831 = !DILocation(line: 1877, column: 35, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2823, file: !10, line: 1877, column: 10)
!2833 = !DILocation(line: 1877, column: 30, scope: !2832)
!2834 = !DILocation(line: 1877, column: 28, scope: !2832)
!2835 = !DILocation(line: 1877, column: 44, scope: !2832)
!2836 = !DILocation(line: 1877, column: 10, scope: !2823)
!2837 = !DILocation(line: 1881, column: 3, scope: !2838)
!2838 = distinct !DILexicalBlock(scope: !2839, file: !10, line: 1881, column: 3)
!2839 = distinct !DILexicalBlock(scope: !2832, file: !10, line: 1877, column: 49)
!2840 = !DILocation(line: 1881, column: 3, scope: !2839)
!2841 = !DILocation(line: 1882, column: 3, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2839, file: !10, line: 1882, column: 3)
!2843 = !DILocation(line: 1882, column: 3, scope: !2839)
!2844 = !DILocation(line: 1883, column: 3, scope: !2845)
!2845 = distinct !DILexicalBlock(scope: !2839, file: !10, line: 1883, column: 3)
!2846 = !DILocation(line: 1883, column: 3, scope: !2839)
!2847 = !DILocation(line: 1884, column: 3, scope: !2848)
!2848 = distinct !DILexicalBlock(scope: !2839, file: !10, line: 1884, column: 3)
!2849 = !DILocation(line: 1884, column: 3, scope: !2839)
!2850 = !DILocation(line: 1885, column: 3, scope: !2851)
!2851 = distinct !DILexicalBlock(scope: !2839, file: !10, line: 1885, column: 3)
!2852 = !DILocation(line: 1885, column: 3, scope: !2839)
!2853 = !DILocation(line: 1886, column: 3, scope: !2854)
!2854 = distinct !DILexicalBlock(scope: !2839, file: !10, line: 1886, column: 3)
!2855 = !DILocation(line: 1886, column: 3, scope: !2839)
!2856 = !DILocation(line: 1887, column: 3, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2839, file: !10, line: 1887, column: 3)
!2858 = !DILocation(line: 1887, column: 3, scope: !2839)
!2859 = !DILocation(line: 1888, column: 3, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2839, file: !10, line: 1888, column: 3)
!2861 = !DILocation(line: 1888, column: 3, scope: !2839)
!2862 = !DILocation(line: 1889, column: 3, scope: !2863)
!2863 = distinct !DILexicalBlock(scope: !2839, file: !10, line: 1889, column: 3)
!2864 = !DILocation(line: 1889, column: 3, scope: !2839)
!2865 = !DILocation(line: 1890, column: 3, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2839, file: !10, line: 1890, column: 3)
!2867 = !DILocation(line: 1890, column: 3, scope: !2839)
!2868 = !DILocation(line: 1892, column: 7, scope: !2869)
!2869 = distinct !DILexicalBlock(scope: !2839, file: !10, line: 1892, column: 7)
!2870 = !DILocation(line: 1892, column: 24, scope: !2869)
!2871 = !DILocation(line: 1892, column: 7, scope: !2839)
!2872 = !DILocation(line: 1893, column: 15, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2869, file: !10, line: 1892, column: 29)
!2874 = !DILocation(line: 1893, column: 7, scope: !2873)
!2875 = !DILocation(line: 1895, column: 24, scope: !2873)
!2876 = !DILocation(line: 1896, column: 3, scope: !2873)
!2877 = !DILocation(line: 1897, column: 6, scope: !2839)
!2878 = !DILocation(line: 1898, column: 6, scope: !2823)
!2879 = !DILocation(line: 1901, column: 33, scope: !2880)
!2880 = distinct !DILexicalBlock(scope: !2823, file: !10, line: 1901, column: 10)
!2881 = !DILocation(line: 1901, column: 28, scope: !2880)
!2882 = !DILocation(line: 1901, column: 26, scope: !2880)
!2883 = !DILocation(line: 1901, column: 42, scope: !2880)
!2884 = !DILocation(line: 1901, column: 10, scope: !2823)
!2885 = !DILocation(line: 1902, column: 11, scope: !2886)
!2886 = distinct !DILexicalBlock(scope: !2880, file: !10, line: 1901, column: 47)
!2887 = !DILocation(line: 1902, column: 3, scope: !2886)
!2888 = !DILocation(line: 1904, column: 18, scope: !2886)
!2889 = !DILocation(line: 1905, column: 6, scope: !2886)
!2890 = !DILocation(line: 1906, column: 6, scope: !2823)
!2891 = !DILocation(line: 1909, column: 30, scope: !2823)
!2892 = !DILocation(line: 1909, column: 28, scope: !2823)
!2893 = !DILocation(line: 1910, column: 6, scope: !2823)
!2894 = !DILocation(line: 1913, column: 20, scope: !2823)
!2895 = !DILocation(line: 1913, column: 18, scope: !2823)
!2896 = !DILocation(line: 1914, column: 17, scope: !2897)
!2897 = distinct !DILexicalBlock(scope: !2823, file: !10, line: 1914, column: 10)
!2898 = !DILocation(line: 1914, column: 10, scope: !2897)
!2899 = !DILocation(line: 1914, column: 35, scope: !2897)
!2900 = !DILocation(line: 1914, column: 10, scope: !2823)
!2901 = !DILocation(line: 1915, column: 17, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !2897, file: !10, line: 1914, column: 41)
!2903 = !DILocation(line: 1915, column: 15, scope: !2902)
!2904 = !DILocation(line: 1916, column: 15, scope: !2902)
!2905 = !DILocation(line: 1917, column: 6, scope: !2902)
!2906 = !DILocation(line: 1918, column: 6, scope: !2823)
!2907 = !DILocation(line: 1921, column: 28, scope: !2823)
!2908 = !DILocation(line: 1921, column: 23, scope: !2823)
!2909 = !DILocation(line: 1921, column: 21, scope: !2823)
!2910 = !DILocation(line: 1922, column: 6, scope: !2823)
!2911 = !DILocation(line: 1925, column: 14, scope: !2823)
!2912 = !DILocation(line: 1926, column: 6, scope: !2823)
!2913 = !DILocation(line: 1929, column: 6, scope: !2823)
!2914 = !DILocation(line: 1930, column: 2, scope: !2823)
!2915 = distinct !{!2915, !2813, !2916, !309}
!2916 = !DILocation(line: 1931, column: 5, scope: !2774)
!2917 = !DILocation(line: 1932, column: 5, scope: !2774)
!2918 = !DILocation(line: 1933, column: 28, scope: !2774)
!2919 = !DILocation(line: 1933, column: 5, scope: !2774)
!2920 = !DILocation(line: 1934, column: 13, scope: !2774)
!2921 = !DILocation(line: 1934, column: 10, scope: !2774)
!2922 = !DILocation(line: 1935, column: 13, scope: !2774)
!2923 = !DILocation(line: 1935, column: 10, scope: !2774)
!2924 = !DILocation(line: 1937, column: 9, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !2774, file: !10, line: 1937, column: 9)
!2926 = !DILocation(line: 1937, column: 17, scope: !2925)
!2927 = !DILocation(line: 1937, column: 9, scope: !2774)
!2928 = !DILocation(line: 1937, column: 26, scope: !2925)
!2929 = !DILocation(line: 1940, column: 5, scope: !2774)
!2930 = !DILocation(line: 1941, column: 12, scope: !2774)
!2931 = !DILocation(line: 1941, column: 19, scope: !2774)
!2932 = !DILocation(line: 1941, column: 5, scope: !2774)
!2933 = !DILocation(line: 1942, column: 22, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2774, file: !10, line: 1942, column: 9)
!2935 = !DILocation(line: 1942, column: 15, scope: !2934)
!2936 = !DILocation(line: 1942, column: 31, scope: !2934)
!2937 = !DILocation(line: 1942, column: 9, scope: !2934)
!2938 = !DILocation(line: 1942, column: 36, scope: !2934)
!2939 = !DILocation(line: 1942, column: 9, scope: !2774)
!2940 = !DILocation(line: 1942, column: 57, scope: !2934)
!2941 = !DILocation(line: 1942, column: 50, scope: !2934)
!2942 = !DILocation(line: 1942, column: 66, scope: !2934)
!2943 = !DILocation(line: 1942, column: 44, scope: !2934)
!2944 = !DILocation(line: 1942, column: 71, scope: !2934)
!2945 = !DILocation(line: 1945, column: 2, scope: !2774)
!2946 = !DILocation(line: 1945, column: 18, scope: !2774)
!2947 = !DILocation(line: 1945, column: 9, scope: !2774)
!2948 = !DILocation(line: 1945, column: 37, scope: !2774)
!2949 = !DILocation(line: 1945, column: 50, scope: !2774)
!2950 = !DILocation(line: 1944, column: 5, scope: !2774)
!2951 = !DILocation(line: 1947, column: 13, scope: !2774)
!2952 = !DILocation(line: 1947, column: 5, scope: !2774)
!2953 = !DILocalVariable(name: "h", scope: !2954, file: !10, line: 1950, type: !2567)
!2954 = distinct !DILexicalBlock(scope: !2774, file: !10, line: 1949, column: 5)
!2955 = !DILocation(line: 1950, column: 18, scope: !2954)
!2956 = !DILocation(line: 1953, column: 6, scope: !2954)
!2957 = !DILocation(line: 1953, column: 4, scope: !2954)
!2958 = !DILocation(line: 1955, column: 6, scope: !2959)
!2959 = distinct !DILexicalBlock(scope: !2954, file: !10, line: 1955, column: 6)
!2960 = !DILocation(line: 1955, column: 8, scope: !2959)
!2961 = !DILocation(line: 1955, column: 16, scope: !2959)
!2962 = !DILocation(line: 1955, column: 19, scope: !2959)
!2963 = !DILocation(line: 1955, column: 6, scope: !2954)
!2964 = !DILocation(line: 1956, column: 10, scope: !2959)
!2965 = !DILocation(line: 1956, column: 8, scope: !2959)
!2966 = !DILocation(line: 1956, column: 6, scope: !2959)
!2967 = !DILocation(line: 1957, column: 6, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !2954, file: !10, line: 1957, column: 6)
!2969 = !DILocation(line: 1957, column: 8, scope: !2968)
!2970 = !DILocation(line: 1957, column: 6, scope: !2954)
!2971 = !DILocation(line: 1958, column: 14, scope: !2972)
!2972 = distinct !DILexicalBlock(scope: !2968, file: !10, line: 1957, column: 17)
!2973 = !DILocation(line: 1958, column: 57, scope: !2972)
!2974 = !DILocation(line: 1958, column: 6, scope: !2972)
!2975 = !DILocation(line: 1959, column: 6, scope: !2972)
!2976 = !DILocation(line: 1961, column: 6, scope: !2977)
!2977 = distinct !DILexicalBlock(scope: !2954, file: !10, line: 1961, column: 6)
!2978 = !DILocation(line: 1961, column: 9, scope: !2977)
!2979 = !DILocation(line: 1961, column: 20, scope: !2977)
!2980 = !DILocation(line: 1961, column: 6, scope: !2954)
!2981 = !DILocalVariable(name: "s", scope: !2982, file: !10, line: 1962, type: !13)
!2982 = distinct !DILexicalBlock(scope: !2977, file: !10, line: 1961, column: 32)
!2983 = !DILocation(line: 1962, column: 21, scope: !2982)
!2984 = !DILocation(line: 1962, column: 25, scope: !2982)
!2985 = !DILocation(line: 1962, column: 28, scope: !2982)
!2986 = !DILocation(line: 1963, column: 14, scope: !2982)
!2987 = !DILocation(line: 1963, column: 44, scope: !2982)
!2988 = !DILocation(line: 1963, column: 50, scope: !2982)
!2989 = !DILocation(line: 1963, column: 56, scope: !2982)
!2990 = !DILocation(line: 1963, column: 62, scope: !2982)
!2991 = !DILocation(line: 1963, column: 6, scope: !2982)
!2992 = !DILocation(line: 1964, column: 11, scope: !2982)
!2993 = !DILocation(line: 1965, column: 2, scope: !2982)
!2994 = !DILocalVariable(name: "s", scope: !2995, file: !10, line: 1966, type: !13)
!2995 = distinct !DILexicalBlock(scope: !2977, file: !10, line: 1965, column: 9)
!2996 = !DILocation(line: 1966, column: 21, scope: !2995)
!2997 = !DILocation(line: 1966, column: 25, scope: !2995)
!2998 = !DILocation(line: 1966, column: 28, scope: !2995)
!2999 = !DILocation(line: 1967, column: 14, scope: !2995)
!3000 = !DILocation(line: 1970, column: 3, scope: !2995)
!3001 = !DILocation(line: 1970, column: 10, scope: !2995)
!3002 = !DILocation(line: 1970, column: 17, scope: !2995)
!3003 = !DILocation(line: 1970, column: 24, scope: !2995)
!3004 = !DILocation(line: 1970, column: 31, scope: !2995)
!3005 = !DILocation(line: 1970, column: 38, scope: !2995)
!3006 = !DILocation(line: 1970, column: 45, scope: !2995)
!3007 = !DILocation(line: 1970, column: 52, scope: !2995)
!3008 = !DILocation(line: 1971, column: 3, scope: !2995)
!3009 = !DILocation(line: 1971, column: 10, scope: !2995)
!3010 = !DILocation(line: 1971, column: 17, scope: !2995)
!3011 = !DILocation(line: 1971, column: 24, scope: !2995)
!3012 = !DILocation(line: 1971, column: 31, scope: !2995)
!3013 = !DILocation(line: 1971, column: 38, scope: !2995)
!3014 = !DILocation(line: 1971, column: 45, scope: !2995)
!3015 = !DILocation(line: 1971, column: 52, scope: !2995)
!3016 = !DILocation(line: 1967, column: 6, scope: !2995)
!3017 = !DILocation(line: 1972, column: 11, scope: !2995)
!3018 = !DILocation(line: 1976, column: 20, scope: !2774)
!3019 = !DILocation(line: 1976, column: 27, scope: !2774)
!3020 = !DILocation(line: 1976, column: 38, scope: !2774)
!3021 = !DILocation(line: 1976, column: 44, scope: !2774)
!3022 = !DILocation(line: 1977, column: 2, scope: !2774)
!3023 = !DILocation(line: 1977, column: 14, scope: !2774)
!3024 = !DILocation(line: 1976, column: 5, scope: !2774)
!3025 = !DILocation(line: 1979, column: 5, scope: !2774)
!3026 = !DILocation(line: 1981, column: 9, scope: !3027)
!3027 = distinct !DILexicalBlock(scope: !2774, file: !10, line: 1981, column: 9)
!3028 = !DILocation(line: 1981, column: 25, scope: !3027)
!3029 = !DILocation(line: 1981, column: 9, scope: !2774)
!3030 = !DILocation(line: 1982, column: 2, scope: !3031)
!3031 = distinct !DILexicalBlock(scope: !3027, file: !10, line: 1981, column: 31)
!3032 = !DILocation(line: 1983, column: 2, scope: !3031)
!3033 = !DILocation(line: 1984, column: 5, scope: !3031)
!3034 = !DILocation(line: 1986, column: 5, scope: !2774)
!3035 = !DILocation(line: 1987, column: 1, scope: !2774)
!3036 = distinct !DISubprogram(name: "main", scope: !10, file: !10, line: 1989, type: !3037, scopeLine: 1989, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3037 = !DISubroutineType(types: !3038)
!3038 = !{!73}
!3039 = !DILocalVariable(name: "argc", scope: !3036, file: !10, line: 1990, type: !73)
!3040 = !DILocation(line: 1990, column: 9, scope: !3036)
!3041 = !DILocalVariable(name: "param", scope: !3036, file: !10, line: 1991, type: !6)
!3042 = !DILocation(line: 1991, column: 11, scope: !3036)
!3043 = !DILocation(line: 1992, column: 11, scope: !3036)
!3044 = !DILocalVariable(name: "argv", scope: !3036, file: !10, line: 1993, type: !3045)
!3045 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 96, elements: !3046)
!3046 = !{!3047}
!3047 = !DISubrange(count: 3)
!3048 = !DILocation(line: 1993, column: 11, scope: !3036)
!3049 = !DILocation(line: 1993, column: 20, scope: !3036)
!3050 = !DILocation(line: 1993, column: 40, scope: !3036)
!3051 = !DILocation(line: 1994, column: 11, scope: !3036)
!3052 = !DILocation(line: 1994, column: 17, scope: !3036)
!3053 = !DILocation(line: 1994, column: 5, scope: !3036)
!3054 = !DILocation(line: 1995, column: 1, scope: !3036)
