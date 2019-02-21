%{
#include "scanners.h"

extern "C" int java_yywrap(void* scanner);

%}

%option nounput
%option prefix="java_yy"
%option never-interactive
%option bison-bridge
%option reentrant
%option extra-type="struct param_info*"

LETTER      [A-Za-z_]
DIGIT       [0-9]
HEXDIGIT    [0-9A-Fa-f]
BINDIGIT    [01]
IDENTIFIER  {LETTER}({LETTER}|{DIGIT})*
NEWLINE     \r?\n|\r
SPACE       [ \f\t\v]
LONG_SUFFIX [lL]
FLOAT_SUFFIX [fFdD]
HEXADECIMAL {HEXDIGIT}|_
BINARY      {BINDIGIT}|_

%x STR CHR CMNT1 CMNT2

%%

<INITIAL>
{
    "abstract"                                      {StoreString(yylval,yytext); return KEYW_1;}
    "assert"                                        {StoreString(yylval,yytext); return KEYW_1;}
    "boolean"                                       {StoreString(yylval,yytext); return KEYW_1;}
    "break"                                         {StoreString(yylval,yytext); return KEYW_1;}
    "byte"                                          {StoreString(yylval,yytext); return KEYW_1;}
    "case"                                          {StoreString(yylval,yytext); return KEYW_1;}
    "catch"                                         {StoreString(yylval,yytext); return KEYW_1;}
    "char"                                          {StoreString(yylval,yytext); return KEYW_1;}
    "class"                                         {StoreString(yylval,yytext); return KEYW_1;}
    "const"                                         {StoreString(yylval,yytext); return KEYW_1;}
    "do"                                            {StoreString(yylval,yytext); return KEYW_1;}
    "double"                                        {StoreString(yylval,yytext); return KEYW_1;}
    "else"                                          {StoreString(yylval,yytext); return KEYW_1;}
    "enum"                                          {StoreString(yylval,yytext); return KEYW_1;}
    "extends"                                       {StoreString(yylval,yytext); return KEYW_1;}
    "false"                                         {StoreString(yylval,yytext); return KEYW_1;}
    "final"                                         {StoreString(yylval,yytext); return KEYW_1;}
    "finally"                                       {StoreString(yylval,yytext); return KEYW_1;}
    "float"                                         {StoreString(yylval,yytext); return KEYW_1;}
    "for"                                           {StoreString(yylval,yytext); return KEYW_1;}
    "goto"                                          {StoreString(yylval,yytext); return KEYW_1;}
    "if"                                            {StoreString(yylval,yytext); return KEYW_1;}
    "implements"                                    {StoreString(yylval,yytext); return KEYW_1;}
    "import"                                        {StoreString(yylval,yytext); return KEYW_1;}
    "instanceof"                                    {StoreString(yylval,yytext); return KEYW_1;}
    "int"                                           {StoreString(yylval,yytext); return KEYW_1;}
    "interface"                                     {StoreString(yylval,yytext); return KEYW_1;}
    "long"                                          {StoreString(yylval,yytext); return KEYW_1;}
    "native"                                        {StoreString(yylval,yytext); return KEYW_1;}
    "new"                                           {StoreString(yylval,yytext); return KEYW_1;}
    "package"                                       {StoreString(yylval,yytext); return KEYW_1;}
    "private"                                       {StoreString(yylval,yytext); return KEYW_1;}
    "protected"                                     {StoreString(yylval,yytext); return KEYW_1;}
    "public"                                        {StoreString(yylval,yytext); return KEYW_1;}
    "return"                                        {StoreString(yylval,yytext); return KEYW_1;}
    "short"                                         {StoreString(yylval,yytext); return KEYW_1;}
    "static"                                        {StoreString(yylval,yytext); return KEYW_1;}
    "strictfp"                                      {StoreString(yylval,yytext); return KEYW_1;}
    "super"                                         {StoreString(yylval,yytext); return KEYW_1;}
    "switch"                                        {StoreString(yylval,yytext); return KEYW_1;}
    "synchronized"                                  {StoreString(yylval,yytext); return KEYW_1;}
    "this"                                          {StoreString(yylval,yytext); return KEYW_1;}
    "throw"                                         {StoreString(yylval,yytext); return KEYW_1;}
    "throws"                                        {StoreString(yylval,yytext); return KEYW_1;}
    "transient"                                     {StoreString(yylval,yytext); return KEYW_1;}
    "true"                                          {StoreString(yylval,yytext); return KEYW_1;}
    "try"                                           {StoreString(yylval,yytext); return KEYW_1;}
    "void"                                          {StoreString(yylval,yytext); return KEYW_1;}
    "volatile"                                      {StoreString(yylval,yytext); return KEYW_1;}
    "while"                                         {StoreString(yylval,yytext); return KEYW_1;}

    "+"                                             {StoreString(yylval,yytext); return OPERATOR;}
    "-"                                             {StoreString(yylval,yytext); return OPERATOR;}
    "*"                                             {StoreString(yylval,yytext); return OPERATOR;}
    "/"                                             {StoreString(yylval,yytext); return OPERATOR;}
    "%"                                             {StoreString(yylval,yytext); return OPERATOR;}
    "++"                                            {StoreString(yylval,yytext); return OPERATOR;}
    "--"                                            {StoreString(yylval,yytext); return OPERATOR;}
    "=="                                            {StoreString(yylval,yytext); return OPERATOR;}
    "!="                                            {StoreString(yylval,yytext); return OPERATOR;}
    "<"                                             {StoreString(yylval,"&lt;"); return OPERATOR;}
    ">"                                             {StoreString(yylval,"&gt;"); return OPERATOR;}
    "<="                                            {StoreString(yylval,"&lt;="); return OPERATOR;}
    ">="                                            {StoreString(yylval,"&gt;="); return OPERATOR;}
    "!"                                             {StoreString(yylval,yytext); return OPERATOR;}
    "~"                                             {StoreString(yylval,yytext); return OPERATOR;}
    "&"                                             {StoreString(yylval,"&amp;"); return OPERATOR;}
    "|"                                             {StoreString(yylval,yytext); return OPERATOR;}
    "^"                                             {StoreString(yylval,yytext); return OPERATOR;}
    "&&"                                            {StoreString(yylval,"&amp;&amp;"); return OPERATOR;}
    "||"                                            {StoreString(yylval,yytext); return OPERATOR;}
    "<<"                                            {StoreString(yylval,"&lt;&lt;"); return OPERATOR;}
    ">>"                                            {StoreString(yylval,"&gt;&gt;"); return OPERATOR;}
    ">>>"                                           {StoreString(yylval,"&gt;&gt;&gt;"); return OPERATOR;}
    "?"                                             {StoreString(yylval,yytext); return OPERATOR;}
    ":"                                             {StoreString(yylval,yytext); return OPERATOR;}
    "="                                             {StoreString(yylval,yytext); return OPERATOR;}
    "+="                                            {StoreString(yylval,yytext); return OPERATOR;}
    "-="                                            {StoreString(yylval,yytext); return OPERATOR;}
    "*="                                            {StoreString(yylval,yytext); return OPERATOR;}
    "/="                                            {StoreString(yylval,yytext); return OPERATOR;}
    "%="                                            {StoreString(yylval,yytext); return OPERATOR;}
    "&="                                            {StoreString(yylval,"&amp;="); return OPERATOR;}
    "|="                                            {StoreString(yylval,yytext); return OPERATOR;}
    "^="                                            {StoreString(yylval,yytext); return OPERATOR;}
    "<<="                                           {StoreString(yylval,"&lt;&lt;="); return OPERATOR;}
    ">>="                                           {StoreString(yylval,"&gt;&gt;="); return OPERATOR;}
    ">>>="                                          {StoreString(yylval,"&gt;&gt;&gt;="); return OPERATOR;}
    "."                                             {StoreString(yylval,yytext); return OPERATOR;}
    ","                                             {StoreString(yylval,yytext); return OPERATOR;}
    ";"                                             {StoreString(yylval,yytext); return OPERATOR;}
    "{"                                             {StoreString(yylval,yytext); return OPERATOR;}
    "}"                                             {StoreString(yylval,yytext); return OPERATOR;}
    "["                                             {StoreString(yylval,yytext); return OPERATOR;}
    "]"                                             {StoreString(yylval,yytext); return OPERATOR;}
    "("                                             {StoreString(yylval,yytext); return OPERATOR;}
    ")"                                             {StoreString(yylval,yytext); return OPERATOR;}

    "\""                                            {BEGIN(STR); yylval->str = new std::string("\"");}
    "\'"                                            {BEGIN(CHR); yylval->str = new std::string("\'");}

    "/*"                                            {BEGIN(CMNT1); yylval->str = new std::string("/*");}
    "//"                                            {BEGIN(CMNT2); yylval->str = new std::string("//");}

    {DIGIT}({DIGIT}|_)*({LONG_SUFFIX}|{FLOAT_SUFFIX})?              {StoreString(yylval,yytext); return NUMBER;}
    "0x"{HEXADECIMAL}+({LONG_SUFFIX})?                              {StoreString(yylval,yytext); return NUMBER;}
    "0b"{BINARY}+({LONG_SUFFIX})?                                   {StoreString(yylval,yytext); return NUMBER;}
    {DIGIT}+"."{DIGIT}*{FLOAT_SUFFIX}?                              {StoreString(yylval,yytext); return NUMBER;}
    {DIGIT}+"e"[+-]?{DIGIT}+{FLOAT_SUFFIX}?                         {StoreString(yylval,yytext); return NUMBER;}
    {DIGIT}+"."{DIGIT}*"e"[+-]?{DIGIT}+{FLOAT_SUFFIX}?              {StoreString(yylval,yytext); return NUMBER;}

    " "                                             {StoreString(yylval,yytext); return SPACE;}
    {IDENTIFIER}                                    {StoreString(yylval,yytext); return OTHER;}
    {NEWLINE}                                       {StoreString(yylval,yytext); return NEWLINE;}
    .                                               {StoreString(yylval,yytext); return OTHER;}
}

