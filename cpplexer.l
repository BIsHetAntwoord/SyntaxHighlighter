%{
#include "scanners.h"

extern "C" int cpp_yywrap(void* scanner);

%}

%option nounput
%option prefix="cpp_yy"
%option never-interactive
%option bison-bridge
%option reentrant
%option extra-type="struct param_info*"

LETTER      [A-Za-z_]
DIGIT       [0-9]
HEXDIGIT    [0-9a-fA-F]
IDENTIFIER  {LETTER}({LETTER}|{DIGIT})*
NEWLINE     \r?\n|\r
SPACE       [ \f\t\v]
INTEGER_SUFFIX ("u"|"U")?("l"|"L"|"ll"|"LL")?|("l"|"L"|"ll"|"LL")?("u"|"U")?
FLOAT_SUFFIX   ("d"|"f")?

%x MACRO STR CHR CMNT1 CMNT2

%%

<INITIAL>
{
    "align_union"                                   {StoreString(yylval,yytext); return KEYW_1;}
    "alignof"                                       {StoreString(yylval,yytext); return KEYW_1;}
    "asm"                                           {StoreString(yylval,yytext); return KEYW_1;}
    "auto"                                          {StoreString(yylval,yytext); return KEYW_1;}
    "bool"                                          {StoreString(yylval,yytext); return KEYW_1;}
    "break"                                         {StoreString(yylval,yytext); return KEYW_1;}
    "case"                                          {StoreString(yylval,yytext); return KEYW_1;}
    "catch"                                         {StoreString(yylval,yytext); return KEYW_1;}
    "char"                                          {StoreString(yylval,yytext); return KEYW_1;}
    "class"                                         {StoreString(yylval,yytext); return KEYW_1;}
    "const"                                         {StoreString(yylval,yytext); return KEYW_1;}
    "const_cast"                                    {StoreString(yylval,yytext); return KEYW_1;}
    "constexpr"                                     {StoreString(yylval,yytext); return KEYW_1;}
    "continue"                                      {StoreString(yylval,yytext); return KEYW_1;}
    "decltype"                                      {StoreString(yylval,yytext); return KEYW_1;}
    "default"                                       {StoreString(yylval,yytext); return KEYW_1;}
    "delete"                                        {StoreString(yylval,yytext); return KEYW_1;}
    "do"                                            {StoreString(yylval,yytext); return KEYW_1;}
    "double"                                        {StoreString(yylval,yytext); return KEYW_1;}
    "dynamic_cast"                                  {StoreString(yylval,yytext); return KEYW_1;}
    "else"                                          {StoreString(yylval,yytext); return KEYW_1;}
    "enum"                                          {StoreString(yylval,yytext); return KEYW_1;}
    "explicit"                                      {StoreString(yylval,yytext); return KEYW_1;}
    "export"                                        {StoreString(yylval,yytext); return KEYW_1;}
    "extern"                                        {StoreString(yylval,yytext); return KEYW_1;}
    "false"                                         {StoreString(yylval,yytext); return KEYW_1;}
    "final"                                         {StoreString(yylval,yytext); return KEYW_1;}
    "float"                                         {StoreString(yylval,yytext); return KEYW_1;}
    "for"                                           {StoreString(yylval,yytext); return KEYW_1;}
    "friend"                                        {StoreString(yylval,yytext); return KEYW_1;}
    "goto"                                          {StoreString(yylval,yytext); return KEYW_1;}
    "if"                                            {StoreString(yylval,yytext); return KEYW_1;}
    "import"                                        {StoreString(yylval,yytext); return KEYW_1;}
    "inline"                                        {StoreString(yylval,yytext); return KEYW_1;}
    "int"                                           {StoreString(yylval,yytext); return KEYW_1;}
    "long"                                          {StoreString(yylval,yytext); return KEYW_1;}
    "mutable"                                       {StoreString(yylval,yytext); return KEYW_1;}
    "namespace"                                     {StoreString(yylval,yytext); return KEYW_1;}
    "new"                                           {StoreString(yylval,yytext); return KEYW_1;}
    "nullptr"                                       {StoreString(yylval,yytext); return KEYW_1;}
    "operator"                                      {StoreString(yylval,yytext); return KEYW_1;}
    "override"                                      {StoreString(yylval,yytext); return KEYW_1;}
    "private"                                       {StoreString(yylval,yytext); return KEYW_1;}
    "protected"                                     {StoreString(yylval,yytext); return KEYW_1;}
    "public"                                        {StoreString(yylval,yytext); return KEYW_1;}
    "register"                                      {StoreString(yylval,yytext); return KEYW_1;}
    "reinterpret_cast"                              {StoreString(yylval,yytext); return KEYW_1;}
    "return"                                        {StoreString(yylval,yytext); return KEYW_1;}
    "short"                                         {StoreString(yylval,yytext); return KEYW_1;}
    "signed"                                        {StoreString(yylval,yytext); return KEYW_1;}
    "sizeof"                                        {StoreString(yylval,yytext); return KEYW_1;}
    "static"                                        {StoreString(yylval,yytext); return KEYW_1;}
    "static_cast"                                   {StoreString(yylval,yytext); return KEYW_1;}
    "struct"                                        {StoreString(yylval,yytext); return KEYW_1;}
    "switch"                                        {StoreString(yylval,yytext); return KEYW_1;}
    "template"                                      {StoreString(yylval,yytext); return KEYW_1;}
    "this"                                          {StoreString(yylval,yytext); return KEYW_1;}
    "throw"                                         {StoreString(yylval,yytext); return KEYW_1;}
    "true"                                          {StoreString(yylval,yytext); return KEYW_1;}
    "try"                                           {StoreString(yylval,yytext); return KEYW_1;}
    "typedef"                                       {StoreString(yylval,yytext); return KEYW_1;}
    "typeid"                                        {StoreString(yylval,yytext); return KEYW_1;}
    "typename"                                      {StoreString(yylval,yytext); return KEYW_1;}
    "union"                                         {StoreString(yylval,yytext); return KEYW_1;}
    "unsigned"                                      {StoreString(yylval,yytext); return KEYW_1;}
    "using"                                         {StoreString(yylval,yytext); return KEYW_1;}
    "virtual"                                       {StoreString(yylval,yytext); return KEYW_1;}
    "void"                                          {StoreString(yylval,yytext); return KEYW_1;}
    "volatile"                                      {StoreString(yylval,yytext); return KEYW_1;}
    "while"                                         {StoreString(yylval,yytext); return KEYW_1;}
    "static_assert"                                 {StoreString(yylval,yytext); return KEYW_1;}
    "int8_t"                                        {StoreString(yylval,yytext); return KEYW_1;}
    "uint8_t"                                       {StoreString(yylval,yytext); return KEYW_1;}
    "int16_t"                                       {StoreString(yylval,yytext); return KEYW_1;}
    "uint16_t"                                      {StoreString(yylval,yytext); return KEYW_1;}
    "int32_t"                                       {StoreString(yylval,yytext); return KEYW_1;}
    "uint32_t"                                      {StoreString(yylval,yytext); return KEYW_1;}
    "int64_t"                                       {StoreString(yylval,yytext); return KEYW_1;}
    "uint64_t"                                      {StoreString(yylval,yytext); return KEYW_1;}
    "int_least8_t"                                  {StoreString(yylval,yytext); return KEYW_1;}
    "uint_least8_t"                                 {StoreString(yylval,yytext); return KEYW_1;}
    "int_least16_t"                                 {StoreString(yylval,yytext); return KEYW_1;}
    "uint_least16_t"                                {StoreString(yylval,yytext); return KEYW_1;}
    "int_least32_t"                                 {StoreString(yylval,yytext); return KEYW_1;}
    "uint_least32_t"                                {StoreString(yylval,yytext); return KEYW_1;}
    "int_least64_t"                                 {StoreString(yylval,yytext); return KEYW_1;}
    "uint_least64_t"                                {StoreString(yylval,yytext); return KEYW_1;}
    "int_fast8_t"                                   {StoreString(yylval,yytext); return KEYW_1;}
    "uint_fast8_t"                                  {StoreString(yylval,yytext); return KEYW_1;}
    "int_fast16_t"                                  {StoreString(yylval,yytext); return KEYW_1;}
    "uint_fast16_t"                                 {StoreString(yylval,yytext); return KEYW_1;}
    "int_fast32_t"                                  {StoreString(yylval,yytext); return KEYW_1;}
    "uint_fast32_t"                                 {StoreString(yylval,yytext); return KEYW_1;}
    "int_fast64_t"                                  {StoreString(yylval,yytext); return KEYW_1;}
    "uint_fast64_t"                                 {StoreString(yylval,yytext); return KEYW_1;}
    "intptr_t"                                      {StoreString(yylval,yytext); return KEYW_1;}
    "uintptr_t"                                     {StoreString(yylval,yytext); return KEYW_1;}
    "intmax_t"                                      {StoreString(yylval,yytext); return KEYW_1;}
    "uintmax_t"                                     {StoreString(yylval,yytext); return KEYW_1;}
    "wint_t"                                        {StoreString(yylval,yytext); return KEYW_1;}
    "wchar_t"                                       {StoreString(yylval,yytext); return KEYW_1;}
    "wctrans_t"                                     {StoreString(yylval,yytext); return KEYW_1;}
    "wctype_t"                                      {StoreString(yylval,yytext); return KEYW_1;}
    "size_t"                                        {StoreString(yylval,yytext); return KEYW_1;}
    "time_t"                                        {StoreString(yylval,yytext); return KEYW_1;}
    "and"                                           {StoreString(yylval,yytext); return KEYW_1;}
    "and_eq"                                        {StoreString(yylval,yytext); return KEYW_1;}
    "bitand"                                        {StoreString(yylval,yytext); return KEYW_1;}
    "bitor"                                         {StoreString(yylval,yytext); return KEYW_1;}
    "compl"                                         {StoreString(yylval,yytext); return KEYW_1;}
    "not"                                           {StoreString(yylval,yytext); return KEYW_1;}
    "not_eq"                                        {StoreString(yylval,yytext); return KEYW_1;}
    "or"                                            {StoreString(yylval,yytext); return KEYW_1;}
    "or_eq"                                         {StoreString(yylval,yytext); return KEYW_1;}
    "xor"                                           {StoreString(yylval,yytext); return KEYW_1;}
    "xor_eq"                                        {StoreString(yylval,yytext); return KEYW_1;}

    "="                                             {StoreString(yylval,yytext); return OPERATOR;}
    "+"                                             {StoreString(yylval,yytext); return OPERATOR;}
    "-"                                             {StoreString(yylval,yytext); return OPERATOR;}
    "*"                                             {StoreString(yylval,yytext); return OPERATOR;}
    "/"                                             {StoreString(yylval,yytext); return OPERATOR;}
    "%"                                             {StoreString(yylval,yytext); return OPERATOR;}
    "++"                                            {StoreString(yylval,yytext); return OPERATOR;}
    "--"                                            {StoreString(yylval,yytext); return OPERATOR;}
    "=="                                            {StoreString(yylval,yytext); return OPERATOR;}
    "!="                                            {StoreString(yylval,yytext); return OPERATOR;}
    ">"                                             {StoreString(yylval,"&gt;"); return OPERATOR;}
    "<"                                             {StoreString(yylval,"&lt;"); return OPERATOR;}
    ">="                                            {StoreString(yylval,"&gt;="); return OPERATOR;}
    "<="                                            {StoreString(yylval,"&lt;="); return OPERATOR;}
    "!"                                             {StoreString(yylval,yytext); return OPERATOR;}
    "&&"                                            {StoreString(yylval,"&amp;&amp;"); return OPERATOR;}
    "||"                                            {StoreString(yylval,yytext); return OPERATOR;}
    "~"                                             {StoreString(yylval,yytext); return OPERATOR;}
    "&"                                             {StoreString(yylval,"&amp;"); return OPERATOR;}
    "|"                                             {StoreString(yylval,yytext); return OPERATOR;}
    "^"                                             {StoreString(yylval,yytext); return OPERATOR;}
    "<<"                                            {StoreString(yylval,"&lt;&lt;"); return OPERATOR;}
    ">>"                                            {StoreString(yylval,"&gt;&gt;"); return OPERATOR;}
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
    "->"                                            {StoreString(yylval,"-&gt;"); return OPERATOR;}
    "."                                             {StoreString(yylval,yytext); return OPERATOR;}
    "->*"                                           {StoreString(yylval,"-&gt;*"); return OPERATOR;}
    ".*"                                            {StoreString(yylval,yytext); return OPERATOR;}
    ","                                             {StoreString(yylval,yytext); return OPERATOR;}
    "?"                                             {StoreString(yylval,yytext); return OPERATOR;}
    ":"                                             {StoreString(yylval,yytext); return OPERATOR;}
    "::"                                            {StoreString(yylval,yytext); return OPERATOR;}
    ";"                                             {StoreString(yylval,yytext); return OPERATOR;}
    "{"                                             {StoreString(yylval,yytext); return OPERATOR;}
    "}"                                             {StoreString(yylval,yytext); return OPERATOR;}
    "["                                             {StoreString(yylval,yytext); return OPERATOR;}
    "]"                                             {StoreString(yylval,yytext); return OPERATOR;}
    "("                                             {StoreString(yylval,yytext); return OPERATOR;}
    ")"                                             {StoreString(yylval,yytext); return OPERATOR;}

    "##"                                            {StoreString(yylval,yytext); return PREPROCESSOR;}
    "#"                                             {BEGIN(MACRO); yylval->str=new std::string("#");}

    "\""                                            {BEGIN(STR); yylval->str=new std::string("\"");}
    "\'"                                            {BEGIN(CHR); yylval->str=new std::string("\'");}

    "/*"                                            {BEGIN(CMNT1); yylval->str=new std::string("/*");}
    "//"                                            {BEGIN(CMNT2); yylval->str=new std::string("//");}

    {DIGIT}+({INTEGER_SUFFIX}|{FLOAT_SUFFIX})       {StoreString(yylval,yytext); return NUMBER;}
    "0x"{HEXDIGIT}+{INTEGER_SUFFIX}                 {StoreString(yylval,yytext); return NUMBER;}
    {DIGIT}+"."{DIGIT}*{FLOAT_SUFFIX}               {StoreString(yylval,yytext); return NUMBER;}
    {DIGIT}+"."{DIGIT}*"e"[+-]?{DIGIT}+{FLOAT_SUFFIX} {StoreString(yylval,yytext); return NUMBER;}

    " "                                             {StoreString(yylval,yytext); return SPACE;}
    {IDENTIFIER}                                    {StoreString(yylval,yytext); return OTHER;}
    {NEWLINE}                                       {StoreString(yylval,yytext); return NEWLINE;}
    .                                               {StoreString(yylval,yytext); return OTHER;}
}

