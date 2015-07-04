make && gcc -Wall -Werror -Wextra test.c -I inc -L. -lfts -o test.out &&
./test.out "toto"
