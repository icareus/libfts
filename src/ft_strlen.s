; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strlen.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: swix <swix@student.42.fr>                  +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/26 23:14:44 by swix              #+#    #+#              ;
;    Updated: 2015/05/26 23:51:27 by swix             ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global		_ft_strlen

section		.text

_ft_strlen:
	xor		rcx, rcx

strloop:
	cmp		byte[rdi + rcx], 0
	je		exit
	inc		rcx
	jmp		strloop

exit:
	mov		rax, rcx
	ret