<MACRO>
{
    "<"                                             {*(yylval->str) += "&lt;";}
    ">"                                             {*(yylval->str) += "&gt;";}
    "&"                                             {*(yylval->str) += "&amp;";}
    " "                                             {*(yylval->str) += "&nbsp;";}
    {NEWLINE}                                       {yyless(0); BEGIN(INITIAL); return PREPROCESSOR;}
    .                                               {*(yylval->str) += yytext;}
}

<STR>
{
    "\""                                            {*(yylval->str) += yytext; BEGIN(INITIAL); return STRING;}
    "\\"{NEWLINE}                                   {*(yylval->str) += "\\"; if(yyextra->change_newline){*(yylval->str) += "<br>";} *(yylval->str) += yytext;}
    "<"                                             {*(yylval->str) += "&lt;";}
    ">"                                             {*(yylval->str) += "&gt;";}
    "&"                                             {*(yylval->str) += "&amp;";}
    " "                                             {*(yylval->str) += "&nbsp;";}
    {NEWLINE}                                       {yyless(0); BEGIN(INITIAL); return OTHER;}
    .                                               {*(yylval->str) += yytext;}
}

<CHR>
{
    "\'"                                            {*(yylval->str) += yytext; BEGIN(INITIAL); return CHAR;}
    "<"                                             {*(yylval->str) += "&lt;";}
    ">"                                             {*(yylval->str) += "&gt;";}
    "&"                                             {*(yylval->str) += "&amp;";}
    " "                                             {*(yylval->str) += "&nbsp;";}
    {NEWLINE}                                       {yyless(0); BEGIN(INITIAL); return OTHER;}
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

extern "C" int cpp_yywrap(void* scanner) {return 1;}
