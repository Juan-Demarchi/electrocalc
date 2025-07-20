	.file	"electrocalc.c"
	.text
	.section	.rodata
.LC1:
	.string	"Result: %lf\n\n"
	.text
	.globl	calc
	.type	calc, @function
calc:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movsd	%xmm2, -40(%rbp)
	movsd	.LC0(%rip), %xmm0
	ucomisd	-40(%rbp), %xmm0
	jp	.L2
	movsd	.LC0(%rip), %xmm0
	ucomisd	-40(%rbp), %xmm0
	jne	.L2
	movsd	-24(%rbp), %xmm0
	mulsd	-32(%rbp), %xmm0
	movsd	%xmm0, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rax, %xmm0
	movq	%rdx, %rdi
	movl	$1, %eax
	call	printf@PLT
	jmp	.L4
.L2:
	movsd	-24(%rbp), %xmm0
	divsd	-32(%rbp), %xmm0
	movsd	%xmm0, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rax, %xmm0
	movq	%rdx, %rdi
	movl	$1, %eax
	call	printf@PLT
.L4:
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	calc, .-calc
	.section	.rodata
.LC2:
	.string	"\n********************"
.LC3:
	.string	"**** ElectroCalc ***"
.LC4:
	.string	"********************\n"
	.align 8
.LC5:
	.string	"What do you want to calculate?"
	.align 8
.LC6:
	.string	"[1] Voltage.\n[2] Resistance.\n[3] Current.\n> "
.LC7:
	.string	"%d"
	.align 8
.LC8:
	.string	"\nEnter your respective values."
.LC9:
	.string	"Resistance: "
.LC10:
	.string	"%lf"
.LC11:
	.string	"Current: "
.LC12:
	.string	"Voltage: "
.LC13:
	.string	"An error has occured."
	.text
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-36(%rbp), %rax
	leaq	.LC7(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	__isoc23_scanf@PLT
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	-36(%rbp), %eax
	cmpl	$3, %eax
	je	.L8
	cmpl	$3, %eax
	jg	.L9
	cmpl	$1, %eax
	je	.L10
	cmpl	$2, %eax
	je	.L11
	jmp	.L9
.L10:
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-24(%rbp), %rax
	leaq	.LC10(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	__isoc23_scanf@PLT
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-16(%rbp), %rax
	leaq	.LC10(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	__isoc23_scanf@PLT
	movl	-36(%rbp), %eax
	pxor	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm1
	movsd	-16(%rbp), %xmm0
	movq	-24(%rbp), %rax
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	calc
	jmp	.L12
.L11:
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-32(%rbp), %rax
	leaq	.LC10(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	__isoc23_scanf@PLT
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-16(%rbp), %rax
	leaq	.LC10(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	__isoc23_scanf@PLT
	movl	-36(%rbp), %eax
	pxor	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm1
	movsd	-16(%rbp), %xmm0
	movq	-32(%rbp), %rax
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	calc
	jmp	.L12
.L8:
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-32(%rbp), %rax
	leaq	.LC10(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	__isoc23_scanf@PLT
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-24(%rbp), %rax
	leaq	.LC10(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	__isoc23_scanf@PLT
	movl	-36(%rbp), %eax
	pxor	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm1
	movsd	-24(%rbp), %xmm0
	movq	-32(%rbp), %rax
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	calc
	jmp	.L12
.L9:
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	nop
.L12:
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L14
	call	__stack_chk_fail@PLT
.L14:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1072693248
	.ident	"GCC: (GNU) 15.1.1 20250425"
	.section	.note.GNU-stack,"",@progbits
