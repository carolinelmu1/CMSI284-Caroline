To Compile:
nasm -fmacho64 makeNBO.nasm
gcc -m64 -c makeNBO-C.c
gcc -Wl,-no_pie -m64  makeNBO-C.o makeNBO.o -o makeNBO

To Run:
./makeNBO    
