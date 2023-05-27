#include <stdlib.h>
#include <stdio.h>
#include <assert.h>
#include <string.h>
#include <unistd.h>
#include <ctype.h>
#include <sys/time.h>

/* the following line is used to name the package (make dist) */

/* (c) Joerg Schulenburg 2000
    v0.1.0 initial version (stdin added)
    v0.2.0 popen added
    v0.2.7 review by Bruno Barberi Gnecco
    v0.39  autoconf
 */

#define EE()         fprintf(stderr,"\nERROR "__FILE__" L%d: ",__LINE__)
#define E0(x0)       {EE();fprintf(stderr,x0 "\n");      }
#define F0(x0)       {EE();fprintf(stderr,x0 "\n");      exit(1);}
#define F1(x0,x1)    {EE();fprintf(stderr,x0 "\n",x1);   exit(1);}
#define F2(x0,x1,x2) {EE();fprintf(stderr,x0 "\n",x1,x2);exit(1);}

/*
 * Weights to use for the different colours when converting a ppm
 * to greyscale.  These weights should sum to 1.0
 *
 * The below values have been chosen to reflect the fact that paper
 * goes a reddish-yellow as it ages.
 */
#define PPM_RED_WEIGHT .499
#define PPM_GREEN_WEIGHT .387
#define PPM_BLUE_WEIGHT .114
enum format {
	ISO8859_1, TeX, HTML, XML, SGML, UTF8, ASCII
};
typedef enum format FORMAT;
struct element {
   struct element *next, *previous;
   void *data;
};
typedef struct element Element;

struct list {
   Element *header;
   Element *tail;
   Element **fix;		/* fixes the list_del header problem */
   Element **current;	 	/* for(each_element) */
   int n;			/* number of elements */
   int level;			/* level of nested fors */
};
typedef struct list List;
#define g_debug(a)	
#define list_empty(l)			((l)->header == NULL ? 1 : 0)
#define list_get_header(l)		((l)->header->data)
#define list_get_tail(l)		((l)->tail->data)
#define list_get_current(l)		((l)->current[(l)->level]->data)
#define list_get_cur_prev(l)		((l)->current[(l)->level]->previous == NULL ? \
			NULL : (l)->current[(l)->level]->previous->data )
#define list_get_cur_next(l)		((l)->current[(l)->level]->next == NULL ? \
			NULL : (l)->current[(l)->level]->next->data )
#define list_total(l)			((l)->n)

#define for_each_data(l)		\
 if (list_higher_level(l) == 0) { \
   for ( ; (l)->current[(l)->level]; (l)->current[(l)->level] = \
	(l)->current[(l)->level]->next ) { \
     if ( (l)->fix[(l)->level] ) { /* fix level */\
       int i; \
       for ( i = (l)->level - 1; i >= 0; i-- ) {  \
       /* check if some other copy of (l)->fix[(l)->level] exists */ \
        \
         if ( (l)->fix[i] == (l)->fix[(l)->level] ) break; \
       } \
       if ( i < 0 ) { /* no, it doesn't. Free it */ \
         free((l)->fix[(l)->level]); \
       } \
       (l)->fix[(l)->level] = NULL; \
     }

#define end_for_each(l)			\
   } \
 list_lower_level(l); \
 }
void list_init( List *l ) {
  if ( !l )
     return;

  l->header = l->tail = NULL;
  l->current = NULL;
  l->fix = NULL;
  l->level = -1;
  l->n = 0;
}

/* returns element associated with data. */
Element *list_element_from_data( List *l, void *data ) {
  Element *temp;

  if ( !l || !data )
    return NULL;

  if ( !(temp = l->header) )
    return NULL;

  while ( temp->data != data ) {
    temp = temp->next;
    if ( !temp )
      return NULL;
  }
  return temp;
}

/* appends data to the list. Returns 1 on error, 0 if OK. */
int list_app( List *l, void *data ) {
  Element *e;
  
  if ( !l || !data )
     return 1;
  if ( !(e = (Element *)malloc(sizeof(Element))) )
    return 1;
  
  e->data = data;
  if ( !l->header ) {
    l->header = l->tail = e;
    l->n = 1;
    e->previous = e->next = NULL;
    return 0;
  }

  l->tail->next = e;
  e->previous = l->tail;
  l->tail = e;
  e->next = NULL;
  l->n++;
  return 0;
}

/* inserts data before data_after. If data_after == NULL, appends.
   Returns 1 on error, 0 if OK. */
