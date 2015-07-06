section	.text
	global _ft_memalloc
	extern _ft_bzero
	extern _malloc

_ft_memalloc:
	push	rdi
	call	_malloc
	cmp	rax, 0
	je	exit
	pop	rdi
	push rdi
	push	rax
	mov	rsi, rdi
	mov	rdi, rax
	call	_ft_bzero
	pop	rax

exit:
	pop rdi
	ret