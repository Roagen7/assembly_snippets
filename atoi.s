; parse string in rsi
; to rax as number

atoi:
	push 	rbx
	push	rcx
	push	rsi
	push	rdx
	mov	rcx, 0
.loop:
	cmp	byte[rsi], 0xa
	je	.next
	cmp	byte[rsi], 0x0
	je	.next

	inc	rcx			
	xor	rbx,rbx
	mov	bl, byte[rsi]	
	sub	rbx, 48
	push	rbx	


	inc	rsi
	jmp	.loop

.next:	
	mov 	rsi, 0
	mov	rbx, 1
.loop2:
	cmp	rcx, 0	
	je	.end
	pop	rax

	xor	rdx, rdx
	mul	rbx
	add	rsi, rax
	mov	rax, rbx
	mov	rbx, 10
	mul	rbx
	mov	rbx, rax
		
	dec	rcx	
	jmp	.loop2


.end:
	mov	rax, rsi

	pop	rdx
	pop	rsi
	pop	rcx
	pop	rbx
	ret


