#include <stdio.h>

int main () {

  int x = 1;
  char *c = &x;

  if (*c != x) {
    printf ("Your computer is big-endian. \n");
  }
  else {
     printf ("Your computer is little-endian. \n");
  }
  return 0;
}