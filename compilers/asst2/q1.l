/* Lex program to calculate counts of words, special characters, lines, spaces, and tabs */

%{
#include <stdio.h>

int wordCount = 0;
int specialCharCount = 0;
int lineCount = 0;
int spaceCount = 0;
int tabCount = 0;

%}

%%

\n { lineCount++; }
[ \t]+ { spaceCount++; }
\n[ \t]+ { lineCount++; spaceCount++; }
[^A-Za-z0-9 \t\n] { specialCharCount++; }
[A-Za-z]+ { wordCount++; }
. { specialCharCount++; } // Catch any unmatched characters

%%

int main() {
    printf("Enter the Sentence: ");
    yylex();
    printf("Number of words: %d\n", wordCount);
    printf("Number of special characters: %d\n", specialCharCount);
    printf("Number of lines: %d\n", lineCount);
    printf("Number of spaces: %d\n", spaceCount);
    printf("Number of tabs: %d\n", tabCount);

    return 0;
}


