
global PruebaASMNorm
	section .text

PruebaASMNorm:
	xorpd	xmm0,	xmm0
	xorpd	xmm1,	xmm1
	cmp	rdx,	0
	je	done
next:
	movss	xmm0,	[rdi]
	mulss	xmm0,	xmm0
	addss	xmm1,	xmm0
	add	rdi,	4
	sub	rsi,	1
	jnz	next	
done:
	sqrtss	xmm1,	xmm1
	movss	[rdx],	xmm1
	ret