int list_ins( List *l, void *data_after, void *data) {
  Element *e, *after_element;

  /* test arguments */
  if ( !l || !data )
    return 1;

  if ( !data_after || !l->header )
    return list_app(l, data);

  /* alloc a new element */
  if( !(e = (Element *)malloc(sizeof(Element))) )
    return 1;
  e->data = data;

  /* get data_after element */
  if ( !(after_element = list_element_from_data(l, data_after)) )
    return 1;

  e->next = after_element;
  e->previous = after_element->previous;
  if ( after_element->previous ) /* i.e., if after_element != list->header */
    after_element->previous->next = e;
  else /* update list->header */
    l->header = e;
  after_element->previous = e;
  l->n++;

  return 0;
}

/* deletes (first) element with data from list. User must free data.
   Returns 0 if OK, 1 on error.
   This is the internal version, that shouldn't be called usually. Use the
   list_del() macro instead.*/
int list_del( List *l, void *data ) {
  Element *temp;
  int i;

  /* find element associated with data */
  if ( !(temp = list_element_from_data(l, data)) )
    return 1;

  /* test if the deleted node is current in some nested loop, and fix it. */
  for ( i = l->level; i >= 0; i-- ) {
    if ( l->current[i] == temp ) {
      l->fix[i] = temp;
    }
  }

  /* fix previous */
  if ( temp == l->header ) {
    l->header = temp->next;
    if (l->header)
      l->header->previous = NULL;
  }
  else
    temp->previous->next = temp->next;

  /* fix next */
  if ( temp == l->tail ) {
    l->tail = temp->previous;
    if (l->tail)
      l->tail->next = NULL;
  }
  else {
    if (temp->next)
      temp->next->previous = temp->previous;
  }

  /* and free stuff */
  l->n--;
  return 0;
}

/* frees list. See also list_and_data_free() */
void list_free( List *l ) {
  Element *temp, *temp2;

  if ( !l )
    return;
  if ( !l->header )
    return;

  if ( l->current ) {
    free(l->current);
  }
  l->current = NULL;

  if ( l->fix ) {
    free(l->fix);
  }
  l->fix = NULL;

  temp = l->header;
  while ( temp ) {
    temp2 = temp->next;
    free(temp);
    temp = temp2;
  }
  l->header = l->tail = NULL;
}

/* setup a new level of for_each */
int list_higher_level( List *l ) {
  Element **newcur;
  Element **newfix;
  
  if ( !l || !l->header ) 
    return 1;

  /*
     Security-check: NULL pointer passed to realloc.
      ANSI allows this, but it may cause portability problems.
  */    
  newcur = (Element **)realloc(l->current, (l->level+2)*sizeof(Element *));
  newfix = (Element **)realloc(l->fix    , (l->level+2)*sizeof(Element *));
  if ( !newcur || !newfix ) { /* doesn't blow everything */
    fprintf(stderr, " realloc failed! level++=%d current[]=%p fix[]=%p\n", 
	l->level, l->current, l->fix);
    return 1;
  }
  l->current = newcur;
  l->fix = newfix;
  l->level++;
  l->current[l->level] = l->header;
  l->fix[l->level] = NULL;
  g_debug(fprintf(stderr, " level++=%d current[]=%p fix[]=%p\n", l->level,
      l->current, l->fix);)
  return 0;
}

void list_lower_level( List *l ) {
  if ( !l ) 
    return;

  if (!l->level) {
    free(l->current); /* calm -lefence */
    free(l->fix    );
    l->current = NULL; /* could be important */
    l->fix     = NULL;
  } else {
    l->current = (Element **)realloc(l->current, l->level*sizeof(Element *));
    l->fix     = (Element **)realloc(l->fix    , l->level*sizeof(Element *));
  }
  l->level--;
  g_debug(fprintf(stderr, " level--=%d current[]=%p fix[]=%p\n", l->level, 
      l->current, l->fix);)
}

/* returns the next item data */
void *list_next( List *l, void *data ) {
  Element *temp;

  if ( !l || !(temp = list_element_from_data(l, data)) )
    return NULL;
  if( !temp->next ) return NULL;
  return (temp->next->data);
}

/* returns the previous item data */
void *list_prev( List *l, void *data ) {
  Element *temp;

  if ( !l || !(temp = list_element_from_data(l, data)) )
    return NULL;
  if( !temp->previous ) return NULL;
  return (temp->previous->data);
}

/* Similar to qsort. Sorts list, using the (*compare) function, which is 
  provided by the user. The comparison function must return an integer less 
  than, equal to, or greater than zero if the first argument is considered to 
  be respectively less than, equal to, or greater than the second. 
  Uses the bubble sort algorithm.
  */
