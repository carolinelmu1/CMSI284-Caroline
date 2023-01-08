#include <stdio.h>

// Clever test to check Big/Little Endian Architecture of a system.
// Good visual for how this works can be found at:
// https://stackoverflow.com/questions/12791864/c-program-to-check-little-vs-big-endian/12792301#12792301


int main()
{
     int n = 1;
     // little endian if true
     if (*(char *)&n == 1)
     {
          printf("Little Endian Architecture Detected.\n");
     }
     else
     {
          printf("Big Endian Architecture Detected.\n");
     }
}
