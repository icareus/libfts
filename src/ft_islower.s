section .text
	global _ft_islower

_ft_islower:
	cmp		rdi, 'a'
	jl		fail
	cmp		rdi, 'z'
	jg		fail
	mov		rax, 1
	ret

fail:
	xor		rax, rax
	ret