void list_sort( List *l, int (*compare)(const void *, const void *) ) {
  Element *temp, *prev;
  int i;

  if ( !l )
    return;

  for (i = 0; i < l->n; i++ ) {
    for ( temp = l->header->next; temp != NULL; temp = temp->next ) {
      if ( compare((const void *)temp->previous->data, (const void *)temp->data) > 0 ) {

   	/* swap with the previous node */
	prev = temp->previous;
	
	if ( prev->previous )
    	  prev->previous->next = temp;
  	else /* update header */
	  l->header = temp;

	temp->previous = prev->previous;
	prev->previous = temp;
	prev->next = temp->next;
	if ( temp->next )
	  temp->next->previous = prev;
	else /* update tail */
	  l->tail = prev;
	temp->next = prev;

	/* and make sure the node in the for loop is correct */
	temp = prev;

#ifdef SLOWER_BUT_KEEP_BY_NOW
/* this is a slower version, but guaranteed to work */
        void *data;

	data = temp->data;
	prev = temp->previous;
	list_del(l, data);
	list_ins(l, prev->data, data);
	temp = prev;
#endif
      }
    }
  }

  g_debug(fprintf(stderr, "list_sort()\n");)
}

/* calls free_data() for each data in list l, 
 * before free list with list_free() */
int list_and_data_free( List *l, void (*free_data)(void *data)) {
  void *data;

  if ( !l ) return 0;
  if ( !free_data ) return 1;

  for_each_data(l) {
    if ((data = list_get_current(l)))
      free_data(data);
  } end_for_each(l);
  
  list_free(l);

  g_debug(fprintf(stderr, "list_and_data_free()\n");)

  return 0;
}


/*
    feel free to expand this list of usable converting programs
    Note 1: the last field must be NULL.
    Note 2: "smaller" extensions must come later: ".pnm.gz" must come
       before ".pnm".
 */
struct pixmap {
    unsigned char *p;	/* pointer of image buffer (pixmap) */
    int x;		/* xsize */
    int y;		/* ysize */
    int bpp;		/* bytes per pixel:  1=gray 3=rgb */
};
typedef struct pixmap pix;
char *xlist[]={
        ".pnm.gz",	"gzip -cd",  /* compressed pnm-files, gzip package */
        ".pbm.gz",	"gzip -cd",
        ".pgm.gz",	"gzip -cd",
        ".ppm.gz",	"gzip -cd",
        ".pnm.bz2",	"bzip2 -cd",
        ".pbm.bz2",	"bzip2 -cd",
        ".pgm.bz2",	"bzip2 -cd",
        ".ppm.bz2",	"bzip2 -cd",
        ".jpg", 	"djpeg -gray -pnm",  /* JPG/JPEG, jpeg package */
        ".jpeg",	"djpeg -gray -pnm",
        ".gif",	"giftopnm",          /* GIF, netpbm package */
        ".bmp",	"bmptoppm",
        ".tiff",	"tifftopnm",
        ".png",	"pngtopnm", /* Portable Network Graphics (PNG) format */
        ".ps",	"pstopnm -stdout -portrait -pgm", /* postscript */
        ".eps",	"pstopnm -stdout -portrait -pgm", /* encapsulated postscript */
        ".fig",	"fig2dev -L ppm -m 3", /* xfig files, transfig package */
        NULL
};

/* return a pointer to command converting file to pnm or NULL */
char *testsuffix(char *name){
    int i; char *rr;

    for(i = 0; xlist[i] != NULL; i += 2 ) {
        if((rr=strstr(name, xlist[i])) != NULL)
            if(strlen(rr)==strlen(xlist[i])) /* handle *.eps.pbm correct */
                return xlist[i+1];
    }
    return NULL;
}


char read_char(FILE *f1){	// filter #-comments
    char c;
    int  m;
    for(m=0;;){
        c=fgetc(f1);
        if( feof(f1)   )		E0("read feof");
        if( ferror(f1) )		F0("read ferror");
        if( c == '#'  )		{ m = 1; continue; }
        if( m ==  0   )		return c;
        if( c == '\n' )		m = 0;
    }
}

/*
   for simplicity only PAM of netpbm is used, the older formats
   PBM, PGM and PPM can be handled implicitly by PAM routines (js05)
 */
