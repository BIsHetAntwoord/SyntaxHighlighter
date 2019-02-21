#include "scanners.h"

void StoreString(YYSTYPE* output, const char* input)
{
    output->str = new std::string(input);
}
