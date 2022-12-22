#include <stdio.h>
#include <stdlib.h>
#include <inttypes.h>

uint64_t sayHiTimes(uint64_t num) {
  uint64_t counter = 0;
  while (num > counter) {
    counter++;
    printf("Hi!\n");
  }
  return counter;
}