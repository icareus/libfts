section			.text
	global		_ft_isalpha

_ft_isalpha:
	xor		rax, rax
	cmp		rdi, 'A'
	jl		end
	cmp		rdi, 'z'
	jg		end
	cmp		rdi, 'Z'
	jl		true
	cmp		rdi, 'a'
	jg		true

true:
	mov		rax, 1

end:
	ret