%%
^b[ab]*a$ { printf("Accepted\n"); return 0; }
.|\n      { printf("Rejected\n"); return 0; }
%%

int main() {
    printf("Enter String: ");
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}
