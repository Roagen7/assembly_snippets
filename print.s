; prints string with
; address stored in rsi

print:
	push	rax
	push 	rdi
	push 	rdx
			
	call 	strlen
	mov	rdx, rax ; strlen to rdx
	mov	rax, 0x02000004 
	mov	rdi, 1	
	syscall	


	pop 	rdx
	pop	rdi
	pop	rax	
	ret	

; length of a string
; address stored in rsi
; out str length to rax

strlen:
	
	mov	rax, rsi 
	
.loop:
	
	inc	rax
	cmp	byte [rax], 0	
	jne 	.loop

	sub	rax, rsi
	
	ret
endl:
	push	rsi
	
	push 	0x0
	push	0xa
	mov	rsi, rsp	
	call	print
	
	pop	rsi
	pop	rsi
	pop	rsi
	
	
	ret
	