#ifdef HAVE_PAM_H
void readpgm(char *name, pix * p, int vvv) {
  FILE *fp;
  char *pip, magic1, magic2;
  int i, j, sample, minv = 0, maxv = 0;
  int ppm_format = 0;
  struct pam inpam;
  tuple *tuplerow;

  assert(p);

  /* open file; test if conversion is needed. */
  if (name[0] == '-' && name[1] == '\0') {
    fp = stdin;
  }
  else {
    pip = testsuffix(name);
    if (!pip) {
      fp = fopen(name, "rb");
      if (!fp)
	F1("opening file %s", name);
    }
    else {
      char *buf = (char *)malloc((strlen(pip)+strlen(name)+2)*
	  sizeof(char));
      sprintf(buf, "%s %s", pip, name);
      if (vvv) {
	fprintf(stderr, "# popen( %s )\n", buf);
      }
#ifdef HAVE_POPEN
      fp = popen(buf, "r");
#else
      F0("sorry, compile with HAVE_POPEN to use pipes");
#endif
      if (!fp)
	F1("opening pipe %s", buf);
      free(buf);
    }
  }

  /* read pgm */
  pnm_readpaminit(fp, &inpam, sizeof(inpam));

  p->x = inpam.width;
  p->y = inpam.height;
  if ( !(p->p = (unsigned char *)malloc(p->x*p->y)) )
    F1("Error at malloc: p->p: %d bytes", p->x*p->y);
  tuplerow = pnm_allocpamrow(&inpam);
  magic1=(inpam.format >> 8) & 255; /* 'P' for PNM,PAM */
  magic2=(inpam.format     ) & 255; /* '7' for PAM */
  minv=inpam.maxval;
  if (vvv) {
      fprintf(stderr, "# readpam: format=0x%04x=%c%c h*w(d*b)=%d*%d(%d*%d)\n",
        inpam.format, /* magic1*256+magic2 */
        ((magic1>31 && magic1<127)?magic1:'.'),
        ((magic2>31 && magic2<127)?magic2:'.'),
        inpam.height,
        inpam.width,
        inpam.depth,
        inpam.bytes_per_sample);
  }
  for ( i=0; i < inpam.height; i++ ) {
    pnm_readpamrow(&inpam, tuplerow);
    for ( j = 0; j < inpam.width; j++ ) {
      if (inpam.depth>=3)
        sample
          = PPM_RED_WEIGHT   * tuplerow[j][0]
          + PPM_GREEN_WEIGHT * tuplerow[j][1]
          + PPM_BLUE_WEIGHT  * tuplerow[j][2];
      else
        sample = tuplerow[j][0];
      sample = 255 * sample / inpam.maxval;
      p->p[i*inpam.width+j] = sample;
      if (maxv<sample) maxv=sample;
      if (minv>sample) minv=sample;
    }
  }
  if (vvv) fprintf(stderr,"# readpam: min=%d max=%d\n",minv,maxv);
  pnm_freepamrow(tuplerow);
  fclose(fp);

  p->bpp = 1;
}

#else
/*
   if PAM not installed, here is the fallback routine,
   which is not so powerful
 */
