; ft_cat(int fd) : outputs file contents on STDOUT
%define		BUFF_SIZE			1024
%define		EOF					0xff
%define		MACH_SYSCALL(nb)	0x2000000 | nb
%define		FD_STDOUT			1
%define		READ				3
%define		WRITE				4
%define		OK					42
%define		READ_ERR			-1

global		_ft_cat
extern		_malloc

section		.bss
buff:
	.addr		resb	BUFF_SIZE
	.len		equ		$ - buff.addr

section		.text
_ft_cat:
	mov		r10, rdi
	lea		rsi, [rel buff.addr]
.read:
	mov		rdi, r10
	mov		rdx, buff.len
	mov		rax, MACH_SYSCALL(READ)
	syscall
	jc		.badfd
	cmp		rax, 0
	je		.end
.write:
	mov		rdi, FD_STDOUT
	mov		rdx, rax				;return from read -> len
	mov		rax, MACH_SYSCALL(WRITE)
	syscall
	jmp		.read

.badfd:
	mov		rax, READ_ERR
	ret

.end:
	mov		rax, OK
	ret