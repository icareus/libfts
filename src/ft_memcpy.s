; void *memcpy(void *dst, void *src, int nbytes)
; RDI = dest, RSI = src, RDX = len

section .text
		global _ft_memcpy

_ft_memcpy:
		cmp		rdi, 0		; if (dest == NULL)
		je		exit
		cmp		rsi, 0
		je		exit
		mov		rcx, rdx	; set counter
		cld
		rep		movsb

exit:
	mov rax, rdi
	ret