void readpgm(char *name,pix *p,int vvv){	// raw-ppm
    char c1,c2,*pip;     int nx,ny,nc,mod,i,j,k;	// buffer
    FILE *f1;            unsigned char *pic;
    char buf[512];
    int lx, ly, dx;
    int value;
    int bps=1; /* bytes per sample (0..255..65535...) */

    pip=NULL;
    if(name[0]=='-' && name[1]==0){
        f1=stdin;  /* is this correct ??? */
    } else {
        pip=testsuffix(name);
        if(!pip){
            f1=fopen(name,"rb"); if(!f1)F1("opening file %s",name);
        } else {
            sprintf(buf,"%s %s",pip,name); /* how to prevent OVL ? */
            if(vvv){ fprintf(stderr,"# popen( %s )\n",buf); }
#ifdef HAVE_POPEN
                f1=popen(buf,"r");
#else
            F0("sorry, compile with HAVE_POPEN to use pipes");
#endif
            if(!f1)F1("opening pipe %s",buf);
        }
    }
    c1=fgetc(f1); if(feof(f1))F0("read");
    c2=fgetc(f1); if(feof(f1))F0("read");
    if(c1!='P')F0("first byte should be P in PNM-files");
    if(c2!='5' && c2!='4' && c2!='6')// F0("no PNM-RAW"); // PGM-RAW,PBM-RAW,PPM-RAW
        if(c2!='1' && c2!='2' && c2!='3')F0("no PNM");
    nx=ny=nc=0; if( c2=='4' || c2=='1') nc=1;
    for(mod=0;((c2=='5' || c2=='2') && (mod&7)<6)
              ||  ((c2=='6' || c2=='3') && (mod&7)<6)
              ||  ((c2=='4' || c2=='1') && (mod&7)<4);)
    {						// mode: 0,2,4=[ |\t|\r|\n]
        //   1=nx 3=ny 5=nc 8-13=#rem
        c1=read_char(f1);				// former: # mod|=8
        if( (mod & 1)==0 )				// whitespaces
            if( !isspace(c1) ) mod++;
        if( (mod & 1)==1 ) {
            if( !isdigit(c1) ) {
                if( !isspace(c1) )F0("unexpected character");
                mod++; }
            else if(mod==1) nx=nx*10+c1-'0';
            else if(mod==3) ny=ny*10+c1-'0';
            else if(mod==5) nc=nc*10+c1-'0';
        }
    }
    if(vvv)
        fprintf(stderr,"# PNM P%c x=%d y=%d c=%d head=%ld",c2,nx,ny,nc,ftell(f1));
    if( c2=='4' && (nx&7)!=0 ){
        /* nx=(nx+7)&~7;*/ if(vvv)fprintf(stderr," PBM2PGM nx %d",(nx+7)&~7);
    }
    if (nc>> 8) bps=2;
    if (nc>>16) bps=3;
    if (nc>>24) bps=4;
    fflush(stdout);
    printf("before malloc: %d\n", nx*ny);
    pic=(unsigned char *)malloc( nx*ny );
    if(pic==NULL)F0("memory failed");			// no memory
    /* this is a slow but short routine for P1 to P6 formats */
    if( c2=='5' && nc<256 ) /* fast */
        if(ny!=(int)fread(pic,   nx,ny,f1))F0("read");	// read all lines
    if( c2=='5' && nc>255 ) /* slow */
        for (i=0;i<nx*ny;i++) {
            if(bps!=(int)fread(buf,1,bps,f1))F0("read");	// read one value
            pic[i]=buf[bps-1]; /* store the most significant byte */
        }
    if( c2=='2' )for(mod=j=i=0;i<nx*ny && !feof(f1);){ // not very clever
            c1=read_char(f1);
            if( !isdigit(c1) ) {  if( !isspace(c1) )F0("unexpected char");
                if(1&mod) { pic[i]=j*255/nc; i++; j=0; mod=0; }  }
            else { j=j*10+c1-'0'; mod=1; };
        }
    if( c2=='1' )for(mod=j=i=0,nc=255;i<nx*ny && !feof(f1);){ // PBM-ASCII 0001100
            c1=read_char(f1);
            if( isdigit(c1) ) { pic[i]=((c1=='0')?255:0); i++; }
            else if( !isspace(c1) )F0("unexpected char");
        }
    if( c2=='3' )for(mod=k=j=i=0;i<nx*ny*3 && !feof(f1);){
            c1=read_char(f1);
            if( !isdigit(c1) ) {  if( !isspace(c1) )F0("unexpected char");
                if(1&mod) { k+=j; if(mod==5){ printf("i: %d\n", i); pic[i]=k/3; i++; }
                    j=0; mod=(mod+1)%6; }  }
            else { j=j*10+c1-'0'; if(!(mod&1)) mod++; };
        }
    if( c2=='6' ){
        for (i=0;i<nx*ny;i++) {
            if(3*bps!=(int)fread(buf,1,3*bps,f1))F0("read");	// read all lines
            pic[i]=( buf[  bps-1]
                     +buf[2*bps-1]
                     +buf[3*bps-1] ) / 3;
        }
    }
    if( c2=='4' ){				// PBM-RAW
        dx=(nx+7)&~7;				// dx (mod 8)
        if(ny!=(int)fread(pic,dx>>3,ny,f1))F0("read");	// read all bytes
        for(ly=ny-1;ly>=0;ly--)
            for(lx=nx-1;lx>=0;lx--)
                pic[lx+ly*nx]=( (128 & pic[(lx+ly*dx)>>3]<<(lx & 7)) ? 0 : 255 );
        nc=255;
    }
    if(name[0]=='-' && name[1]==0){
        f1=NULL;
    } else {
        if(!pip) fclose(f1);
#ifdef HAVE_POPEN
        else     pclose(f1);	/* close pipe (Jul00) */
#endif
    }
    p->p=pic;  p->x=nx;  p->y=ny; p->bpp=1;
    if(vvv)fprintf(stderr,"\n");
}
#endif /* HAVE_PAM_H */

