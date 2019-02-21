#ifndef SCANNERS_H_INCLUDED
#define SCANNERS_H_INCLUDED

#include <cstdio>
#include <string>

union YYSTYPE
{
    std::string* str;
};

struct param_info
{
    bool change_newline = true;
    int intval = 0;
};

enum TokenType
{
    KEYW_1 = 256,
    KEYW_2,
    OPERATOR,
    STRING,
    CHAR,
    NUMBER,
    PREPROCESSOR,
    COMMENT1,
    COMMENT2,
    SPACE,
    NEWLINE,
    OTHER
};

int asm_yylex(YYSTYPE* type, void* scanner);
void asm_yyset_in(FILE* input, void* scanner);
int asm_yylex_init(void** scanner);
int asm_yylex_destroy(void* scanner);
void asm_yyset_extra(param_info* param, void* scanner);

int cpp_yylex(YYSTYPE* type, void* scanner);
void cpp_yyset_in(FILE* input, void* scanner);
int cpp_yylex_init(void** scanner);
int cpp_yylex_destroy(void* scanner);
void cpp_yyset_extra(param_info* param, void* scanner);

int java_yylex(YYSTYPE* type, void* scanner);
void java_yyset_in(FILE* input, void* scanner);
int java_yylex_init(void** scanner);
int java_yylex_destroy(void* scanner);
void java_yyset_extra(param_info* param, void* scanner);

void StoreString(YYSTYPE* output, const char* input);

#endif // SCANNERS_H_INCLUDED
