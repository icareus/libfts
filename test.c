#include <fcntl.h>
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
	int		fd;

	if (ac != 2)
		return (0);
(void)av;
(void)fd;
mem = NULL;
ft_puts(mem);
ft_puts(NULL);
ft_puts("qqq");
	// printf("strlen(av[0]) : %ld\nft_strlen() : %d\n",
	// 	strlen(av[0]), ft_strlen(av[0]));
	// printf("memset(mem, 'a', 32) : %.32s\n", mem);
	// ft_memset(mem, 'b', 32);
	// printf("ft_memset(mem, 'b', 32) : %.32s\n", mem);
	// memcpy(mem, "Lorem ipsum dolor sit amet, id.", 32);
	// printf("memcpy(mem, 'Lorem ipsum dolor sit amet, id.', 32) : %s\n", mem);
	// ft_memcpy(mem, "Porem ipsum dolor sit amet, to.", 32);
	// printf("ft_memcpy(mem, 'Porem ipsum dolor sit amet, to.', 32) : %s\n\n", mem);

	// free(mem);
	// mem = strdup(av[0]);
	// printf("strdup(av[0]) : %s\n", mem);
	// free(mem);
	// mem = ft_strdup(av[0]);
	// printf("ft_strdup(av[0]) : %s\n\n", mem);

	// printf("ft_isalpha('a') : %s\n", ft_isalpha('a') ? "TRUE" : "FALSE");
	// printf("ft_isalpha('z') : %s\n", ft_isalpha('z') ? "TRUE" : "FALSE");
	// printf("ft_isalpha('A') : %s\n", ft_isalpha('A') ? "TRUE" : "FALSE");
	// printf("ft_isalpha('Z') : %s\n", ft_isalpha('Z') ? "TRUE" : "FALSE");
	// printf("ft_isalpha(' ') : %s\n", ft_isdigit(' ') ? "TRUE" : "FALSE");
	// printf("\nft_isalnum(' ') : %s\n", ft_isalnum(' ') ? "TRUE" : "FALSE");
	// printf("ft_isalnum('a') : %s\n", ft_isalnum('a') ? "TRUE" : "FALSE");
	// printf("ft_isalnum('1') : %s\n", ft_isalnum('1') ? "TRUE" : "FALSE");
	// printf("ft_isalnum('z') : %s\n", ft_isalnum('z') ? "TRUE" : "FALSE");
	// printf("ft_isalnum('A') : %s\n", ft_isalnum('A') ? "TRUE" : "FALSE");
	// printf("ft_isalnum('Z') : %s\n", ft_isalnum('Z') ? "TRUE" : "FALSE");
	// printf("ft_isdigit('a') : %s\n", ft_isdigit('a') ? "TRUE" : "FALSE");
	// printf("ft_isdigit('0') : %s\n", ft_isdigit('0') ? "TRUE" : "FALSE");
	// printf("ft_toupper('0') : %c\n", ft_toupper('0'));
	// printf("ft_toupper('a') : %c\n", ft_toupper('a'));
	// printf("ft_toupper('A') : %c\n", ft_toupper('A'));
	// printf("ft_tolower('0') : %c\n", ft_tolower('0'));
	// printf("ft_tolower('a') : %c\n", ft_tolower('a'));
	// printf("ft_tolower('A') : %c\n\n", ft_tolower('A'));

	// free(mem);
	// mem = malloc(sizeof(char) * 10);
	// ft_bzero(mem, 10);
	// ft_memcpy(mem, "toto", 5);
	// ft_strcat(mem, " tutu");
	// printf("strcat(\"toto\", \" tutu\")%s\n\n", mem);

	// printf("puts(mem) : ");
	// fflush(stdout);
	// puts(mem);
	// printf("\nft_puts(mem) : ");
	// fflush(stdout);
	// ft_puts(mem);
	// printf("\n");
	// printf("puts('Lorem ipsum') : ");
	// fflush(stdout);
	// puts("Lorem ipsum");
	// printf("ft_puts('Lipsum Orem') : ");
	// fflush(stdout);
	// ft_puts("Lipsum Orem");
	// if (ac == 2)
	// {
	// 	ft_puts("\n\n\n");
	// 	fd = open(av[1], O_RDONLY);
	// 	ft_cat(fd);
	// 	close(fd);
	// 	return (0);
	// }
}
