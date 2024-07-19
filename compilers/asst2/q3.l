/* Lex program for DFA to identify words containing an odd number of 'b' occurrences */

%{
int bCount = 0;
%}

%%

b { bCount++; }
a {}

%%

int main() {
    yylex();
    if (bCount % 2 == 1) {
        printf("Accepted\n");
    } else {
        printf("Rejected\n");
    }
    return 0;
}

