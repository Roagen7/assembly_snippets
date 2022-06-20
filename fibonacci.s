
; a subroutine that calculates
; n-th fibonacci number
; n is in rax
; out is to rax

fibonacci:
	push	rbx
	push 	rcx
	push	rdx	
	
	mov 	rdx, 2		; counter


	mov	rbx, 1		; f1
	mov	rcx, 1		; f2

.loop:
	cmp	rdx, rax
	jge 	.end
	
	push	rcx
	add	rcx, rbx
	pop	rbx	
	
	inc	rdx
	jmp 	.loop	
	
.end:
	mov	rax, rcx	

	pop	rcx
	pop	rbx
	pop	rdx

	ret	

