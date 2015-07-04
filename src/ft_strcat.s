; char	*strcat(s1, s2) appends s2 at the end of s1

section .text
		global _ft_strcat
		extern _ft_strlen
		extern _ft_memcpy

_ft_strcat:
	cmp		rdi, 0		; if (dest == NULL)
	je		end
	cmp		rsi, 0
	je		end
	call	_ft_strlen
	push	rax
	push	rdi
	mov		rdi, rsi
	call	_ft_strlen
	mov		rdx, rax
	pop		rdi
	pop		rax
	push	rdi
	add		rdi, rax
	call	_ft_memcpy
	pop		rdi

end:
	mov		rax, rdi
	ret
