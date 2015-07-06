section .text
	global _ft_strclr
	extern _ft_strlen
	extern _ft_bzero

_ft_strclr:
	cmp		rdi, 0
	je		end
	call	_ft_strlen
	mov		rsi, rax
	call	_ft_bzero

end:
	ret