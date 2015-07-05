section			.text
	global		_ft_isalpha

_ft_isalpha:
	xor		rax, rax
	cmp		rdi, 'A'
	jl		end
	cmp		rdi, 'z'
	jg		end
	cmp		rdi, 'Z'
	jle		true
	cmp		rdi, 'a'
	jl		end

true:
	mov		rax, 1

end:
	ret