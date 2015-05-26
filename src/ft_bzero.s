; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_bzero.s                                         :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: abarbaro <abarbaro@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/26 03:37:45 by abarbaro          #+#    #+#              ;
;    Updated: 2015/05/26 03:39:45 by abarbaro         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;



section .text
		global ft_bzero

ft_bzero:
		cmp		rdi, 0
		je		exit
		dec		rsi
		cmp 	rsi, 0
		jl		exit
		mov		byte[rdi + rsi], 0
		jmp		ft_bzero
exit:
	ret