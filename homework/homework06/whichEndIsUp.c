#include <stdio.h>

int main () {

  int x = 1;
//  char *c = &x;      // you can't do this without a cast; compile error!
  char * c = (char *)&x;

  if (*c != x) {
    printf ("Your computer is big-endian. \n");
  }
  else {
     printf ("Your computer is little-endian. \n");
  }
  return 0;
}
