#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX_GUESSES 10

int main() {
  int guesses = 0;
  int correctLetters = 0;
  char letter;
  bool found = false;

  char wordtoGuess[] = "CHEESE";
  int word_length = strlen(wordtoGuess);
  char guess[MAX_GUESSES + 1];
  guess[word_length] = '\0';

  while (MAX_GUESSES > guesses) {
    printf("Word: _ _ _ _ _ _ %s\n", guess);
    printf("Mouse position: %d\n", guesses);
    printf("Guess a letter: ");
    scanf("%c", &letter);

    for (int i = 0; i < word_length; i++) {
      if (wordtoGuess[i] == letter) {
        guess[i] = letter;
        found = true;
        correctLetters++;
      }
    }

    if (found != true) {
      guesses++;
    }

    if (correctLetters == word_length) {
      printf("Congrats, you win!!\n");
    } else if (guesses == MAX_GUESSES) {
      printf("You lose :(\n");
    }
  }
  return 0;
}