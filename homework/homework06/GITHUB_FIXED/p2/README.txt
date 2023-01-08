To Compile:
nasm -fmacho64 findGCD.nasm
gcc -m64 callFindGCD.c findGCD.o -o callFindGCD

To Run:
./callFindGCD 
