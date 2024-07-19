%%
.*baba.*   { printf("Accepted: Contains 'baba' substring\n"); return 0; }
.|\n       { }
%%

int main() {
    printf("Enter String: ");
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}
