/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libfts.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: abarbaro <abarbaro@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/05/27 04:08:27 by abarbaro          #+#    #+#             */
/*   Updated: 2015/05/27 05:55:05 by abarbaro         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef	_LIBFTS_H_
# define	_LIBFTS_H_

int		ft_isdigit(int c);
int		ft_strlen(const char *s);
void	ft_bzero(char *str, int len);
void	*ft_memcpy(void *dst, void *src, int n);
void	*ft_memset(void *b, int c, int len);

#endif