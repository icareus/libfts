; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_bzero.s                                         :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: abarbaro <abarbaro@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/26 03:37:45 by abarbaro          #+#    #+#              ;
;    Updated: 2015/05/27 05:54:46 by abarbaro         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;



section .text
		global _ft_bzero

_ft_bzero:
		cmp		rdi, 0
		je		exit
		dec		rsi
		cmp 	rsi, 0
		jl		exit
		mov		byte[rdi + rsi], 0
		jmp		_ft_bzero
exit:
	ret