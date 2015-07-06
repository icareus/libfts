section .text
	global _ft_isupper

_ft_isupper:
	cmp		rdi, 'A'
	jl		fail
	cmp		rdi, 'Z'
	jg		fail
	mov		rax, 1
	ret

fail:
	xor		rax, rax
	ret