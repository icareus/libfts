;char *ft_strdup(char *str)

section .text
	global	_ft_strdup
	extern	_ft_memcpy
	extern	_ft_strlen
	extern	_malloc

_ft_strdup:
	push	rbp			;											#STACK
	mov		rbp, rsp
	xor		rax, rax
	cmp		rdi, 0		; if (src == NULL)
	je		end
	push	rdi			; save str									#STACK
	call	_ft_strlen	; get length of string rdi in rax
	inc		rax
	push	rax			; save len									#STACK
	mov		rdi, rax	; ready to pass len to malloc + 1 for nullterm
	call	_malloc
	mov		rdi, rax	; dst
	pop		rdx			; len
	pop		rsi			; src
	cmp		rdi, 0
	je		end
	call	_ft_memcpy

end:
	; mov		rsp, rbp
	pop		rbp
	ret
