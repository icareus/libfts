%define		EOF					0xff
%define		MACH_SYSCALL(nb)	0x2000000 | nb
%define		STDOUT				1
%define		WRITE				4
%define		OK					42

global		_ft_puts
extern		_ft_strlen

section		.data
null:
	.string db "(null)"
	.len equ $-null.string 			; string lenght

section		.bss
	endl:	resb	0x1

section		.text

_ft_puts:
	cmp		rdi, 0
	je		.void
	push	rdi
	call	_ft_strlen
	mov		rdi, STDOUT					; write(STDOUT,
	pop		rsi							; str,
	mov		rdx, rax					; strlen(str));
	mov		rax, MACH_SYSCALL(WRITE)
	syscall
	cmp		rax, -1
	je		.error
	jmp		.endl

.void:
	mov		rdi, STDOUT
	lea		rsi, [rel null.string]
	mov		rdx, null.len
	mov		rax, MACH_SYSCALL(WRITE)
	syscall
	jmp		.endl

.error:
	mov		rax, EOF
	ret

.endl:
	mov		rdi, STDOUT
	mov		rsi, 0xA
	lea		r10, [rel endl]
	mov		[r10], rsi
	mov		rsi, r10
	mov		rdx, 1
	mov		rax, MACH_SYSCALL(WRITE)
	syscall
	cmp		rax, -1
	je		.error
	mov		rax, OK
	ret