<STR>
{
    "\""                                            {*(yylval->str) += yytext; BEGIN(INITIAL); return STRING;}
    "<"                                             {*(yylval->str) += "&lt;";}
    ">"                                             {*(yylval->str) += "&gt;";}
    "&"                                             {*(yylval->str) += "&amp;";}
    " "                                             {*(yylval->str) += "&nbsp;";}
    {NEWLINE}                                       {*(yylval->str) += yytext; BEGIN(INITIAL); return OTHER;}
    .                                               {*(yylval->str) += yytext;}
}

<CHR>
{
    "\'"                                            {*(yylval->str) += yytext; BEGIN(INITIAL); return CHAR;}
    "<"                                             {*(yylval->str) += "&lt;";}
    ">"                                             {*(yylval->str) += "&gt;";}
    "&"                                             {*(yylval->str) += "&amp;";}
    " "                                             {*(yylval->str) += "&nbsp;";}
    {NEWLINE}                                       {*(yylval->str) += yytext; BEGIN(INITIAL); return OTHER;}
    .                                               {*(yylval->str) += yytext;}
}

<CMNT1>
{
    "*/"                                            {*(yylval->str) += yytext; BEGIN(INITIAL); return COMMENT1;}
    " "                                             {*(yylval->str) += "&nbsp;";}
    {NEWLINE}                                       {if(yyextra->change_newline){*(yylval->str) += "<br>";} *(yylval->str) += yytext;}
    .                                               {*(yylval->str) += yytext;}
}

<CMNT2>
{
    " "                                             {*(yylval->str) += "&nbsp;";}
    {NEWLINE}                                       {yyless(0); BEGIN(INITIAL); return COMMENT2;}
    .                                               {*(yylval->str) += yytext;}
}

%%

extern "C" int java_yywrap(void* scanner) {return 1;}
