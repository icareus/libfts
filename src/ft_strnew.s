section	.text
	extern	_ft_memalloc
	global	_ft_strnew

_ft_strnew:
	push rdi
	inc	rdi
	call	_ft_memalloc
	pop rdi
	ret