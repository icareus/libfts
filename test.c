#include <ctype.h>
#include <stdio.h>
#include <libfts.h>
#include <string.h>
#include <unistd.h>

int		main(int ac, char **av)
{
	if (ac != 2)
		return (0);
	printf("Tests en cours : ft_isdigit.\n\n");
	printf("Pour %c :\nstd -> %d\nlft -> %d\n",
		av[1][0], isdigit(av[1][0]), ft_isdigit(*av[1]));
	write(1, "Flush buffer -> end of isdigit\n", strlen("Flush buffer -> end of isdigit") + 1);
	printf("strlen(av[0]) : %ld\nft_strlen() : %d\n",
		strlen(av[0]), ft_strlen(av[0]));
	printf("strlen(av[1]) : %ld\nft_strlen() : %d\n",
		strlen(av[1]), ft_strlen(av[1]));
}