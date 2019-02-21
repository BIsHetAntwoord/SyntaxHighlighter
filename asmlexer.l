%{
#include "scanners.h"

extern "C" int asm_yywrap(void* scanner);

%}

%option nounput
%option prefix="asm_yy"
%option never-interactive
%option bison-bridge
%option reentrant
%option extra-type="struct param_info*"
%option case-insensitive

LETTER      [a-zA-Z_]
DIGIT       [0-9]
HEXDIGIT    [0-9a-fA-F]
NEWLINE     \r?\n|\r
SPACE       [ \f\t\v]
IDENTIFIER  {LETTER}({LETTER}|{DIGIT})*

%x PARAMS CMNT STR STR2

%%

<INITIAL>
{
    "AAA"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "AAD"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "AAM"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "AAS"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "ADC"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "ADD"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "ADDPD"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "ADDPS"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "ADDSD"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "ADDSS"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "ADDSUBPD"                                      {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "ADDSUBPS"                                      {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "ADX"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "AMX"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "AND"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "ANDNPD"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "ANDNPS"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "ANDPD"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "ANDPS"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "ARPL"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "BLENDPD"                                       {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "BLENDPS"                                       {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "BLENDVPD"                                      {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "BLENDVPS"                                      {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "BOUND"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "BSF"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "BSR"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "BSWAP"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "BT"                                            {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "BTC"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "BTR"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "BTS"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "CALL"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "CALLF"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "CBW"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "CDQ"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "CLC"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "CLD"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "CLFLUSH"                                       {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "CLI"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "CLTS"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "CMC"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "CMOVB"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "CMOVNAE"                                       {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "CMOVC"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "CMOVBE"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "CMOVNA"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "CMOVL"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "CMOVNGE"                                       {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "CMOVLE"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "CMOVNG"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "CMOVNB"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "CMOVAE"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "CMOVNC"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "CMOVNBE"                                       {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "CMOVA"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "CMOVNL"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "CMOVGE"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "CMOVNLE"                                       {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "CMOVG"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "CMOVNO"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "CMOVNP"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "CMOVPO"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "CMOVNS"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "CMOVNZ"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "CMOVNE"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "CMOVO"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "CMOVP"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "CMOVPE"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "CMOVS"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "CMOVZ"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "CMOVE"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "CMP"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "CMPPD"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "CMPPS"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "CMPS"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "CMPSB"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "CMPSW"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "CMPSD"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "CMPSS"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "CMPXCHG"                                       {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "CMPXCHG8B"                                     {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "COMISD"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "COMISS"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "CPUID"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "CRC32"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "CVTDQ2PD"                                      {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "CVTDQ2PS"                                      {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "CVTPD2DQ"                                      {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "CVTPD2PI"                                      {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "CVTPD2PS"                                      {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "CVTPI2PD"                                      {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "CVTPI2PS"                                      {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "CVTPS2DQ"                                      {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "CVTPS2PD"                                      {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "CVTPS2PI"                                      {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "CVTSD2SI"                                      {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "CVTSD2SS"                                      {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "CVTSI2SD"                                      {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "CVTSI2SS"                                      {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "CVTSS2SD"                                      {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "CVTSS2SI"                                      {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "CVTTPD2DQ"                                     {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "CVTTPD2PI"                                     {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "CVTTPS2DQ"                                     {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "CVTTPS2PI"                                     {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "CVTTSD2SI"                                     {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "CVTTSS2SI"                                     {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "CWD"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "CWDE"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "DAA"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "DAS"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "DEC"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "DIV"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "DIVPD"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "DIVPS"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "DIVSD"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "DIVSS"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "DPPD"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "DPPS"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "EMMS"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "ENTER"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "EXTRACTPS"                                     {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "F2XM1"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FABS"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FADD"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FADDP"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FBLD"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FBSTP"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FCHS"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FCLEX"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FCMOVB"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FCMOVBE"                                       {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FCMOVE"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FCMOVNB"                                       {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FCMOVNBE"                                      {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FCMOVNE"                                       {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FCMOVNU"                                       {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FCMOVU"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FCOM"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FCOM2"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FCOMI"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FCOMIP"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FCOMP"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FCOMP3"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FCOMP5"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FCOMPP"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FCOS"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FDECSTP"                                       {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FDIV"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FDIVP"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FDIVR"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FDIVRP"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FFREE"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FFREEP"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FIADD"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FICOM"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FICOMP"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FIDIV"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FIDIVR"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FILD"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FIMUL"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FINCSTP"                                       {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FINIT"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FIST"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FISTP"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FISTTP"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FISUB"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FISUBR"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FLD"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FLD1"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FLDCW"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FLDENV"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FLDL2E"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FLDL2T"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FLDLG2"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FLDLN2"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FLDPI"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FLDZ"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FMUL"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FMULP"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FNCLEX"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FNDISI"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FNENI"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FNINIT"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FNOP"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FNSAVE"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FNSETPM"                                       {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FNSTCW"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FNSTENV"                                       {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FNSTSW"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FPATAN"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FPREM"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FPREM1"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FPTAN"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FRNDINT"                                       {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FRSTOR"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FSAVE"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FSCALE"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FSIN"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FSINCOS"                                       {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FSQRT"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FST"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FSTCW"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FSTENV"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FSTP"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FSTP1"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FSTP8"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FSTP9"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FSTSW"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FSUB"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FSUBP"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FSUBR"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FSUBRP"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FTST"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FUCOM"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FUCOMI"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FUCOMIP"                                       {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FUCOMP"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FUCOMPP"                                       {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FWAIT"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "WAIT"                                          {StoreString(yylval,yytext); return KEYW_1;}
    "FXAM"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FXCH"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FXCH4"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FXCH7"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FXRSTOR"                                       {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FXSAVE"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FXTRACT"                                       {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FYL2X"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "FYL2XP1"                                       {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "GETSEC"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "HADDPD"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "HADDPS"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "HINT_NOP"                                      {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "HLT"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "HSUBPD"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "HSUBPS"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "IDIV"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "IMUL"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "IN"                                            {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "INC"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "INS"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "INSB"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "INSW"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "INSD"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "INSERTPS"                                      {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "INT"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "INT1"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "ICEBP"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "INTO"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "INVD"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "INVEPT"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "INVLPG"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "INVVPID"                                       {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "IRET"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "IRETD"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "JB"                                            {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "JNAE"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "JC"                                            {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "JBE"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "JNA"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "JCXZ"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "JECXZ"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "JL"                                            {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "JNGE"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "JLE"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "JNG"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "JMP"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "JMPF"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "JNB"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "JAE"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "JNC"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "JNBE"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "JA"                                            {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "JNL"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "JGE"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "JNLE"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "JG"                                            {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "JNO"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "JNP"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "JPO"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "JNS"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "JNZ"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "JNE"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "JO"                                            {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "JP"                                            {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "JPE"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "JS"                                            {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "JZ"                                            {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "JE"                                            {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "LAHF"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "LAR"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "LDDQU"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "LDMXCSR"                                       {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "LDS"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "LEA"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "LEAVE"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "LES"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "LFENCE"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "LFS"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "LGDT"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "LGS"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "LIDT"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "LLDT"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "LMSW"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "LOCK"                                          {StoreString(yylval,yytext); return KEYW_1;}
    "LODS"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "LODSB"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "LODSW"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "LODSD"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "LOOP"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "LOOPNZ"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "LOOPNE"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "LOOPZ"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "LOOPE"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "LSL"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "LSS"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "LTR"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "MASKMOVDQU"                                    {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "MASKMOVQ"                                      {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "MAXPD"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "MAXPS"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "MAXSD"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "MAXSS"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "MFENCE"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "MINPD"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "MINPS"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "MINSD"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "MINSS"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "MONITOR"                                       {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "MOV"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "MOVAPD"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "MOVAPS"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "MOVBE"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "MOVD"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "MOVDDUP"                                       {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "MOVDQ2Q"                                       {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "MOVDQA"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "MOVDQU"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "MOVHLPS"                                       {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "MOVHPD"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "MOVHPS"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "MOVLHPS"                                       {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "MOVLPD"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "MOVLPS"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "MOVMSKPD"                                      {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "MOVMSKPS"                                      {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "MOVNTDQ"                                       {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "MOVNTDQA"                                      {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "MOVNTI"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "MOVNTPD"                                       {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "MOVNTPS"                                       {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "MOVNTQ"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "MOVQ"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "MOVQ2DQ"                                       {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "MOVS"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "MOVSB"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "MOVSW"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "MOVSD"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "MOVSHDUP"                                      {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "MOVSLDUP"                                      {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "MOVSS"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "MOVSX"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "MOVUPD"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "MOVUPS"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "MOVZX"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "MPSADBW"                                       {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "MUL"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "MULPD"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "MULPS"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "MULSD"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "MULSS"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "MWAIT"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "NEG"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "NOP"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "NOT"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "OR"                                            {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "ORPD"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "ORPS"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "OUT"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "OUTS"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "OUTSB"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "OUTSW"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "OUTSD"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PABSB"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PABSD"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PABSW"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PACKSSDW"                                      {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PACKSSWB"                                      {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PACKUSDW"                                      {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PACKUSWB"                                      {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PADDB"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PADDD"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PADDQ"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PADDSB"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PADDSW"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PADDUSB"                                       {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PADDUSW"                                       {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PADDW"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PALIGNR"                                       {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PAND"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PANDN"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PAUSE"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PAVGB"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PAVGW"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PBLENDVB"                                      {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PBLENDW"                                       {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PCMPEQB"                                       {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PCMPEQD"                                       {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PCMPEQW"                                       {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PCMPESTRI"                                     {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PCMPESTRM"                                     {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PCMPGTB"                                       {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PCMPGTD"                                       {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PCMPGTQ"                                       {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PCMPGTW"                                       {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PCMPISTRI"                                     {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PCMPISTRM"                                     {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PEXTRB"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PEXTRD"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PEXTRQ"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PEXTRW"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PHADDD"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PHADDSW"                                       {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PHADDW"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PHMINPOSUW"                                    {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PHSUBD"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PHSUBSW"                                       {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PHSUBW"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PINSRB"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PINSRD"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PINSRW"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PMADDUBSW"                                     {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PMADDWD"                                       {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PMAXSB"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PMAXSD"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PMAXSW"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PMAXUB"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PMAXUD"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PMAXUW"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PMINSB"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PMINSD"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PMINSW"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PMINUB"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PMINUD"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PMINUW"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PMOVMSKB"                                      {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PMOVSXBD"                                      {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PMOVSXBQ"                                      {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PMOVSXBW"                                      {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PMOVSXDQ"                                      {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PMOVSXWD"                                      {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PMOVSXWQ"                                      {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PMULDQ"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PMULHRSW"                                      {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PMULHUW"                                       {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PMULHW"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PMULLD"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PMULLW"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PMULUDQ"                                       {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "POP"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "POPA"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "POPAD"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "POPCNT"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "POPF"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "POPFD"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "POR"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PREFETCHNTA"                                   {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PREFETCHT0"                                    {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PREFETCHT1"                                    {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PREFETCHT2"                                    {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PREFETCHT3"                                    {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PSADBW"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PSHUFB"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PSHUFHW"                                       {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PSHUFLW"                                       {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PSHUFW"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PSIGNB"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PSIGND"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PSIGNW"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PSLLD"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PSLLDQ"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PSLLQ"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PSLLW"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PSRAD"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PSRAW"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PSRLD"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PSRLDQ"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PSRLQ"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PSRLW"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PSUBB"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PSUBD"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PSUBQ"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PSUBSB"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PSUBSW"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PSUBUSB"                                       {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PSUBUSW"                                       {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PSUBW"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PTEST"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PUNPCKHBW"                                     {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PUNPCKHDQ"                                     {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PUNPCKHQDQ"                                    {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PUNPCKHWD"                                     {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PUNPCKLBW"                                     {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PUNPCKLDQ"                                     {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PUNPCKLQDQ"                                    {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PUNPCKLWD"                                     {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PUSH"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PUSHA"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PUSHAD"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PUSHF"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PUSHFD"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "PXOR"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "RCL"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "RCPPS"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "RCR"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "RDMSR"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "RDPMC"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "RDTSC"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "RDTSCP"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "REP"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "REPNZ"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "REPNE"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "REPZ"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "REPE"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "RETF"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "RETN"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "ROL"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "ROR"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "ROUNDPD"                                       {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "ROUNDPS"                                       {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "ROUNDSD"                                       {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "ROUNDSS"                                       {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "RSM"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "RSQRTPS"                                       {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "RSQRTSS"                                       {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "SAHF"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "SAL"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "SHL"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "SALC"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "SETALC"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "SAR"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "SBB"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "SCAS"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "SCASB"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "SCASW"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "SCASD"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "SETB"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "SETNAE"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "SETC"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "SETBE"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "SETNA"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "SETL"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "SETNGE"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "SETLE"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "SETNG"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "SETNB"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "SETAE"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "SETNC"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "SETNBE"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "SETA"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "SETNL"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "SETGE"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "SETNLE"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "SETG"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "SETNO"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "SETNP"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "SETPO"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "SETNS"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "SETNZ"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "SETNE"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "SETO"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "SETP"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "SETPE"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "SETS"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "SETZ"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "SETE"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "SFENCE"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "SGDT"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "SHLD"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "SHR"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "SHRD"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "SHUFPD"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "SHUFPS"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "SIDT"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "SLDT"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "SMSW"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "SQRTPD"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "SQRTPS"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "SQRTSD"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "SQRTSS"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "STC"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "STD"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "STI"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "STMXCSR"                                       {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "STOS"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "STOSB"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "STOSW"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "STOSD"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "STR"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "SUB"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "SUBPD"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "SUBPS"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "SUBSD"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "SUBSS"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "SYSENTER"                                      {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "SYSEXIT"                                       {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "TEST"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "UCOMISD"                                       {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "UCOMISS"                                       {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "UD"                                            {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "UD2"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "UNPCKHPD"                                      {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "UNPCKHPS"                                      {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "UNPCKLPD"                                      {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "UNPCKLPS"                                      {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "VERR"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "VERW"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "VMCALL"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "VMCLEAR"                                       {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "VMLAUNCH"                                      {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "VMPTRLD"                                       {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "VMPTRST"                                       {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "VMREAD"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "VMRESUME"                                      {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "VMWRITE"                                       {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "VMXOFF"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "VMXON"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "WBINVD"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "WRMSR"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "XADD"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "XCHG"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "XGETBV"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "XLAT"                                          {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "XLATB"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "XOR"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "XORPD"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "XORPS"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "XRSTOR"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "XSAVE"                                         {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "XSETBV"                                        {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}

    "DB"                                            {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}
    "LEN"                                           {StoreString(yylval,yytext); BEGIN(PARAMS); return KEYW_1;}

    ":"                                             {StoreString(yylval,yytext); return OPERATOR;}

    ";"                                             {BEGIN(CMNT); yylval->str=new std::string(";");}

    "\""                                            {BEGIN(STR); yylval->str = new std::string("\""); yyextra->intval = INITIAL;}
    "\'"                                            {BEGIN(STR2); yylval->str = new std::string("\'"); yyextra->intval = INITIAL;}

    " "                                             {StoreString(yylval,yytext); return SPACE;}
    {IDENTIFIER}                                    {StoreString(yylval,yytext); return OTHER;}
    {NEWLINE}                                       {StoreString(yylval,yytext); return NEWLINE;}
    .                                               {StoreString(yylval,yytext); return OTHER;}
}

<PARAMS>
{
    "CS"                                            {StoreString(yylval,yytext); return KEYW_2;}
    "DS"                                            {StoreString(yylval,yytext); return KEYW_2;}
    "ES"                                            {StoreString(yylval,yytext); return KEYW_2;}
    "FS"                                            {StoreString(yylval,yytext); return KEYW_2;}
    "GS"                                            {StoreString(yylval,yytext); return KEYW_2;}
    "SS"                                            {StoreString(yylval,yytext); return KEYW_2;}

    "BYTE"                                          {StoreString(yylval,yytext); return KEYW_2;}
    "WORD"                                          {StoreString(yylval,yytext); return KEYW_2;}
    "DWORD"                                         {StoreString(yylval,yytext); return KEYW_2;}
    "QWORD"                                         {StoreString(yylval,yytext); return KEYW_2;}
    "TBYTE"                                         {StoreString(yylval,yytext); return KEYW_2;}
    "PTR"                                           {StoreString(yylval,yytext); return KEYW_2;}

    "AL"                                            {StoreString(yylval,yytext); return KEYW_2;}
    "CL"                                            {StoreString(yylval,yytext); return KEYW_2;}
    "DL"                                            {StoreString(yylval,yytext); return KEYW_2;}
    "BL"                                            {StoreString(yylval,yytext); return KEYW_2;}
    "AH"                                            {StoreString(yylval,yytext); return KEYW_2;}
    "CH"                                            {StoreString(yylval,yytext); return KEYW_2;}
    "DH"                                            {StoreString(yylval,yytext); return KEYW_2;}
    "BH"                                            {StoreString(yylval,yytext); return KEYW_2;}

    "AX"                                            {StoreString(yylval,yytext); return KEYW_2;}
    "CX"                                            {StoreString(yylval,yytext); return KEYW_2;}
    "DX"                                            {StoreString(yylval,yytext); return KEYW_2;}
    "BX"                                            {StoreString(yylval,yytext); return KEYW_2;}
    "SP"                                            {StoreString(yylval,yytext); return KEYW_2;}
    "BP"                                            {StoreString(yylval,yytext); return KEYW_2;}
    "BP1"                                           {StoreString(yylval,yytext); return KEYW_2;}
    "SI"                                            {StoreString(yylval,yytext); return KEYW_2;}
    "DI"                                            {StoreString(yylval,yytext); return KEYW_2;}

    "EAX"                                           {StoreString(yylval,yytext); return KEYW_2;}
    "ECX"                                           {StoreString(yylval,yytext); return KEYW_2;}
    "EDX"                                           {StoreString(yylval,yytext); return KEYW_2;}
    "EBX"                                           {StoreString(yylval,yytext); return KEYW_2;}
    "ESP"                                           {StoreString(yylval,yytext); return KEYW_2;}
    "EBP"                                           {StoreString(yylval,yytext); return KEYW_2;}
    "ESI"                                           {StoreString(yylval,yytext); return KEYW_2;}
    "EDI"                                           {StoreString(yylval,yytext); return KEYW_2;}

    "RAX"                                           {StoreString(yylval,yytext); return KEYW_2;}
    "RCX"                                           {StoreString(yylval,yytext); return KEYW_2;}
    "RDX"                                           {StoreString(yylval,yytext); return KEYW_2;}
    "RBX"                                           {StoreString(yylval,yytext); return KEYW_2;}
    "RSP"                                           {StoreString(yylval,yytext); return KEYW_2;}
    "RBP"                                           {StoreString(yylval,yytext); return KEYW_2;}
    "RSI"                                           {StoreString(yylval,yytext); return KEYW_2;}
    "RDI"                                           {StoreString(yylval,yytext); return KEYW_2;}
    "R8"                                            {StoreString(yylval,yytext); return KEYW_2;}
    "R9"                                            {StoreString(yylval,yytext); return KEYW_2;}
    "R10"                                           {StoreString(yylval,yytext); return KEYW_2;}
    "R11"                                           {StoreString(yylval,yytext); return KEYW_2;}
    "R12"                                           {StoreString(yylval,yytext); return KEYW_2;}
    "R13"                                           {StoreString(yylval,yytext); return KEYW_2;}
    "R14"                                           {StoreString(yylval,yytext); return KEYW_2;}
    "R15"                                           {StoreString(yylval,yytext); return KEYW_2;}

    ":"                                             {StoreString(yylval,yytext); return OPERATOR;}
    "["                                             {StoreString(yylval,yytext); return OPERATOR;}
    "]"                                             {StoreString(yylval,yytext); return OPERATOR;}
    "+"                                             {StoreString(yylval,yytext); return OPERATOR;}
    "-"                                             {StoreString(yylval,yytext); return OPERATOR;}
    "*"                                             {StoreString(yylval,yytext); return OPERATOR;}
    "/"                                             {StoreString(yylval,yytext); return OPERATOR;}
    ","                                             {StoreString(yylval,yytext); return OPERATOR;}

    ";"                                             {BEGIN(CMNT); yylval->str=new std::string(";");}

    {DIGIT}+                                        {StoreString(yylval,yytext); return NUMBER;}
    {HEXDIGIT}+"H"                                  {StoreString(yylval,yytext); return NUMBER;}
    "0x"{HEXDIGIT}+                                 {StoreString(yylval,yytext); return NUMBER;}

    "\""                                            {BEGIN(STR); yylval->str = new std::string("\""); yyextra->intval = PARAMS;}
    "\'"                                            {BEGIN(STR2); yylval->str = new std::string("\'"); yyextra->intval = PARAMS;}

    " "                                             {StoreString(yylval,yytext); return SPACE;}
    {IDENTIFIER}                                    {StoreString(yylval,yytext); return OTHER;}
    {NEWLINE}                                       {StoreString(yylval,yytext); BEGIN(INITIAL); return NEWLINE;}
    .                                               {StoreString(yylval,yytext); return OTHER;}
}

<CMNT>
{
    " "                                             {*(yylval->str) += "&nbsp;";}
    {NEWLINE}                                       {yyless(0); BEGIN(INITIAL); return COMMENT1;}
    .                                               {*(yylval->str) += yytext;}
}

<STR>
{
    "\""                                            {*(yylval->str) += "\""; BEGIN(yyextra->intval); return STRING;}
    {NEWLINE}                                       {if(yyextra->change_newline){*(yylval->str) += "<br>";} *(yylval->str) += yytext;}
    .                                               {*(yylval->str) += yytext;}
}

<STR2>
{
    "\'"                                            {*(yylval->str) += "\'"; BEGIN(yyextra->intval); return STRING;}
    {NEWLINE}                                       {if(yyextra->change_newline){*(yylval->str) += "<br>";} *(yylval->str) += yytext;}
    .
}

%%

extern "C" int asm_yywrap(void* scanner) {return 1;}
