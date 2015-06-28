make && gcc -Wall -Werror -Wextra test.c -I inc -L. -lfts -o test.out &&
./test.out "toto" &&
./test.out "42" &&
./test.out "zero" &&
./test.out 0 &&
./test.out 9
