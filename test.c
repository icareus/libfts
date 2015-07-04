#include <ctype.h>
#include <stdio.h>
#include <libfts.h>
#include <string.h>
#include <unistd.h>
#include <stdlib.h>

int		main(int ac, char **av)
{
	void	*mem = malloc(sizeof(int) * 32);
	memset(mem, 'a', 32);

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
	printf("memset(mem, 'a', 32) : %.32s\n", mem);
	ft_memset(mem, 'b', 32);
	printf("ft_memset(mem, 'b', 32) : %.32s\n", mem);
	memcpy(mem, "Lorem ipsum dolor sit amet, id.", 32);
	printf("memcpy(mem, 'Lorem ipsum dolor sit amet, id.', 32) : %s\n", mem);
	ft_memcpy(mem, "Porem ipsum dolor sit amet, to.", 32);
	printf("ft_memcpy(mem, 'Porem ipsum dolor sit amet, to.', 32) : %s\n", mem);

	mem = strdup(av[0]);
	printf("strdup(av[0]) : %s\n", mem);
	mem = ft_strdup(av[0]);
	printf("ft_strdup(av[0]) : %s\n", mem);
	printf("ft_strdup's return : %p\n", mem);
	printf("ft_isalpha('a') : %s\n", ft_isalpha('a') ? "TRUE" : "FALSE");
	printf("ft_isalpha('z') : %s\n", ft_isalpha('z') ? "TRUE" : "FALSE");
	printf("ft_isalpha('A') : %s\n", ft_isalpha('A') ? "TRUE" : "FALSE");
	printf("ft_isalpha('Z') : %s\n", ft_isalpha('Z') ? "TRUE" : "FALSE");
	printf("ft_isalpha(' ') : %s\n", ft_isdigit(' ') ? "TRUE" : "FALSE");
	printf("\nft_isalnum(' ') : %s\n", ft_isalnum(' ') ? "TRUE" : "FALSE");
	printf("ft_isalnum('a') : %s\n", ft_isalnum('a') ? "TRUE" : "FALSE");
	printf("ft_isalnum('1') : %s\n", ft_isalnum('1') ? "TRUE" : "FALSE");
	printf("ft_isalnum('z') : %s\n", ft_isalnum('z') ? "TRUE" : "FALSE");
	printf("ft_isalnum('A') : %s\n", ft_isalnum('A') ? "TRUE" : "FALSE");
	printf("ft_isalnum('Z') : %s\n", ft_isalnum('Z') ? "TRUE" : "FALSE");
}
