global _ft_isprint

section .text

_ft_isprint:
	cmp		rdi, 040
	jl		false
	cmp		rdi, 0176
	jg		false
	mov		rax, 1
	ret

false:
	xor		rax, rax
	ret
