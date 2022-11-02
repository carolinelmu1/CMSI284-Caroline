#include <stdio.h>
#include <time.h>


void start(){
    printf("Press enter to start timer \n");
    while (1){
        char button = getchar();
        if ((int) button == 10){
            break;
        }
    }
}

void stop(){
    printf("Press enter to stop timer \n");
    while(1)
    {
        char button = getchar();
        if ((int) button == 10){
            break;
        }
    }
    printf("The timer has ended \n");
}
 
int main(){
    printf("This program will time how long you can hold your breath. \n");
    printf("Take a deep breath, then press the 'Enter' key.\n");
    printf("When you absolutely have to exhale, press the enter key again.\n"); 
    printf("The duration will be displayed in minutes and seconds.\n");
    clock_t time;
    start();
    time = clock();
    stop();
    time = clock() - time;
    double time_elapsed = ((double)time)/CLOCKS_PER_SEC; // in seconds
    int seconds = (int)time_elapsed%60;
    int minutes = (int)time_elapsed/60;
    printf("You held your breathe for %d minutes and %d seconds \n", minutes, seconds);
    return 0;
}