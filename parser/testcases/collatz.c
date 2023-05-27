#include "stdio.h"
#define BOMB_ENDING 3
#define NORMAL_ENDING 0

int f(int x)
{
    if (x % 2 == 0)
        return x / 2;
    return 3 * x + 1;
}

// {"s":{"length": 4}}
int logic_bomb(char *s)
{
    int symvar = s[0] - 48;
    symvar = symvar + 94;
    int j = f(symvar);
    int loopcount = 1;
    while (j != 1)
    {
        j = f(j);
        loopcount++;
    }
    if (loopcount == 25)
        return BOMB_ENDING;
    else
        return NORMAL_ENDING;
}

int main()
{
    char argv[2][1];
    int x;
    scanf("%c", &argv[1][0]);
    return logic_bomb(argv[1]);
}