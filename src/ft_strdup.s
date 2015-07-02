;char *ft_strdup(char *str)
extern	_ft_memcpy
extern	_ft_strlen
extern	_malloc

section .text
		global _ft_strdup

_ft_strdup:
		xor		rax, rax
		cmp		rdi, 0		; if (src == NULL)
		je		exit
		call	_ft_strlen	; get length of string rdi in rax
		mov		r12, rdi	; save arg
		mov		rdi, rax + 1; ready to pass len to malloc + 1 for nullterm
		call	_malloc
		mov		rcx, rdi
		mov		rdi, rax
		mov		rsi, r12
		rep		movsb

exit:
	ret