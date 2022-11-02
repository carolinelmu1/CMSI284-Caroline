#include <stdio.h>
#include <stdlib.h>

int main(){
    int testInteger, i;
    printf("Base Integer is 2 for your times table. \n");
    do{
        printf("Enter the range (positive number): ");
        scanf("%d", &testInteger);
    } while (testInteger <= 0);
    for(i = 1; i <= testInteger; i++){
        printf("%d * %d = %d \n", 2, i, 2*i);
    }
    return 0;
}