/* Converts a base-10 number to its 32-bit binary value equivalent.
You may take the base-10 number in from the command line, or prompt
the user for the number and red in their response. Output should be
a string of binary digits which correspond to the base-10 value. For
example, running the program with dec2bin 65535 (or just dec2bin if
asking the user) should produce the output string
00000000000000001111111111111111. Use unsigned integers.
*/

#include <stdio.h>
#include <stdlib.h>

int dec2bin(int num) {
   int counter = 0;
   int binary[32];

   while (num > 0 && num != 0) {
       binary[counter] = num % 2;
       num = num / 2;
       counter++;
   }

   if (num == 0) {
       printf("0");
   }

   for (int i = counter - 1; i >= 0; i--) {
       printf("%u", binary[i]);
   }

   return(0);
}

int main() {
   dec2bin(65535);
   return(0);
}

