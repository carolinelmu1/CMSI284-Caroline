#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main() {
    int num = 0;
    int count = 0;
    int sum = 0;
    int numArray[100];

    printf("Enter numbers: \n");
    while (1) {
        scanf("%d", &num);
        if (num == 0) {
            break;
        }
        numArray[count] = num;
        count++;
    }
    for (int i; i < count; i++) {
        sum += numArray[i];
    }

    int average = sum / count;

    printf("Sum: %d\n", sum);
    printf("Average: %d\n", average);
    return 0;
}