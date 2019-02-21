#include <iostream>

#include "highlighter.h"

static const char* usage = "Usage: SyntaxHighlighter [filename] [language]\n"
"Supported languages:\n"
"C++, Java, Assembly (64-bit Intel Syntax)\n";

int main(int argc, const char* argv[])
{
    if(argc > 2)
    {
        HighLighter* highlighter = HighLighter::create(argv[1],argv[2]);
        if(highlighter != nullptr)
        {
            highlighter->scan();
            delete highlighter;
            return 0;
        }
        else
            return 1;
    }
    else
    {
        std::cerr << "Not enough arguments given" << std::endl << std::endl;
        std::cerr << usage << std::endl;
        return 1;
    }
    return 0;
}
