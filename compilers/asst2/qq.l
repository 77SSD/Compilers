%{
int count_0 = 0;
int count_1 = 0;
%}

%%
0   { count_0++; }
1   { count_1++; }

\n  { 
        if ((count_0 % 2 == 1 && count_1 % 2 == 0) || (count_0 % 2 == 0 && count_1 % 2 == 1))
            printf("Accepted\n");
        else
            printf("Rejected\n");

        count_0 = 0;
        count_1 = 0;
    }

.   { printf("Invalid input\n"); }

%%

int main() {
    yylex();
    return 0;
}
