;	prints number 
;	stored at rax

itoa_print:
	push	rdx
	push 	rbx
	push	rcx
	push	rsi
	push	rdi
	push	rax
	
	mov	rbx, 10
	mov	rcx, 0
.loop:
	mov	rdx, 0
	idiv	rbx		
	
	add	rdx, 48
	push	rdx
	inc	rcx	

	cmp	rax, 0	
	je	.next

	jmp 	.loop
		
.next:	
	cmp 	rcx, 0
	je	.end

	dec	rcx
	pop	rax
	push	rax
	mov	rsi, rsp
	mov	rax, 0x02000004	
	mov	rdi, 1
	mov	rdx, 1
	syscall

	pop	rax

	jmp	.next	

.end:
	pop	rax
	pop	rdi
	pop	rsi
	pop	rcx
	pop	rbx
	pop	rdx

	ret


