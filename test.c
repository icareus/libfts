#include <ctype.h>
#include <stdio.h>
#include <libfts.h>

int		main(int ac, char **av)
{
	if (ac != 2)
		return (0);
	printf("Pour %c :\nstd -> %d\nlft -> %d\n",
		av[1][0], isdigit(*av[1]), ft_isdigit(*av[1]));
}