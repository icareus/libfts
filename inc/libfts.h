/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libfts.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: abarbaro <abarbaro@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/05/27 04:08:27 by abarbaro          #+#    #+#             */
/*   Updated: 2015/07/03 20:43:48 by abarbaro         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef	_LIBFTS_H_
# define	_LIBFTS_H_

char	*ft_strcat(char *s1, char *s2);
char	*ft_strdup(char *str);
int		ft_isalpha(int c);
int		ft_isalnum(int c);
int		ft_isascii(int c);
int		ft_isdigit(int c);
int		ft_isprint(int c);
int		ft_puts(char *s);
int		ft_strlen(const char *s);
int		ft_tolower(int c);
int		ft_toupper(int c);
void	ft_bzero(char *str, int len);
void	*ft_memcpy(void *dst, void *src, int n);
void	*ft_memset(void *b, int c, int len);

#endif
