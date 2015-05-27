; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isdigit.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: abarbaro <abarbaro@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/27 03:29:19 by abarbaro          #+#    #+#              ;
;    Updated: 2015/05/27 05:29:53 by abarbaro         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_isdigit

section .text

_ft_isdigit:
	cmp		rdi, '0'
	jl		false
	cmp		rdi, '9'
	jg		false
	mov		rax, 1
	ret

false:
	xor		rax, rax
	ret
