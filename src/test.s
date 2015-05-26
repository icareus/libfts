section .text
	global start
	global _main

start:
	call _main
	ret

_main:
	ret

; section .data
; hello:
; 	.string db "Hello World!", 12
; 	.len equ # - hello.string

; section .text
; 	global start
; 	global_main