/*
 * callFindGCP.c
 *
 * call the assembly language GCP function.
 */

#include <stdio.h>
#include <inttypes.h>
#include <assert.h>

int64_t findGCD(int64_t, int64_t);

int main (int argc, char *argv[]) {
    assert(findGCD(3113041662,11570925) == 462837);
    printf("Test Passed -- assertion confirmed.\n");
    return 0;
}
