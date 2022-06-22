; scans for user input
; stores it in memory
; block provided in rsi

scan:
	push	rax
	push	rdi
	push	rdx
	
	mov	rax, 0x02000003
	mov	rdi, 0
	mov	rdx, 255
	syscall	

	pop	rdx
	pop	rdi
	pop	rax
	
	ret

