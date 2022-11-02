#include <stdio.h>
#include <string.h>
#include <ctype.h>
#include <stdlib.h>


int main(){
    int characters, wordcount = 0;
    char target;
    char filename[250];
    printf("Enter a file name: ");
    fflush(stdout);
    scanf("%s", filename);
    fflush(stdout);

    FILE* userfile = fopen(filename, "r");
        if (!userfile){
            printf("File %s does not exist\n", userfile);
            return 2;
        }

    while((target = fgetc(userfile)) != EOF){
        characters++;
        if (isspace(target)){
            wordcount++;
        }
    }

    if (characters > 0){
        wordcount++;
    }


    printf("Total number of words in %s is %d\n", filename, wordcount);
    fclose(userfile);
    return 0;
}