exit:
	mov 	rax, 0x02000001	
	mov	rdi, 0x0
	syscall
	ret
