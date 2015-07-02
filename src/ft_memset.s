; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_memset.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: abarbaro <abarbaro@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/26 03:37:45 by abarbaro          #+#    #+#              ;
;    Updated: 2015/05/27 05:54:46 by abarbaro         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

; void *memset(void *b, int c, size_t len)
; RDI = dest, RSI = src_set, len = RDX

section .text
		global _ft_memset

_ft_memset:
		cmp		rdi, 0		; if (dest == NULL)
		je		exit
		mov		rcx, rdx	; set counter
		mov		rax, rsi	; set src word
		cld
		rep		stosb

exit:
	mov rax, rdi
	ret