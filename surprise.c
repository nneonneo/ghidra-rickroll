const
#include "rickroll-roll.h"
#include <stdio.h>
#include <stdlib.h>

int main(int argc, char **argv) {
    printf("There's nothing to see here!\n");
    if(argc == 0x1337) {
        int offset = atoi(argv[1]);
        if(offset >= 0 && offset < rickroll_roll_gif_len)
            return rickroll_roll_gif[offset];
    }
    return 0;
}
