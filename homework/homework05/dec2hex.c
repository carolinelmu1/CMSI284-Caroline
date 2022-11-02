#include <stdio.h>
#include <stdlib.h>

int main(int argc, char * argv[]) {
   int dec = atoi(argv[1]);
   int bit = atoi(argv[2]);

   if(bit == 32) {
       printf("%08x", dec);
   }else {
       printf("%016x", dec);
   }
   return 0;
}


