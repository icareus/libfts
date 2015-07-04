; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strlen.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: abarbaro <abarbaro@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/26 23:14:44 by swix              #+#    #+#              ;
;    Updated: 2015/05/27 17:12:15 by abarbaro         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global		_ft_strlen

section		.text

_ft_strlen:
	xor		rax, rax		;AL = 0, to look for null-termination
	xor		rcx, rcx		;RCX = 0
	dec		rcx				;RCX = -1 or max value
	repne	scasb			;while RCX && byte[rdi] != AL, RCX--
	not		rcx
	dec		rcx
	mov		rax, rcx
	ret