int writepgm(char *nam,pix *p){// P5 raw-pgm
    FILE *f1;int a,x,y;
    f1=fopen(nam,"wb");if(!f1)F0("open");		// open-error
    fprintf(f1,"P5\n%d %d\n255\n",p->x,p->y);
    if(p->bpp==3)
        for(y=0;y<p->y;y++)
            for(x=0;x<p->x;x++){	// set bit
                a=x+y*p->x;
                p->p[a]=(p->p[3*a+0]+p->p[3*a+1]+p->p[3*a+2])/3;
            }
    if(p->y!=(int)fwrite(p->p,p->x,p->y,f1))F0("write");	// write all lines
    fclose(f1);
    return 0;
}

// pgm2ppm, use last 3 bits for farbcoding
int writeppm(char *nam,pix *p){// P6 raw-ppm
    FILE *f1;int x,y; unsigned char rgb[3];
    f1=fopen(nam,"wb");if(!f1)F0("open");		// open-error
    fprintf(f1,"P6\n%d %d\n255\n",p->x,p->y);
    if( p->bpp==1 )
        for(y=0;y<p->y;y++)
            for(x=0;x<p->x;x++){
                rgb[0]=rgb[1]=rgb[2]=p->p[x+y*p->x];
                if(p->p[x+y*p->x]&4) rgb[0]=64;
                if(p->p[x+y*p->x]&2) rgb[1]=64;
                if(p->p[x+y*p->x]&1) rgb[2]=64;
                if( 1!=(int)fwrite(rgb,3,1,f1) )F0("write");
            }
    if( p->bpp==3 )
        if( p->y!=(int)fwrite(p->p,3*p->x,p->y,f1) )F0("write");
    fclose(f1);
    return 0;
}

// high bit = first,
int writepbm(char *nam,pix *p){// P4 raw-pbm
    FILE *f1;int x,y,a,b,dx,i;
    dx=(p->x+7)&~7;	// enlarge to a factor of 8
    for(y=0;y<p->y;y++)
        for(x=0;x<p->x;x++){	// set bit
            a=(x+y*dx)>>3;b=7-(x&7);	// adress an bitisnumber
            i=x+y*p->x;
            if(p->bpp==3) i=(p->p[3*i+0]+p->p[3*i+1]+p->p[3*i+2])/3;
            else         i= p->p[  i  ];
            i=((i>127)?0:1);
            p->p[a]=(p->p[a] & (~1<<b)) | i<<b;
        }
    f1=fopen(nam,"wb");if(!f1)F0("open");		// open-error
    fprintf(f1,"P4\n%d %d\n",p->x,p->y);
    if(p->y!=(int)fwrite(p->p,dx>>3,p->y,f1))F0("write");	// write all lines
    fclose(f1);
    return 0;
}
// ------------------------------------------------------------------------

#define AT 7	// mark
#define M1 1	// mark
enum direction {
    UP=1, DO, RI, LE
};
typedef enum direction DIRECTION;
#define ST 7    // stop
// -------------------------------------------------------------
// detect maximas in of line overlapps (return in %) and line koord
#define HOR 1    // horizontal
#define VER 2    // vertikal
#define RIS 3    // rising=steigend
#define FAL 4    // falling=fallend

#define MAXlines 1024

/* ToDo: if we have a tree instead of a list, a line could be a node object */
struct tlines {
    int num;
    /* ToDo: add dx, so we have a vector (dx,dy) (js) */
    int dy;		/* offset for straight/skew lines dy(x+px) */
    int m1[MAXlines],   /* start of line = upper bound of 'A' */
    m2[MAXlines],   /* upper bound of 'e' */
    m3[MAXlines],	/* lower bound of 'e' = baseline */
    m4[MAXlines];	/* stop of line = lower bound of 'q' */
    int x0[MAXlines],
            x1[MAXlines];		/* left and right border */
};

#define NumAlt 10 // maximal number of alternative chars (table length)
struct box {	// this structure should contain all pixel infos of a letter
    int x0,x1,y0,y1,x,y,dots;	// xmin,xmax,ymin,ymax,reference-pixel,i-dots
    wchar_t c,ac;	// detected (alternate) char
    wchar_t modifier;	// default=0, see compose() in unicode.c
    int num;		// same nummer = same char
    int line;		// line number (points to struct tlines lines)
    int m1,m2,m3,m4;	// m2 = upper boundary, m3 = baseline
    // planed: sizeof hole_1, hole_2, certainty (run1=100%,run2=90%,etc.)
    pix *p;		// pointer to pixmap (v0.2.5)
    /* tac, wac is used together with setac() to manage very similar chars */
    int num_ac;         // length of table (alternative chars), default=0
    wchar_t tac[NumAlt]; // alternative chars, only used by setac(),getac()
    int     wac[NumAlt]; // weight of alternative chars
    char    *obj;        // pointer to text-object ... (default=NULL)
    //  ... (melted chars, barcode, picture coords, ...)
    //  must be freed before box is freed!
    //  do _not_ copy obj !!!!!
};
typedef struct box Box;

