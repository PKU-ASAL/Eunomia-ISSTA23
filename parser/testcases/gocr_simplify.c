#include <stdlib.h>
#include <stdio.h>
#include <assert.h>
#include <string.h>
#include <unistd.h>
#include <ctype.h>

#define EE()         fprintf(stderr,"\nERROR "__FILE__" L%d: ",__LINE__)
#define F0(x0)       {EE();fprintf(stderr,x0 "\n");      exit(1);}

int main(){
    char c1;     int nx,ny,nc,mod,i,j,k;	// buffer
    unsigned char *pic;
    scanf("%d%d%d", &nx, &ny, &nc);
    printf("before malloc: %d\n", nx*ny);
    pic=(unsigned char *)malloc( nx*ny );
    if(pic==NULL)F0("memory failed");			// no memory
    /* this is a slow but short routine for P1 to P6 formats */
    for(mod=k=j=i=0;i<nx*ny*3;){
        scanf("%c", &c1);
        if( !isdigit(c1) ) {  if( !isspace(c1) )F0("unexpected char");
            if(1&mod) { k+=j; if(mod==5){ printf("i: %d\n", i); pic[i]=k/3; i++; }
                j=0; mod=(mod+1)%6; }  }
        else { j=j*10+c1-'0'; if(!(mod&1)) mod++; };
    }
}
