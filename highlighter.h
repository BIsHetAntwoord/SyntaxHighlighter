#ifndef HIGHLIGHTER_H_INCLUDED
#define HIGHLIGHTER_H_INCLUDED

#include <cstdio>

#include "scanners.h"

struct scan_info
{
    scan_info(int(*lex)(YYSTYPE*,void*), int(*init)(void**), int(*destruct)(void*), void(*setin)(FILE*,void*), void(*setextra)(param_info*,void*));
    int(*lex)(YYSTYPE*,void*) = nullptr;
    int(*init)(void**) = nullptr;
    int(*destruct)(void*) = nullptr;
    void(*setin)(FILE*,void*) = nullptr;
    void(*setextra)(param_info*,void*) = nullptr;
};

class HighLighter
{
    private:
        const scan_info* scaninfo = nullptr;
        void* scanner = nullptr;
        FILE* file = nullptr;
        param_info extra;
        HighLighter(const scan_info* scaninfo, FILE* file);
    public:
        static HighLighter* create(const char* filename, const char* lang);
        void scan();
        ~HighLighter();
};

#endif // HIGHLIGHTER_H_INCLUDED
