/*
 * callFindGCP.c
 *
 * call the assembly language GCP function.
 */

#include <stdio.h>
#include <inttypes.h>
#include <assert.h>

unsigned char  paritygen(unsigned char);

int main () {
    assert(paritygen(55) == 0);
    assert(paritygen(72) == 1);
    assert(paritygen(127) == 0);
    assert(paritygen(195) == 1);
    printf("Test Passed -- assertion confirmed.\n");
    return 0;
}