#define outbounds(p, tx, ty)   	    (tx < 0 || ty < 0 || tx >= (p)->x || ty >= (p)->y)

typedef struct path {
    int start;			// color at the beginning of the path
    // (0=white, 1=black)
    int *x;			// x coordinates of transitions
    int *y;			// y coordinates of transitions
    int num;			// current number of entries in x or y
    int max;			// maximum number of entries in x or y
    // (if more values need to be stored,
    // the arrays are enlarged)
} path_t;

/* job_t contains all information needed for an OCR task */
typedef struct job_s {
    struct { /* source data */
        char *fname; /* input filename; default value: "-" */
        pix p; /* source pixel data */
        /* pixelmap 8bit gray */
    } src;
    struct { /* temporary stuff, e.g. buffers */
#ifdef HAVE_GETTIMEOFDAY
        struct timeval init_time; /* starting time of this job */
#endif
        pix ppo; /* pixmap for visual debugging output */

        /* sometimes recognition function is called again and again, if result was 0
           n_run tells the pixel function to return alternative results */
        int n_run; /* num of run, if run_2 critical pattern get other results */
        /* used for 2nd try, pixel uses slower filter function etc. */
        List dblist; /* FIXME jb: desc */
    } tmp;
    struct { /* results */
        List boxlist; /* FIXME jb: desc */
        List linelist; /* FIXME jb: desc */

        struct tlines lines; /* used to access to line-data */
        /* here the positions (frames) of lines are */
        /* stored for further use */

        int avX,avY; /* average X,Y (avX=sumX/numC) */
        int sumX,sumY,numC; /* sum of all X,Y; num chars */
    } res;
    struct { /* configuration */
        int cs; /* FIXME jb: grey level 0<160<=255; default value: 0 */
        /* critical value (pixel<cs => black pixel) */

        int spc; /* spacewidth/dots (0 = autodetect); default value: 0 */
        int mode; /* operation modes; default value: 0 */
        /* operation mode (see --help) */
        int dust_size; /* dust size; default value: 10 */
        int only_numbers; /* numbers only; default value: 0 */
        int verbose; /* verbose mode; default value: 0 */
        /* verbose option (see --help) */
        FORMAT out_format; /* output format; default value: ISO8859_1*/
        char *lc; /* list of chars (_ = not recognized chars); default value: "_" */
        char *db_path; /* pathname for database; default value: NULL */
        char *cfilter; /* char filter; default value: NULL */
    } cfg;
} job_t;

void job_init(job_t *job) {
    /* init source */
    job->src.fname = "-";
    /* FIXME jb: init pix */
    job->src.p.p = NULL;

    /* init results */
    list_init( &job->res.boxlist );
    list_init( &job->res.linelist );
    job->res.avX = 5;
    job->res.avY = 8;
    /* FIXME jb: init
     * job->res.sumX = ?;
     * job->res.sumY = ?;
     * job->res.numC = ?;
     * */
    job->res.lines.dy=0;
    job->res.lines.num=0;

    /* init temporaries */
    list_init( &job->tmp.dblist );
    job->tmp.n_run = 0;
    /* FIXME jb: init ppo */
    job->tmp.ppo.p = NULL;
    job->tmp.ppo.x = 0;
    job->tmp.ppo.y = 0;

    /* init cfg */
    job->cfg.cs = 0;
    job->cfg.spc = 0;
    job->cfg.mode = 0;
    job->cfg.dust_size = -1; /* auto detect */
    job->cfg.only_numbers = 0;
    job->cfg.verbose = 0;
    job->cfg.out_format = ISO8859_1;
    job->cfg.lc = "_";
    job->cfg.db_path = (char*)NULL;
    job->cfg.cfilter = (char*)NULL;
}

/* free job structure */
void job_free(job_t *job) {
    /* FIXME jb: free pix */
    free(job->src.p.p);

    /* FIMXE jb: free lists
     * list_free( &job->res.linelist );
     * list_free( &job->tmp.dblist );
     */
    /* FIXME jb: free pix */
    free( job->tmp.ppo.p );

    /* FIXME jb: use box_free() instead of free() */
    list_and_data_free(&(job->res.boxlist), free);

}
//FIXME jb: remove JOB;
extern job_t *JOB;

