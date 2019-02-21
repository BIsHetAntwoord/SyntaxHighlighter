#include "highlighter.h"
#include "scanners.h"

#include <iostream>
#include <cstdio>
#include <cstring>
#include <map>

scan_info::scan_info(int(*lex)(YYSTYPE*,void*),int(*init)(void**),int(*destruct)(void*),void(*setin)(FILE*,void*),void(*setextra)(param_info*,void*)) : lex(lex), init(init), destruct(destruct), setin(setin), setextra(setextra) {};

int noncasecmp(const char* a, const char* b)
{
    for(;;++a,++b)
    {
        int d = tolower(*a) - tolower(*b);
        if(d != 0 || *a == 0)
            return d;
    }
}

struct c_str_cmp_nocase
{
    bool operator() (const char* a, const char* b) const
    {
        return noncasecmp(a,b) < 0;
    }
};

const std::map<const char*, const scan_info, c_str_cmp_nocase> langmap
{
    {"Assembly", scan_info(asm_yylex,asm_yylex_init,asm_yylex_destroy,asm_yyset_in,asm_yyset_extra)},
    {"C++", scan_info(cpp_yylex,cpp_yylex_init,cpp_yylex_destroy,cpp_yyset_in,cpp_yyset_extra)},
    {"Java", scan_info(java_yylex,java_yylex_init,java_yylex_destroy,java_yyset_in,cpp_yyset_extra)}
};

HighLighter::HighLighter(const scan_info* scaninfo, FILE* file) : scaninfo(scaninfo), file(file)
{
    this->scaninfo->init(&this->scanner);
    this->scaninfo->setin(this->file,this->scanner);
    this->scaninfo->setextra(&this->extra,this->scanner);
}

HighLighter::~HighLighter()
{
    this->scaninfo->destruct(this->scanner);
    fclose(this->file);
}

HighLighter* HighLighter::create(const char* filename, const char* lang)
{
    FILE* file = fopen(filename,"rb");
    if(file != nullptr)
    {
        auto it = langmap.find(lang);
        if(it != langmap.end())
        {
            return new HighLighter(&it->second,file);
        }
        else
        {
            std::cerr << "Unsupported language " << lang << std::endl;
        }
    }
    else
    {
        std::cerr << "Could not open file " << filename << std::endl;
    }
    return nullptr;
}

void HighLighter::scan()
{
    YYSTYPE type;
    int retval;
    while((retval = this->scaninfo->lex(&type,this->scanner)) != 0)
    {
        switch(retval)
        {
            case KEYW_1:
                std::cout << "<span class=\"keyword1\">" << *type.str << "</span>";
                break;
            case KEYW_2:
                std::cout << "<span class=\"keyword2\">" << *type.str << "</span>";
                break;
            case OPERATOR:
                std::cout << "<span class=\"operator\">" << *type.str << "</span>";
                break;
            case STRING:
                std::cout << "<span class=\"string\">" << *type.str << "</span>";
                break;
            case CHAR:
                std::cout << "<span class=\"char\">" << *type.str << "</span>";
                break;
            case NUMBER:
                std::cout << "<span class=\"number\">" << *type.str << "</span>";
                break;
            case PREPROCESSOR:
                std::cout << "<span class=\"preprocessor\">" << *type.str << "</span>";
                break;
            case COMMENT1:
                std::cout << "<span class=\"comment1\">" << *type.str << "</span>";
                break;
            case COMMENT2:
                std::cout << "<span class=\"comment2\">" << *type.str << "</span>";
                break;
            case SPACE:
                std::cout << "&nbsp;";
                break;
            case NEWLINE:
                std::cout << "<br>" << *type.str;
                break;
            case OTHER:
                std::cout << *type.str;
                break;
        }
        delete type.str;
    }
}