// kalkulate the overlapp of the line (0-1) with black points
// by rekursiv bisection
// (evl. Fehlertoleranz mit pixel in Umgebung dx,dy suchen) (umschaltbar) ???
// MidPoint Line Algorithm (Bresenham) Foley: ComputerGraphics better?

// gerade y=dy/dx*x+b, implizit d=F(x,y)=dy*x-dx*y+b*dx=0
// incrementell y(i+1)=m*(x(i)+1)+b, F(x+1,y+1)=f(F(x,y))
int get_line(int x0, int y0, int x1, int y1, pix *p, int cs, int ret);
int get_line2(int x0, int y0, int x1, int y1, pix *p, int cs, int ret);

// look for white 0x02 or black 0x01 dots (0x03 = white+black)
char get_bw(int x0, int x1, int y0, int y1,
            pix *p, int cs,int mask);

// look for black crossing a line x0,y0,x1,y1
// follow line and count crossings ([white]-black-transitions)
int num_cross(int x0, int x1, int y0, int y1,
              pix *p,  int cs);

// memory allocation with error checking
void *xrealloc(void *ptr, size_t size);

// follow a line x0,y0,x1,y1 recording locations of transitions,
// return count of transitions
int follow_path(int x0, int x1, int y0, int y1, pix *p,  int cs, path_t *path);

// -------------------------------------------------------------
// mark edge-points
//  - first move forward until b/w-edge
//  - more than 2 pixel?
//  - loop around
//    - if forward    pixel : go up, rotate right
//    - if forward no pixel : rotate left
//  - stop if found first 2 pixel in same order
// mit an rechter-Wand-entlang-gehen strategie
// --------------------------------------------------------------
// turmite game: inp: start-x,y, regel r_black=UP,r_white=RIght until border
//               out: last-position
// Zaehle dabei, Schritte,Sackgassen,xmax,ymax,ro-,ru-,lo-,lu-Ecken
// +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//
// is this the right place for declaration?
void turmite(pix *p, int *x, int *y,
             int x0, int x1, int y0, int y1, int cs, int rw, int rb);

// test if points are connected via t-pixel (rekursiv!)
int joined(pix *p, int x0, int y0, int x1, int y1, int cs);

// move from x,y to direction r until pixel or l steps
// return number of steps
int loop(pix *p, int x, int y, int l, int cs, int col, DIRECTION r);

#define MAX_HOLES 3
typedef struct list_holes {
    int num;    /* numbers of holes, initialize with 0 */
    struct hole_s {
        int size,x,y,x0,y0,x1,y1; /*  size, start point, outer rectangle */
    } hole[MAX_HOLES];
} holes_t;


static void mark_end(job_t *job) {
    assert(job);

#ifdef HAVE_GETTIMEOFDAY
    /* show elapsed time */
  if (job->cfg.verbose) {
    struct timeval end, result;
    gettimeofday(&end, NULL);
    timeval_subtract(&result, &end, &job->tmp.init_time);
    fprintf(stderr,"Elapsed time: %d:%02d:%3.3f.\n", (int)result.tv_sec/60,
	(int)result.tv_sec%60, (float)result.tv_usec/1000);
  }
#endif
}

const char *getTextLine (int line) {
  int i;
  Element *elem;
  
  if (line < 0 || line > list_total(&(JOB->res.linelist)))
    return NULL;

  for ( i = 0, elem = JOB->res.linelist.header; i < line && elem != NULL; i++ )
    elem = elem->next;

  if ( elem != NULL )
    return (const char *)elem->data;

  return NULL;
}

void free_textlines(void) {
  for_each_data(&(JOB->res.linelist)) {
    if (list_get_current(&(JOB->res.linelist)))
      free(list_get_current(&(JOB->res.linelist)));
  } end_for_each(&(JOB->res.linelist));
  list_free(&(JOB->res.linelist));
}

// subject of change, we need more output for XML (ToDo)
void print_output(job_t *job) {
    int linecounter = 0;
    const char *line;

    assert(job);

    linecounter = 0;
    line = getTextLine(linecounter++);
    while (line) {
        // notice: decode() is shiftet to getTextLine since 0.38
        fputs(line, stdout);
        if (job->cfg.out_format==HTML) fputs("<br />",stdout);
        if (job->cfg.out_format!=XML)  fputc('\n', stdout);
        line = getTextLine(linecounter++);
    }
    free_textlines();
}

//FIXME jb: remove JOB;
job_t *JOB;


int main(){
    job_t job;

    JOB = &job;

    job_init(&job);

    readpgm("-", &(JOB->src.p), JOB->cfg.verbose);
}