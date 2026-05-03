	.file	"main.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function color_xyz_to_rgb
.LCPI0_0:
	.quad	0xbff898676a7264a1              # double -1.5372079999999999
	.quad	0x3ffe0318d40c5c2f              # double 1.8757561
.LCPI0_1:
	.quad	0x4009eccd0fe8ab50              # double 3.2406255000000002
	.quad	0xbfef017af492e474              # double -0.96893070000000003
.LCPI0_2:
	.quad	0xbfdfe987ee766ac0              # double -0.49862859999999998
	.quad	0x3fa541c8216c6152              # double 0.041517499999999999
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI0_3:
	.quad	0xbfca1d5d0818d336              # double -0.20402110000000001
.LCPI0_4:
	.quad	0x3fac8608c31d20a2              # double 0.055710099999999999
.LCPI0_5:
	.quad	0x3ff0e974886818ee              # double 1.0569959
.LCPI0_6:
	.quad	0x3ff0000000000000              # double 1
	.text
	.globl	color_xyz_to_rgb
	.p2align	4
	.type	color_xyz_to_rgb,@function
color_xyz_to_rgb:                       # @color_xyz_to_rgb
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, %rax
	movsd	16(%rbp), %xmm2                 # xmm2 = mem[0],zero
	movsd	24(%rbp), %xmm3                 # xmm3 = mem[0],zero
	movapd	%xmm3, %xmm1
	unpcklpd	%xmm3, %xmm1                    # xmm1 = xmm1[0],xmm3[0]
	mulpd	.LCPI0_0(%rip), %xmm1
	movapd	%xmm2, %xmm4
	unpcklpd	%xmm2, %xmm4                    # xmm4 = xmm4[0],xmm2[0]
	mulpd	.LCPI0_1(%rip), %xmm4
	movsd	32(%rbp), %xmm0                 # xmm0 = mem[0],zero
	addpd	%xmm1, %xmm4
	movapd	%xmm0, %xmm1
	unpcklpd	%xmm0, %xmm1                    # xmm1 = xmm1[0],xmm0[0]
	mulpd	.LCPI0_2(%rip), %xmm1
	addpd	%xmm4, %xmm1
	movupd	%xmm1, (%rdi)
	mulsd	.LCPI0_3(%rip), %xmm3
	mulsd	.LCPI0_4(%rip), %xmm2
	addsd	%xmm3, %xmm2
	mulsd	.LCPI0_5(%rip), %xmm0
	addsd	%xmm2, %xmm0
	movsd	%xmm0, 16(%rdi)
	movsd	.LCPI0_6(%rip), %xmm2           # xmm2 = [1.0E+0,0.0E+0]
	ucomisd	%xmm2, %xmm1
	ja	.LBB0_2
# %bb.1:
	xorpd	%xmm2, %xmm2
	ucomisd	%xmm1, %xmm2
	jbe	.LBB0_3
.LBB0_2:
	movsd	%xmm2, (%rax)
.LBB0_3:
	unpckhpd	%xmm1, %xmm1                    # xmm1 = xmm1[1,1]
	movsd	.LCPI0_6(%rip), %xmm2           # xmm2 = [1.0E+0,0.0E+0]
	ucomisd	%xmm2, %xmm1
	ja	.LBB0_5
# %bb.4:
	xorpd	%xmm2, %xmm2
	ucomisd	%xmm1, %xmm2
	jbe	.LBB0_6
.LBB0_5:
	movsd	%xmm2, 8(%rax)
.LBB0_6:
	movsd	.LCPI0_6(%rip), %xmm1           # xmm1 = [1.0E+0,0.0E+0]
	ucomisd	%xmm1, %xmm0
	ja	.LBB0_8
# %bb.7:
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB0_9
.LBB0_8:
	movsd	%xmm1, 16(%rax)
.LBB0_9:
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	color_xyz_to_rgb, .Lfunc_end0-color_xyz_to_rgb
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function color_lab_to_rgb
.LCPI1_0:
	.quad	0x4059000000000000              # double 100
.LCPI1_1:
	.quad	0x406fe00000000000              # double 255
.LCPI1_2:
	.quad	0xc060000000000000              # double -128
.LCPI1_3:
	.quad	0x4030000000000000              # double 16
.LCPI1_4:
	.quad	0x407f400000000000              # double 500
.LCPI1_6:
	.quad	0xbfc1a7b9611a7b96              # double -0.13793103448275862
.LCPI1_7:
	.quad	0x3fc07004ded20922              # double 0.12841854934601665
.LCPI1_8:
	.quad	0x3fca7b9611a7b961              # double 0.20689655172413793
.LCPI1_9:
	.quad	0x3fee6a67e846a5d7              # double 0.95048900000000003
.LCPI1_10:
	.quad	0x3ff16be37de939eb              # double 1.08884
.LCPI1_14:
	.quad	0xbfca1d5d0818d336              # double -0.20402110000000001
.LCPI1_15:
	.quad	0x3fac8608c31d20a2              # double 0.055710099999999999
.LCPI1_16:
	.quad	0x3ff0e974886818ee              # double 1.0569959
.LCPI1_17:
	.quad	0x3ff0000000000000              # double 1
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI1_5:
	.quad	0x405d000000000000              # double 116
	.quad	0x4069000000000000              # double 200
.LCPI1_11:
	.quad	0xbff898676a7264a1              # double -1.5372079999999999
	.quad	0x3ffe0318d40c5c2f              # double 1.8757561
.LCPI1_12:
	.quad	0x4009eccd0fe8ab50              # double 3.2406255000000002
	.quad	0xbfef017af492e474              # double -0.96893070000000003
.LCPI1_13:
	.quad	0xbfdfe987ee766ac0              # double -0.49862859999999998
	.quad	0x3fa541c8216c6152              # double 0.041517499999999999
	.text
	.globl	color_lab_to_rgb
	.p2align	4
	.type	color_lab_to_rgb,@function
color_lab_to_rgb:                       # @color_lab_to_rgb
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movsd	16(%rbp), %xmm1                 # xmm1 = mem[0],zero
	mulsd	.LCPI1_0(%rip), %xmm1
	movsd	.LCPI1_1(%rip), %xmm0           # xmm0 = [2.55E+2,0.0E+0]
	movsd	24(%rbp), %xmm4                 # xmm4 = mem[0],zero
	mulsd	%xmm0, %xmm4
	movsd	.LCPI1_2(%rip), %xmm2           # xmm2 = [-1.28E+2,0.0E+0]
	addsd	%xmm2, %xmm4
	mulsd	32(%rbp), %xmm0
	addsd	.LCPI1_3(%rip), %xmm1
	addsd	%xmm2, %xmm0
	unpcklpd	%xmm0, %xmm1                    # xmm1 = xmm1[0],xmm0[0]
	divsd	.LCPI1_4(%rip), %xmm4
	divpd	.LCPI1_5(%rip), %xmm1
	addsd	%xmm1, %xmm4
	movapd	%xmm4, %xmm6
	mulsd	%xmm4, %xmm6
	mulsd	%xmm4, %xmm6
	movsd	.LCPI1_6(%rip), %xmm3           # xmm3 = [-1.3793103448275862E-1,0.0E+0]
	movsd	.LCPI1_8(%rip), %xmm0           # xmm0 = [2.0689655172413793E-1,0.0E+0]
	movapd	%xmm0, %xmm2
	cmpltsd	%xmm4, %xmm2
	addsd	%xmm3, %xmm4
	movsd	.LCPI1_7(%rip), %xmm5           # xmm5 = [1.2841854934601665E-1,0.0E+0]
	mulsd	%xmm5, %xmm4
	andpd	%xmm2, %xmm6
	andnpd	%xmm4, %xmm2
	orpd	%xmm6, %xmm2
	mulsd	.LCPI1_9(%rip), %xmm2
	movapd	%xmm1, %xmm6
	mulsd	%xmm1, %xmm6
	mulsd	%xmm1, %xmm6
	movapd	%xmm1, %xmm7
	addsd	%xmm3, %xmm7
	mulsd	%xmm5, %xmm7
	movapd	%xmm0, %xmm4
	cmpltsd	%xmm1, %xmm4
	andpd	%xmm4, %xmm6
	andnpd	%xmm7, %xmm4
	orpd	%xmm6, %xmm4
	movapd	%xmm1, %xmm6
	unpckhpd	%xmm1, %xmm6                    # xmm6 = xmm6[1],xmm1[1]
	subsd	%xmm6, %xmm1
	movapd	%xmm1, %xmm6
	mulsd	%xmm1, %xmm6
	mulsd	%xmm1, %xmm6
	addsd	%xmm1, %xmm3
	mulsd	%xmm5, %xmm3
	cmpltsd	%xmm1, %xmm0
	andpd	%xmm0, %xmm6
	andnpd	%xmm3, %xmm0
	orpd	%xmm6, %xmm0
	mulsd	.LCPI1_10(%rip), %xmm0
	movapd	%xmm4, %xmm1
	unpcklpd	%xmm4, %xmm1                    # xmm1 = xmm1[0],xmm4[0]
	mulpd	.LCPI1_11(%rip), %xmm1
	movapd	%xmm2, %xmm3
	unpcklpd	%xmm2, %xmm3                    # xmm3 = xmm3[0],xmm2[0]
	mulpd	.LCPI1_12(%rip), %xmm3
	movq	%rdi, %rax
	addpd	%xmm1, %xmm3
	movapd	%xmm0, %xmm1
	unpcklpd	%xmm0, %xmm1                    # xmm1 = xmm1[0],xmm0[0]
	mulpd	.LCPI1_13(%rip), %xmm1
	addpd	%xmm3, %xmm1
	movupd	%xmm1, (%rdi)
	mulsd	.LCPI1_14(%rip), %xmm4
	mulsd	.LCPI1_15(%rip), %xmm2
	addsd	%xmm4, %xmm2
	mulsd	.LCPI1_16(%rip), %xmm0
	addsd	%xmm2, %xmm0
	movsd	%xmm0, 16(%rdi)
	movsd	.LCPI1_17(%rip), %xmm2          # xmm2 = [1.0E+0,0.0E+0]
	ucomisd	%xmm2, %xmm1
	ja	.LBB1_2
# %bb.1:
	xorpd	%xmm2, %xmm2
	ucomisd	%xmm1, %xmm2
	jbe	.LBB1_3
.LBB1_2:
	movsd	%xmm2, (%rax)
.LBB1_3:
	unpckhpd	%xmm1, %xmm1                    # xmm1 = xmm1[1,1]
	movsd	.LCPI1_17(%rip), %xmm2          # xmm2 = [1.0E+0,0.0E+0]
	ucomisd	%xmm2, %xmm1
	ja	.LBB1_5
# %bb.4:
	xorpd	%xmm2, %xmm2
	ucomisd	%xmm1, %xmm2
	jbe	.LBB1_6
.LBB1_5:
	movsd	%xmm2, 8(%rax)
.LBB1_6:
	movsd	.LCPI1_17(%rip), %xmm1          # xmm1 = [1.0E+0,0.0E+0]
	ucomisd	%xmm1, %xmm0
	ja	.LBB1_8
# %bb.7:
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB1_9
.LBB1_8:
	movsd	%xmm1, 16(%rax)
.LBB1_9:
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	color_lab_to_rgb, .Lfunc_end1-color_lab_to_rgb
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function color_lab_to_xyz
.LCPI2_0:
	.quad	0x4059000000000000              # double 100
.LCPI2_1:
	.quad	0x406fe00000000000              # double 255
.LCPI2_2:
	.quad	0xc060000000000000              # double -128
.LCPI2_3:
	.quad	0x4030000000000000              # double 16
.LCPI2_4:
	.quad	0x407f400000000000              # double 500
.LCPI2_6:
	.quad	0xbfc1a7b9611a7b96              # double -0.13793103448275862
.LCPI2_7:
	.quad	0x3fc07004ded20922              # double 0.12841854934601665
.LCPI2_8:
	.quad	0x3fca7b9611a7b961              # double 0.20689655172413793
.LCPI2_9:
	.quad	0x3fee6a67e846a5d7              # double 0.95048900000000003
.LCPI2_10:
	.quad	0x3ff16be37de939eb              # double 1.08884
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI2_5:
	.quad	0x405d000000000000              # double 116
	.quad	0x4069000000000000              # double 200
	.text
	.globl	color_lab_to_xyz
	.p2align	4
	.type	color_lab_to_xyz,@function
color_lab_to_xyz:                       # @color_lab_to_xyz
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, %rax
	movsd	16(%rbp), %xmm0                 # xmm0 = mem[0],zero
	mulsd	.LCPI2_0(%rip), %xmm0
	movsd	.LCPI2_1(%rip), %xmm1           # xmm1 = [2.55E+2,0.0E+0]
	movsd	24(%rbp), %xmm3                 # xmm3 = mem[0],zero
	mulsd	%xmm1, %xmm3
	movsd	.LCPI2_2(%rip), %xmm2           # xmm2 = [-1.28E+2,0.0E+0]
	addsd	%xmm2, %xmm3
	mulsd	32(%rbp), %xmm1
	addsd	.LCPI2_3(%rip), %xmm0
	addsd	%xmm2, %xmm1
	unpcklpd	%xmm1, %xmm0                    # xmm0 = xmm0[0],xmm1[0]
	divsd	.LCPI2_4(%rip), %xmm3
	divpd	.LCPI2_5(%rip), %xmm0
	addsd	%xmm0, %xmm3
	movapd	%xmm3, %xmm4
	mulsd	%xmm3, %xmm4
	mulsd	%xmm3, %xmm4
	movsd	.LCPI2_6(%rip), %xmm1           # xmm1 = [-1.3793103448275862E-1,0.0E+0]
	movsd	.LCPI2_8(%rip), %xmm2           # xmm2 = [2.0689655172413793E-1,0.0E+0]
	movapd	%xmm2, %xmm5
	cmpltsd	%xmm3, %xmm5
	movapd	%xmm3, %xmm6
	addsd	%xmm1, %xmm6
	movsd	.LCPI2_7(%rip), %xmm3           # xmm3 = [1.2841854934601665E-1,0.0E+0]
	mulsd	%xmm3, %xmm6
	andpd	%xmm5, %xmm4
	andnpd	%xmm6, %xmm5
	orpd	%xmm4, %xmm5
	mulsd	.LCPI2_9(%rip), %xmm5
	movsd	%xmm5, (%rdi)
	movapd	%xmm0, %xmm4
	mulsd	%xmm0, %xmm4
	mulsd	%xmm0, %xmm4
	movapd	%xmm0, %xmm5
	addsd	%xmm1, %xmm5
	mulsd	%xmm3, %xmm5
	movapd	%xmm2, %xmm6
	cmpltsd	%xmm0, %xmm6
	andpd	%xmm6, %xmm4
	andnpd	%xmm5, %xmm6
	orpd	%xmm4, %xmm6
	movlpd	%xmm6, 8(%rdi)
	movapd	%xmm0, %xmm4
	unpckhpd	%xmm0, %xmm4                    # xmm4 = xmm4[1],xmm0[1]
	subsd	%xmm4, %xmm0
	movapd	%xmm0, %xmm4
	mulsd	%xmm0, %xmm4
	mulsd	%xmm0, %xmm4
	addsd	%xmm0, %xmm1
	mulsd	%xmm3, %xmm1
	cmpltsd	%xmm0, %xmm2
	andpd	%xmm2, %xmm4
	andnpd	%xmm1, %xmm2
	orpd	%xmm4, %xmm2
	mulsd	.LCPI2_10(%rip), %xmm2
	movsd	%xmm2, 16(%rdi)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	color_lab_to_xyz, .Lfunc_end2-color_lab_to_xyz
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function color_lch_to_rgb
.LCPI3_0:
	.quad	0x3ff0000000000000              # double 1
.LCPI3_1:
	.quad	0x400921fb54442d18              # double 3.1415926535897931
.LCPI3_2:
	.quad	0x4060000000000000              # double 128
.LCPI3_3:
	.quad	0x406fe00000000000              # double 255
.LCPI3_4:
	.quad	0x4059000000000000              # double 100
.LCPI3_5:
	.quad	0xc060000000000000              # double -128
.LCPI3_6:
	.quad	0x4030000000000000              # double 16
.LCPI3_7:
	.quad	0x407f400000000000              # double 500
.LCPI3_9:
	.quad	0xbfc1a7b9611a7b96              # double -0.13793103448275862
.LCPI3_10:
	.quad	0x3fc07004ded20922              # double 0.12841854934601665
.LCPI3_11:
	.quad	0x3fca7b9611a7b961              # double 0.20689655172413793
.LCPI3_12:
	.quad	0x3fee6a67e846a5d7              # double 0.95048900000000003
.LCPI3_13:
	.quad	0x3ff16be37de939eb              # double 1.08884
.LCPI3_17:
	.quad	0xbfca1d5d0818d336              # double -0.20402110000000001
.LCPI3_18:
	.quad	0x3fac8608c31d20a2              # double 0.055710099999999999
.LCPI3_19:
	.quad	0x3ff0e974886818ee              # double 1.0569959
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI3_8:
	.quad	0x405d000000000000              # double 116
	.quad	0x4069000000000000              # double 200
.LCPI3_14:
	.quad	0xbff898676a7264a1              # double -1.5372079999999999
	.quad	0x3ffe0318d40c5c2f              # double 1.8757561
.LCPI3_15:
	.quad	0x4009eccd0fe8ab50              # double 3.2406255000000002
	.quad	0xbfef017af492e474              # double -0.96893070000000003
.LCPI3_16:
	.quad	0xbfdfe987ee766ac0              # double -0.49862859999999998
	.quad	0x3fa541c8216c6152              # double 0.041517499999999999
	.text
	.globl	color_lch_to_rgb
	.p2align	4
	.type	color_lch_to_rgb,@function
color_lch_to_rgb:                       # @color_lch_to_rgb
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movsd	16(%rbp), %xmm0                 # xmm0 = mem[0],zero
	movaps	%xmm0, -48(%rbp)                # 16-byte Spill
	movsd	24(%rbp), %xmm1                 # xmm1 = mem[0],zero
	movsd	32(%rbp), %xmm2                 # xmm2 = mem[0],zero
	movsd	.LCPI3_0(%rip), %xmm0           # xmm0 = [1.0E+0,0.0E+0]
	subsd	%xmm1, %xmm0
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -16(%rbp)                # 8-byte Spill
	movapd	%xmm2, %xmm0
	mulsd	.LCPI3_1(%rip), %xmm0
	addsd	%xmm0, %xmm0
	movsd	%xmm0, -24(%rbp)                # 8-byte Spill
	callq	cos@PLT
	mulsd	-16(%rbp), %xmm0                # 8-byte Folded Reload
	movsd	%xmm0, -32(%rbp)                # 8-byte Spill
	movsd	-24(%rbp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sin@PLT
	mulsd	-16(%rbp), %xmm0                # 8-byte Folded Reload
	movsd	.LCPI3_2(%rip), %xmm1           # xmm1 = [1.28E+2,0.0E+0]
	movsd	-32(%rbp), %xmm3                # 8-byte Reload
                                        # xmm3 = mem[0],zero
	addsd	%xmm1, %xmm3
	movsd	.LCPI3_3(%rip), %xmm2           # xmm2 = [2.55E+2,0.0E+0]
	divsd	%xmm2, %xmm3
	addsd	%xmm1, %xmm0
	divsd	%xmm2, %xmm0
	movapd	-48(%rbp), %xmm6                # 16-byte Reload
	mulsd	.LCPI3_4(%rip), %xmm6
	mulsd	%xmm2, %xmm3
	movsd	.LCPI3_5(%rip), %xmm1           # xmm1 = [-1.28E+2,0.0E+0]
	addsd	%xmm1, %xmm3
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	addsd	.LCPI3_6(%rip), %xmm6
	divsd	.LCPI3_7(%rip), %xmm3
	unpcklpd	%xmm0, %xmm6                    # xmm6 = xmm6[0],xmm0[0]
	divpd	.LCPI3_8(%rip), %xmm6
	movapd	%xmm3, %xmm0
	addsd	%xmm6, %xmm0
	movapd	%xmm0, %xmm2
	mulsd	%xmm0, %xmm2
	mulsd	%xmm0, %xmm2
	movsd	.LCPI3_9(%rip), %xmm3           # xmm3 = [-1.3793103448275862E-1,0.0E+0]
	movapd	%xmm0, %xmm5
	movapd	%xmm0, %xmm7
	addsd	%xmm3, %xmm5
	movsd	.LCPI3_10(%rip), %xmm4          # xmm4 = [1.2841854934601665E-1,0.0E+0]
	mulsd	%xmm4, %xmm5
	movsd	.LCPI3_11(%rip), %xmm0          # xmm0 = [2.0689655172413793E-1,0.0E+0]
	movapd	%xmm0, %xmm1
	cmpltsd	%xmm7, %xmm1
	andpd	%xmm1, %xmm2
	andnpd	%xmm5, %xmm1
	orpd	%xmm2, %xmm1
	mulsd	.LCPI3_12(%rip), %xmm1
	movapd	%xmm6, %xmm5
	mulsd	%xmm6, %xmm5
	mulsd	%xmm6, %xmm5
	movapd	%xmm6, %xmm7
	addsd	%xmm3, %xmm6
	mulsd	%xmm4, %xmm6
	movapd	%xmm0, %xmm2
	cmpltsd	%xmm7, %xmm2
	andpd	%xmm2, %xmm5
	andnpd	%xmm6, %xmm2
	orpd	%xmm5, %xmm2
	movapd	%xmm7, %xmm6
	movapd	%xmm7, %xmm5
	unpckhpd	%xmm7, %xmm5                    # xmm5 = xmm5[1],xmm7[1]
	subsd	%xmm5, %xmm6
	movapd	%xmm6, %xmm5
	mulsd	%xmm6, %xmm5
	mulsd	%xmm6, %xmm5
	addsd	%xmm6, %xmm3
	mulsd	%xmm4, %xmm3
	cmpltsd	%xmm6, %xmm0
	andpd	%xmm0, %xmm5
	andnpd	%xmm3, %xmm0
	orpd	%xmm5, %xmm0
	mulsd	.LCPI3_13(%rip), %xmm0
	movapd	%xmm2, %xmm3
	unpcklpd	%xmm2, %xmm3                    # xmm3 = xmm3[0],xmm2[0]
	mulpd	.LCPI3_14(%rip), %xmm3
	movapd	%xmm1, %xmm4
	unpcklpd	%xmm1, %xmm4                    # xmm4 = xmm4[0],xmm1[0]
	mulpd	.LCPI3_15(%rip), %xmm4
	addpd	%xmm3, %xmm4
	movapd	%xmm0, %xmm3
	unpcklpd	%xmm0, %xmm3                    # xmm3 = xmm3[0],xmm0[0]
	mulpd	.LCPI3_16(%rip), %xmm3
	addpd	%xmm4, %xmm3
	mulsd	.LCPI3_17(%rip), %xmm2
	mulsd	.LCPI3_18(%rip), %xmm1
	movupd	%xmm3, (%rbx)
	addsd	%xmm2, %xmm1
	mulsd	.LCPI3_19(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movsd	.LCPI3_0(%rip), %xmm1           # xmm1 = [1.0E+0,0.0E+0]
	movsd	%xmm0, 16(%rbx)
	ucomisd	%xmm1, %xmm3
	ja	.LBB3_2
# %bb.1:
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm3, %xmm1
	jbe	.LBB3_3
.LBB3_2:
	movsd	%xmm1, (%rbx)
.LBB3_3:
	unpckhpd	%xmm3, %xmm3                    # xmm3 = xmm3[1,1]
	movsd	.LCPI3_0(%rip), %xmm1           # xmm1 = [1.0E+0,0.0E+0]
	ucomisd	%xmm1, %xmm3
	ja	.LBB3_5
# %bb.4:
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm3, %xmm1
	jbe	.LBB3_6
.LBB3_5:
	movsd	%xmm1, 8(%rbx)
.LBB3_6:
	movsd	.LCPI3_0(%rip), %xmm1           # xmm1 = [1.0E+0,0.0E+0]
	ucomisd	%xmm1, %xmm0
	ja	.LBB3_8
# %bb.7:
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB3_9
.LBB3_8:
	movsd	%xmm1, 16(%rbx)
.LBB3_9:
	movq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end3:
	.size	color_lch_to_rgb, .Lfunc_end3-color_lch_to_rgb
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function color_lch_to_lab
.LCPI4_0:
	.quad	0x3ff0000000000000              # double 1
.LCPI4_1:
	.quad	0x400921fb54442d18              # double 3.1415926535897931
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI4_2:
	.quad	0x4060000000000000              # double 128
	.quad	0x4060000000000000              # double 128
.LCPI4_3:
	.quad	0x406fe00000000000              # double 255
	.quad	0x406fe00000000000              # double 255
	.text
	.globl	color_lch_to_lab
	.p2align	4
	.type	color_lch_to_lab,@function
color_lch_to_lab:                       # @color_lch_to_lab
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movsd	16(%rbp), %xmm0                 # xmm0 = mem[0],zero
	movsd	24(%rbp), %xmm2                 # xmm2 = mem[0],zero
	movsd	.LCPI4_0(%rip), %xmm1           # xmm1 = [1.0E+0,0.0E+0]
	subsd	%xmm2, %xmm1
	divsd	%xmm1, %xmm2
	movapd	%xmm2, -48(%rbp)                # 16-byte Spill
	movsd	%xmm0, (%rdi)
	movsd	32(%rbp), %xmm0                 # xmm0 = mem[0],zero
	mulsd	.LCPI4_1(%rip), %xmm0
	addsd	%xmm0, %xmm0
	movsd	%xmm0, -16(%rbp)                # 8-byte Spill
	callq	cos@PLT
	movapd	%xmm0, -32(%rbp)                # 16-byte Spill
	movsd	-16(%rbp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sin@PLT
	movapd	-48(%rbp), %xmm1                # 16-byte Reload
	unpcklpd	%xmm1, %xmm1                    # xmm1 = xmm1[0,0]
	movapd	-32(%rbp), %xmm2                # 16-byte Reload
	unpcklpd	%xmm0, %xmm2                    # xmm2 = xmm2[0],xmm0[0]
	mulpd	%xmm1, %xmm2
	addpd	.LCPI4_2(%rip), %xmm2
	divpd	.LCPI4_3(%rip), %xmm2
	movupd	%xmm2, 8(%rbx)
	movq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end4:
	.size	color_lch_to_lab, .Lfunc_end4-color_lch_to_lab
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function color_oklab_to_rgb
.LCPI5_0:
	.quad	0x3fd94c20e68dfa67              # double 0.39527151599023685
.LCPI5_1:
	.quad	0x3ff0295facdb51a2              # double 1.0101010086264997
.LCPI5_2:
	.quad	0x3fcb8a528c8fe853              # double 0.21515876639733963
.LCPI5_3:
	.quad	0xbfbb4bf29662f1fb              # double -0.10662761851830986
.LCPI5_4:
	.quad	0x3ff0295fafaf6395              # double 1.0101010191631066
.LCPI5_5:
	.quad	0xbfb08304727cad52              # double -0.064499166441853079
.LCPI5_6:
	.quad	0xbfb72e50993390f6              # double -0.090550458338444744
.LCPI5_7:
	.quad	0x3ff0295fbc19e22a              # double 1.0101010654162885
.LCPI5_8:
	.quad	0xbff4ac910fea3bac              # double -1.2921305295637735
.LCPI5_9:
	.quad	0x4008000000000000              # double 3
.LCPI5_10:
	.quad	0xbfe1d97f58537d01              # double -0.55779998065182224
.LCPI5_11:
	.quad	0x3ff3a1d946a3a87f              # double 1.2270138511035211
.LCPI5_12:
	.quad	0x3fd20019ca670854              # double 0.28125614896646778
.LCPI5_13:
	.quad	0x3ff1cbcddbfc1706              # double 1.11225686961683
.LCPI5_14:
	.quad	0xbfa4c6ecd6633e58              # double -0.0405801784232806
.LCPI5_15:
	.quad	0xbfb259671ec13146              # double -0.071676678665601207
.LCPI5_16:
	.quad	0xbfdaf98f8c4a28d4              # double -0.4214819784180126
.LCPI5_17:
	.quad	0xbfb38db94efa7dd7              # double -0.076381284505706901
.LCPI5_18:
	.quad	0x3ff960ecaf5e947d              # double 1.5861632204407947
.LCPI5_22:
	.quad	0xbfca1d5d0818d336              # double -0.20402110000000001
.LCPI5_23:
	.quad	0x3fac8608c31d20a2              # double 0.055710099999999999
.LCPI5_24:
	.quad	0x3ff0e974886818ee              # double 1.0569959
.LCPI5_25:
	.quad	0x3ff0000000000000              # double 1
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI5_19:
	.quad	0xbff898676a7264a1              # double -1.5372079999999999
	.quad	0x3ffe0318d40c5c2f              # double 1.8757561
.LCPI5_20:
	.quad	0x4009eccd0fe8ab50              # double 3.2406255000000002
	.quad	0xbfef017af492e474              # double -0.96893070000000003
.LCPI5_21:
	.quad	0xbfdfe987ee766ac0              # double -0.49862859999999998
	.quad	0x3fa541c8216c6152              # double 0.041517499999999999
	.text
	.globl	color_oklab_to_rgb
	.p2align	4
	.type	color_oklab_to_rgb,@function
color_oklab_to_rgb:                     # @color_oklab_to_rgb
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movsd	16(%rbp), %xmm1                 # xmm1 = mem[0],zero
	movsd	24(%rbp), %xmm2                 # xmm2 = mem[0],zero
	movsd	32(%rbp), %xmm5                 # xmm5 = mem[0],zero
	movsd	.LCPI5_0(%rip), %xmm0           # xmm0 = [3.9527151599023685E-1,0.0E+0]
	mulsd	%xmm2, %xmm0
	movsd	.LCPI5_1(%rip), %xmm3           # xmm3 = [1.0101010086264997E+0,0.0E+0]
	mulsd	%xmm1, %xmm3
	addsd	%xmm0, %xmm3
	movsd	.LCPI5_2(%rip), %xmm0           # xmm0 = [2.1515876639733963E-1,0.0E+0]
	mulsd	%xmm5, %xmm0
	addsd	%xmm3, %xmm0
	movsd	.LCPI5_3(%rip), %xmm3           # xmm3 = [-1.0662761851830986E-1,0.0E+0]
	mulsd	%xmm2, %xmm3
	movsd	.LCPI5_4(%rip), %xmm4           # xmm4 = [1.0101010191631066E+0,0.0E+0]
	mulsd	%xmm1, %xmm4
	addsd	%xmm3, %xmm4
	movsd	.LCPI5_5(%rip), %xmm3           # xmm3 = [-6.4499166441853079E-2,0.0E+0]
	mulsd	%xmm5, %xmm3
	addsd	%xmm4, %xmm3
	movsd	%xmm3, -16(%rbp)                # 8-byte Spill
	mulsd	.LCPI5_6(%rip), %xmm2
	mulsd	.LCPI5_7(%rip), %xmm1
	addsd	%xmm2, %xmm1
	mulsd	.LCPI5_8(%rip), %xmm5
	addsd	%xmm1, %xmm5
	movsd	%xmm5, -24(%rbp)                # 8-byte Spill
	movsd	.LCPI5_9(%rip), %xmm1           # xmm1 = [3.0E+0,0.0E+0]
	callq	pow@PLT
	movsd	%xmm0, -32(%rbp)                # 8-byte Spill
	movsd	-16(%rbp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI5_9(%rip), %xmm1           # xmm1 = [3.0E+0,0.0E+0]
	callq	pow@PLT
	movsd	%xmm0, -16(%rbp)                # 8-byte Spill
	movsd	-24(%rbp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI5_9(%rip), %xmm1           # xmm1 = [3.0E+0,0.0E+0]
	callq	pow@PLT
	movsd	.LCPI5_10(%rip), %xmm1          # xmm1 = [-5.5779998065182224E-1,0.0E+0]
	movsd	-16(%rbp), %xmm6                # 8-byte Reload
                                        # xmm6 = mem[0],zero
	mulsd	%xmm6, %xmm1
	movsd	.LCPI5_11(%rip), %xmm2          # xmm2 = [1.2270138511035211E+0,0.0E+0]
	movsd	-32(%rbp), %xmm5                # 8-byte Reload
                                        # xmm5 = mem[0],zero
	mulsd	%xmm5, %xmm2
	addsd	%xmm1, %xmm2
	movsd	.LCPI5_12(%rip), %xmm1          # xmm1 = [2.8125614896646778E-1,0.0E+0]
	mulsd	%xmm0, %xmm1
	addsd	%xmm2, %xmm1
	movsd	.LCPI5_13(%rip), %xmm2          # xmm2 = [1.11225686961683E+0,0.0E+0]
	mulsd	%xmm6, %xmm2
	movsd	.LCPI5_14(%rip), %xmm4          # xmm4 = [-4.05801784232806E-2,0.0E+0]
	mulsd	%xmm5, %xmm4
	addsd	%xmm2, %xmm4
	movsd	.LCPI5_15(%rip), %xmm3          # xmm3 = [-7.1676678665601207E-2,0.0E+0]
	mulsd	%xmm0, %xmm3
	mulsd	.LCPI5_16(%rip), %xmm6
	movapd	%xmm5, %xmm2
	mulsd	.LCPI5_17(%rip), %xmm2
	addsd	%xmm4, %xmm3
	addsd	%xmm6, %xmm2
	movapd	%xmm2, %xmm5
	mulsd	.LCPI5_18(%rip), %xmm0
	movapd	%xmm3, %xmm2
	unpcklpd	%xmm3, %xmm2                    # xmm2 = xmm2[0],xmm3[0]
	mulpd	.LCPI5_19(%rip), %xmm2
	movapd	%xmm1, %xmm4
	unpcklpd	%xmm1, %xmm4                    # xmm4 = xmm4[0],xmm1[0]
	mulpd	.LCPI5_20(%rip), %xmm4
	addsd	%xmm5, %xmm0
	addpd	%xmm2, %xmm4
	movapd	%xmm0, %xmm2
	unpcklpd	%xmm0, %xmm2                    # xmm2 = xmm2[0],xmm0[0]
	mulpd	.LCPI5_21(%rip), %xmm2
	addpd	%xmm4, %xmm2
	movupd	%xmm2, (%rbx)
	mulsd	.LCPI5_22(%rip), %xmm3
	mulsd	.LCPI5_23(%rip), %xmm1
	addsd	%xmm3, %xmm1
	mulsd	.LCPI5_24(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 16(%rbx)
	movsd	.LCPI5_25(%rip), %xmm1          # xmm1 = [1.0E+0,0.0E+0]
	ucomisd	%xmm1, %xmm2
	ja	.LBB5_2
# %bb.1:
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm2, %xmm1
	jbe	.LBB5_3
.LBB5_2:
	movsd	%xmm1, (%rbx)
.LBB5_3:
	unpckhpd	%xmm2, %xmm2                    # xmm2 = xmm2[1,1]
	movsd	.LCPI5_25(%rip), %xmm1          # xmm1 = [1.0E+0,0.0E+0]
	ucomisd	%xmm1, %xmm2
	ja	.LBB5_5
# %bb.4:
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm2, %xmm1
	jbe	.LBB5_6
.LBB5_5:
	movsd	%xmm1, 8(%rbx)
.LBB5_6:
	movsd	.LCPI5_25(%rip), %xmm1          # xmm1 = [1.0E+0,0.0E+0]
	ucomisd	%xmm1, %xmm0
	ja	.LBB5_8
# %bb.7:
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB5_9
.LBB5_8:
	movsd	%xmm1, 16(%rbx)
.LBB5_9:
	movq	%rbx, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end5:
	.size	color_oklab_to_rgb, .Lfunc_end5-color_oklab_to_rgb
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function color_oklab_to_xyz
.LCPI6_0:
	.quad	0x3fd94c20e68dfa67              # double 0.39527151599023685
.LCPI6_1:
	.quad	0x3ff0295facdb51a2              # double 1.0101010086264997
.LCPI6_2:
	.quad	0x3fcb8a528c8fe853              # double 0.21515876639733963
.LCPI6_3:
	.quad	0xbfbb4bf29662f1fb              # double -0.10662761851830986
.LCPI6_4:
	.quad	0x3ff0295fafaf6395              # double 1.0101010191631066
.LCPI6_5:
	.quad	0xbfb08304727cad52              # double -0.064499166441853079
.LCPI6_6:
	.quad	0xbfb72e50993390f6              # double -0.090550458338444744
.LCPI6_7:
	.quad	0x3ff0295fbc19e22a              # double 1.0101010654162885
.LCPI6_8:
	.quad	0xbff4ac910fea3bac              # double -1.2921305295637735
.LCPI6_9:
	.quad	0x4008000000000000              # double 3
.LCPI6_13:
	.quad	0xbfdaf98f8c4a28d4              # double -0.4214819784180126
.LCPI6_14:
	.quad	0xbfb38db94efa7dd7              # double -0.076381284505706901
.LCPI6_15:
	.quad	0x3ff960ecaf5e947d              # double 1.5861632204407947
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI6_10:
	.quad	0xbfe1d97f58537d01              # double -0.55779998065182224
	.quad	0x3ff1cbcddbfc1706              # double 1.11225686961683
.LCPI6_11:
	.quad	0x3ff3a1d946a3a87f              # double 1.2270138511035211
	.quad	0xbfa4c6ecd6633e58              # double -0.0405801784232806
.LCPI6_12:
	.quad	0x3fd20019ca670854              # double 0.28125614896646778
	.quad	0xbfb259671ec13146              # double -0.071676678665601207
	.text
	.globl	color_oklab_to_xyz
	.p2align	4
	.type	color_oklab_to_xyz,@function
color_oklab_to_xyz:                     # @color_oklab_to_xyz
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movsd	16(%rbp), %xmm1                 # xmm1 = mem[0],zero
	movsd	24(%rbp), %xmm2                 # xmm2 = mem[0],zero
	movsd	.LCPI6_0(%rip), %xmm0           # xmm0 = [3.9527151599023685E-1,0.0E+0]
	mulsd	%xmm2, %xmm0
	movsd	.LCPI6_1(%rip), %xmm3           # xmm3 = [1.0101010086264997E+0,0.0E+0]
	mulsd	%xmm1, %xmm3
	addsd	%xmm0, %xmm3
	movsd	32(%rbp), %xmm5                 # xmm5 = mem[0],zero
	movsd	.LCPI6_2(%rip), %xmm0           # xmm0 = [2.1515876639733963E-1,0.0E+0]
	mulsd	%xmm5, %xmm0
	addsd	%xmm3, %xmm0
	movsd	.LCPI6_3(%rip), %xmm3           # xmm3 = [-1.0662761851830986E-1,0.0E+0]
	mulsd	%xmm2, %xmm3
	movsd	.LCPI6_4(%rip), %xmm4           # xmm4 = [1.0101010191631066E+0,0.0E+0]
	mulsd	%xmm1, %xmm4
	addsd	%xmm3, %xmm4
	movsd	.LCPI6_5(%rip), %xmm3           # xmm3 = [-6.4499166441853079E-2,0.0E+0]
	mulsd	%xmm5, %xmm3
	addsd	%xmm4, %xmm3
	movsd	%xmm3, -32(%rbp)                # 8-byte Spill
	mulsd	.LCPI6_6(%rip), %xmm2
	mulsd	.LCPI6_7(%rip), %xmm1
	addsd	%xmm2, %xmm1
	mulsd	.LCPI6_8(%rip), %xmm5
	addsd	%xmm1, %xmm5
	movsd	%xmm5, -40(%rbp)                # 8-byte Spill
	movsd	.LCPI6_9(%rip), %xmm1           # xmm1 = [3.0E+0,0.0E+0]
	callq	pow@PLT
	movapd	%xmm0, -64(%rbp)                # 16-byte Spill
	movsd	-32(%rbp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI6_9(%rip), %xmm1           # xmm1 = [3.0E+0,0.0E+0]
	callq	pow@PLT
	movaps	%xmm0, -32(%rbp)                # 16-byte Spill
	movsd	-40(%rbp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI6_9(%rip), %xmm1           # xmm1 = [3.0E+0,0.0E+0]
	callq	pow@PLT
	movapd	-32(%rbp), %xmm4                # 16-byte Reload
	movapd	%xmm4, %xmm1
	unpcklpd	%xmm4, %xmm1                    # xmm1 = xmm1[0],xmm4[0]
	mulpd	.LCPI6_10(%rip), %xmm1
	movapd	-64(%rbp), %xmm3                # 16-byte Reload
	movapd	%xmm3, %xmm2
	unpcklpd	%xmm3, %xmm2                    # xmm2 = xmm2[0],xmm3[0]
	mulpd	.LCPI6_11(%rip), %xmm2
	addpd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	unpcklpd	%xmm0, %xmm1                    # xmm1 = xmm1[0],xmm0[0]
	mulpd	.LCPI6_12(%rip), %xmm1
	addpd	%xmm2, %xmm1
	movupd	%xmm1, (%rbx)
	movapd	%xmm4, %xmm2
	mulsd	.LCPI6_13(%rip), %xmm2
	movapd	%xmm3, %xmm1
	mulsd	.LCPI6_14(%rip), %xmm1
	mulsd	.LCPI6_15(%rip), %xmm0
	addsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 16(%rbx)
	movq	%rbx, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end6:
	.size	color_oklab_to_xyz, .Lfunc_end6-color_oklab_to_xyz
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function color_oklch_to_rgb
.LCPI7_0:
	.quad	0x3ff0000000000000              # double 1
.LCPI7_1:
	.quad	0x400921fb54442d18              # double 3.1415926535897931
.LCPI7_2:
	.quad	0x3fd94c20e68dfa67              # double 0.39527151599023685
.LCPI7_3:
	.quad	0x3ff0295facdb51a2              # double 1.0101010086264997
.LCPI7_4:
	.quad	0x3fcb8a528c8fe853              # double 0.21515876639733963
.LCPI7_5:
	.quad	0xbfbb4bf29662f1fb              # double -0.10662761851830986
.LCPI7_6:
	.quad	0x3ff0295fafaf6395              # double 1.0101010191631066
.LCPI7_7:
	.quad	0xbfb08304727cad52              # double -0.064499166441853079
.LCPI7_8:
	.quad	0xbfb72e50993390f6              # double -0.090550458338444744
.LCPI7_9:
	.quad	0x3ff0295fbc19e22a              # double 1.0101010654162885
.LCPI7_10:
	.quad	0xbff4ac910fea3bac              # double -1.2921305295637735
.LCPI7_11:
	.quad	0x4008000000000000              # double 3
.LCPI7_12:
	.quad	0xbfe1d97f58537d01              # double -0.55779998065182224
.LCPI7_13:
	.quad	0x3ff3a1d946a3a87f              # double 1.2270138511035211
.LCPI7_14:
	.quad	0x3fd20019ca670854              # double 0.28125614896646778
.LCPI7_15:
	.quad	0x3ff1cbcddbfc1706              # double 1.11225686961683
.LCPI7_16:
	.quad	0xbfa4c6ecd6633e58              # double -0.0405801784232806
.LCPI7_17:
	.quad	0xbfb259671ec13146              # double -0.071676678665601207
.LCPI7_18:
	.quad	0xbfdaf98f8c4a28d4              # double -0.4214819784180126
.LCPI7_19:
	.quad	0xbfb38db94efa7dd7              # double -0.076381284505706901
.LCPI7_20:
	.quad	0x3ff960ecaf5e947d              # double 1.5861632204407947
.LCPI7_24:
	.quad	0xbfca1d5d0818d336              # double -0.20402110000000001
.LCPI7_25:
	.quad	0x3fac8608c31d20a2              # double 0.055710099999999999
.LCPI7_26:
	.quad	0x3ff0e974886818ee              # double 1.0569959
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI7_21:
	.quad	0xbff898676a7264a1              # double -1.5372079999999999
	.quad	0x3ffe0318d40c5c2f              # double 1.8757561
.LCPI7_22:
	.quad	0x4009eccd0fe8ab50              # double 3.2406255000000002
	.quad	0xbfef017af492e474              # double -0.96893070000000003
.LCPI7_23:
	.quad	0xbfdfe987ee766ac0              # double -0.49862859999999998
	.quad	0x3fa541c8216c6152              # double 0.041517499999999999
	.text
	.globl	color_oklch_to_rgb
	.p2align	4
	.type	color_oklch_to_rgb,@function
color_oklch_to_rgb:                     # @color_oklch_to_rgb
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movsd	16(%rbp), %xmm0                 # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)                # 8-byte Spill
	movsd	24(%rbp), %xmm1                 # xmm1 = mem[0],zero
	movsd	32(%rbp), %xmm2                 # xmm2 = mem[0],zero
	movsd	.LCPI7_0(%rip), %xmm0           # xmm0 = [1.0E+0,0.0E+0]
	subsd	%xmm1, %xmm0
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -16(%rbp)                # 8-byte Spill
	movapd	%xmm2, %xmm0
	mulsd	.LCPI7_1(%rip), %xmm0
	addsd	%xmm0, %xmm0
	movsd	%xmm0, -40(%rbp)                # 8-byte Spill
	callq	cos@PLT
	mulsd	-16(%rbp), %xmm0                # 8-byte Folded Reload
	movsd	%xmm0, -24(%rbp)                # 8-byte Spill
	movsd	-40(%rbp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sin@PLT
	movapd	%xmm0, %xmm4
	mulsd	-16(%rbp), %xmm4                # 8-byte Folded Reload
	movsd	.LCPI7_2(%rip), %xmm0           # xmm0 = [3.9527151599023685E-1,0.0E+0]
	movsd	-24(%rbp), %xmm5                # 8-byte Reload
                                        # xmm5 = mem[0],zero
	mulsd	%xmm5, %xmm0
	movsd	.LCPI7_3(%rip), %xmm1           # xmm1 = [1.0101010086264997E+0,0.0E+0]
	movsd	-32(%rbp), %xmm3                # 8-byte Reload
                                        # xmm3 = mem[0],zero
	mulsd	%xmm3, %xmm1
	addsd	%xmm0, %xmm1
	movsd	.LCPI7_4(%rip), %xmm0           # xmm0 = [2.1515876639733963E-1,0.0E+0]
	mulsd	%xmm4, %xmm0
	addsd	%xmm1, %xmm0
	movsd	.LCPI7_5(%rip), %xmm1           # xmm1 = [-1.0662761851830986E-1,0.0E+0]
	mulsd	%xmm5, %xmm1
	movsd	.LCPI7_6(%rip), %xmm2           # xmm2 = [1.0101010191631066E+0,0.0E+0]
	mulsd	%xmm3, %xmm2
	addsd	%xmm1, %xmm2
	movsd	.LCPI7_7(%rip), %xmm1           # xmm1 = [-6.4499166441853079E-2,0.0E+0]
	mulsd	%xmm4, %xmm1
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -16(%rbp)                # 8-byte Spill
	mulsd	.LCPI7_8(%rip), %xmm5
	movapd	%xmm3, %xmm1
	mulsd	.LCPI7_9(%rip), %xmm1
	addsd	%xmm5, %xmm1
	mulsd	.LCPI7_10(%rip), %xmm4
	addsd	%xmm1, %xmm4
	movsd	%xmm4, -24(%rbp)                # 8-byte Spill
	movsd	.LCPI7_11(%rip), %xmm1          # xmm1 = [3.0E+0,0.0E+0]
	callq	pow@PLT
	movsd	%xmm0, -32(%rbp)                # 8-byte Spill
	movsd	-16(%rbp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI7_11(%rip), %xmm1          # xmm1 = [3.0E+0,0.0E+0]
	callq	pow@PLT
	movsd	%xmm0, -16(%rbp)                # 8-byte Spill
	movsd	-24(%rbp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI7_11(%rip), %xmm1          # xmm1 = [3.0E+0,0.0E+0]
	callq	pow@PLT
	movsd	.LCPI7_12(%rip), %xmm1          # xmm1 = [-5.5779998065182224E-1,0.0E+0]
	movsd	-16(%rbp), %xmm6                # 8-byte Reload
                                        # xmm6 = mem[0],zero
	mulsd	%xmm6, %xmm1
	movsd	.LCPI7_13(%rip), %xmm2          # xmm2 = [1.2270138511035211E+0,0.0E+0]
	movsd	-32(%rbp), %xmm5                # 8-byte Reload
                                        # xmm5 = mem[0],zero
	mulsd	%xmm5, %xmm2
	addsd	%xmm1, %xmm2
	movsd	.LCPI7_14(%rip), %xmm1          # xmm1 = [2.8125614896646778E-1,0.0E+0]
	mulsd	%xmm0, %xmm1
	addsd	%xmm2, %xmm1
	movsd	.LCPI7_15(%rip), %xmm2          # xmm2 = [1.11225686961683E+0,0.0E+0]
	mulsd	%xmm6, %xmm2
	movsd	.LCPI7_16(%rip), %xmm4          # xmm4 = [-4.05801784232806E-2,0.0E+0]
	mulsd	%xmm5, %xmm4
	addsd	%xmm2, %xmm4
	movsd	.LCPI7_17(%rip), %xmm3          # xmm3 = [-7.1676678665601207E-2,0.0E+0]
	mulsd	%xmm0, %xmm3
	addsd	%xmm4, %xmm3
	mulsd	.LCPI7_18(%rip), %xmm6
	movapd	%xmm5, %xmm2
	mulsd	.LCPI7_19(%rip), %xmm2
	mulsd	.LCPI7_20(%rip), %xmm0
	addsd	%xmm6, %xmm2
	addsd	%xmm2, %xmm0
	movapd	%xmm3, %xmm2
	unpcklpd	%xmm3, %xmm2                    # xmm2 = xmm2[0],xmm3[0]
	mulpd	.LCPI7_21(%rip), %xmm2
	movapd	%xmm1, %xmm4
	unpcklpd	%xmm1, %xmm4                    # xmm4 = xmm4[0],xmm1[0]
	mulpd	.LCPI7_22(%rip), %xmm4
	addpd	%xmm2, %xmm4
	movapd	%xmm0, %xmm2
	unpcklpd	%xmm0, %xmm2                    # xmm2 = xmm2[0],xmm0[0]
	mulpd	.LCPI7_23(%rip), %xmm2
	addpd	%xmm4, %xmm2
	mulsd	.LCPI7_24(%rip), %xmm3
	mulsd	.LCPI7_25(%rip), %xmm1
	movupd	%xmm2, (%rbx)
	addsd	%xmm3, %xmm1
	mulsd	.LCPI7_26(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movsd	.LCPI7_0(%rip), %xmm1           # xmm1 = [1.0E+0,0.0E+0]
	movsd	%xmm0, 16(%rbx)
	ucomisd	%xmm1, %xmm2
	ja	.LBB7_2
# %bb.1:
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm2, %xmm1
	jbe	.LBB7_3
.LBB7_2:
	movsd	%xmm1, (%rbx)
.LBB7_3:
	unpckhpd	%xmm2, %xmm2                    # xmm2 = xmm2[1,1]
	movsd	.LCPI7_0(%rip), %xmm1           # xmm1 = [1.0E+0,0.0E+0]
	ucomisd	%xmm1, %xmm2
	ja	.LBB7_5
# %bb.4:
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm2, %xmm1
	jbe	.LBB7_6
.LBB7_5:
	movsd	%xmm1, 8(%rbx)
.LBB7_6:
	movsd	.LCPI7_0(%rip), %xmm1           # xmm1 = [1.0E+0,0.0E+0]
	ucomisd	%xmm1, %xmm0
	ja	.LBB7_8
# %bb.7:
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB7_9
.LBB7_8:
	movsd	%xmm1, 16(%rbx)
.LBB7_9:
	movq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end7:
	.size	color_oklch_to_rgb, .Lfunc_end7-color_oklch_to_rgb
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function color_oklch_to_oklab
.LCPI8_0:
	.quad	0x3ff0000000000000              # double 1
.LCPI8_1:
	.quad	0x400921fb54442d18              # double 3.1415926535897931
	.text
	.globl	color_oklch_to_oklab
	.p2align	4
	.type	color_oklch_to_oklab,@function
color_oklch_to_oklab:                   # @color_oklch_to_oklab
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movsd	16(%rbp), %xmm0                 # xmm0 = mem[0],zero
	movsd	24(%rbp), %xmm2                 # xmm2 = mem[0],zero
	movsd	.LCPI8_0(%rip), %xmm1           # xmm1 = [1.0E+0,0.0E+0]
	subsd	%xmm2, %xmm1
	divsd	%xmm1, %xmm2
	movapd	%xmm2, -48(%rbp)                # 16-byte Spill
	movsd	%xmm0, (%rdi)
	movsd	32(%rbp), %xmm0                 # xmm0 = mem[0],zero
	mulsd	.LCPI8_1(%rip), %xmm0
	addsd	%xmm0, %xmm0
	movsd	%xmm0, -16(%rbp)                # 8-byte Spill
	callq	cos@PLT
	movapd	%xmm0, -32(%rbp)                # 16-byte Spill
	movsd	-16(%rbp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sin@PLT
	movapd	-48(%rbp), %xmm1                # 16-byte Reload
	unpcklpd	%xmm1, %xmm1                    # xmm1 = xmm1[0,0]
	movapd	-32(%rbp), %xmm2                # 16-byte Reload
	unpcklpd	%xmm0, %xmm2                    # xmm2 = xmm2[0],xmm0[0]
	mulpd	%xmm1, %xmm2
	movupd	%xmm2, 8(%rbx)
	movq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end8:
	.size	color_oklch_to_oklab, .Lfunc_end8-color_oklch_to_oklab
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function color_xyz_to_lab
.LCPI9_0:
	.quad	0x3f822354d28f7cd6              # double 0.0088564516790356311
.LCPI9_1:
	.quad	0x3fd5555555555555              # double 0.33333333333333331
.LCPI9_2:
	.quad	0x40375c71c71c71c7              # double 23.361111111111111
.LCPI9_3:
	.quad	0x3fc1a7b9611a7b96              # double 0.13793103448275862
.LCPI9_4:
	.quad	0x3fee6a67e846a5d7              # double 0.95048900000000003
.LCPI9_5:
	.quad	0x3ff16be37de939eb              # double 1.08884
.LCPI9_6:
	.quad	0x407f400000000000              # double 500
.LCPI9_7:
	.quad	0x405d000000000000              # double 116
.LCPI9_8:
	.quad	0xc030000000000000              # double -16
.LCPI9_9:
	.quad	0x4069000000000000              # double 200
.LCPI9_10:
	.quad	0x4060000000000000              # double 128
.LCPI9_12:
	.quad	0x406fe00000000000              # double 255
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI9_11:
	.quad	0x4059000000000000              # double 100
	.quad	0x406fe00000000000              # double 255
	.text
	.globl	color_xyz_to_lab
	.p2align	4
	.type	color_xyz_to_lab,@function
color_xyz_to_lab:                       # @color_xyz_to_lab
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$48, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rdi, %rbx
	leaq	16(%rbp), %r14
	movq	$0, 8(%rdi)
	movsd	24(%rbp), %xmm0                 # xmm0 = mem[0],zero
	ucomisd	.LCPI9_0(%rip), %xmm0
	movsd	%xmm0, -24(%rbp)                # 8-byte Spill
	jbe	.LBB9_2
# %bb.1:
	callq	cbrt@PLT
	movapd	%xmm0, -48(%rbp)                # 16-byte Spill
	movsd	(%r14), %xmm0                   # xmm0 = mem[0],zero
	divsd	.LCPI9_4(%rip), %xmm0
	ucomisd	.LCPI9_0(%rip), %xmm0
	ja	.LBB9_4
.LBB9_5:
	mulsd	.LCPI9_1(%rip), %xmm0
	mulsd	.LCPI9_2(%rip), %xmm0
	addsd	.LCPI9_3(%rip), %xmm0
	movsd	-24(%rbp), %xmm1                # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	.LCPI9_0(%rip), %xmm1
	movapd	%xmm0, -64(%rbp)                # 16-byte Spill
	ja	.LBB9_7
.LBB9_8:
	mulsd	.LCPI9_1(%rip), %xmm1
	mulsd	.LCPI9_2(%rip), %xmm1
	addsd	.LCPI9_3(%rip), %xmm1
	movsd	16(%r14), %xmm0                 # xmm0 = mem[0],zero
	divsd	.LCPI9_5(%rip), %xmm0
	ucomisd	.LCPI9_0(%rip), %xmm0
	ja	.LBB9_10
.LBB9_11:
	mulsd	.LCPI9_1(%rip), %xmm0
	mulsd	.LCPI9_2(%rip), %xmm0
	addsd	.LCPI9_3(%rip), %xmm0
	jmp	.LBB9_12
.LBB9_2:
	movsd	.LCPI9_1(%rip), %xmm1           # xmm1 = [3.3333333333333331E-1,0.0E+0]
	mulsd	%xmm0, %xmm1
	mulsd	.LCPI9_2(%rip), %xmm1
	addsd	.LCPI9_3(%rip), %xmm1
	movapd	%xmm1, -48(%rbp)                # 16-byte Spill
	movsd	(%r14), %xmm0                   # xmm0 = mem[0],zero
	divsd	.LCPI9_4(%rip), %xmm0
	ucomisd	.LCPI9_0(%rip), %xmm0
	jbe	.LBB9_5
.LBB9_4:
	callq	cbrt@PLT
	movsd	-24(%rbp), %xmm1                # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	.LCPI9_0(%rip), %xmm1
	movapd	%xmm0, -64(%rbp)                # 16-byte Spill
	jbe	.LBB9_8
.LBB9_7:
	movapd	%xmm1, %xmm0
	callq	cbrt@PLT
	movapd	%xmm0, %xmm1
	movsd	16(%r14), %xmm0                 # xmm0 = mem[0],zero
	divsd	.LCPI9_5(%rip), %xmm0
	ucomisd	.LCPI9_0(%rip), %xmm0
	jbe	.LBB9_11
.LBB9_10:
	movsd	%xmm1, -24(%rbp)                # 8-byte Spill
	callq	cbrt@PLT
	movsd	-24(%rbp), %xmm1                # 8-byte Reload
                                        # xmm1 = mem[0],zero
.LBB9_12:
	movapd	-64(%rbp), %xmm3                # 16-byte Reload
	subsd	%xmm1, %xmm3
	mulsd	.LCPI9_6(%rip), %xmm3
	movapd	-48(%rbp), %xmm2                # 16-byte Reload
	mulsd	.LCPI9_7(%rip), %xmm2
	addsd	.LCPI9_8(%rip), %xmm2
	subsd	%xmm0, %xmm1
	mulsd	.LCPI9_9(%rip), %xmm1
	movsd	.LCPI9_10(%rip), %xmm0          # xmm0 = [1.28E+2,0.0E+0]
	addsd	%xmm0, %xmm3
	unpcklpd	%xmm3, %xmm2                    # xmm2 = xmm2[0],xmm3[0]
	divpd	.LCPI9_11(%rip), %xmm2
	movupd	%xmm2, (%rbx)
	addsd	%xmm0, %xmm1
	divsd	.LCPI9_12(%rip), %xmm1
	movsd	%xmm1, 16(%rbx)
	movq	%rbx, %rax
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end9:
	.size	color_xyz_to_lab, .Lfunc_end9-color_xyz_to_lab
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function color_oklab_to_lab
.LCPI10_0:
	.quad	0x3fd94c20e68dfa67              # double 0.39527151599023685
.LCPI10_1:
	.quad	0x3ff0295facdb51a2              # double 1.0101010086264997
.LCPI10_2:
	.quad	0x3fcb8a528c8fe853              # double 0.21515876639733963
.LCPI10_3:
	.quad	0xbfbb4bf29662f1fb              # double -0.10662761851830986
.LCPI10_4:
	.quad	0x3ff0295fafaf6395              # double 1.0101010191631066
.LCPI10_5:
	.quad	0xbfb08304727cad52              # double -0.064499166441853079
.LCPI10_6:
	.quad	0xbfb72e50993390f6              # double -0.090550458338444744
.LCPI10_7:
	.quad	0x3ff0295fbc19e22a              # double 1.0101010654162885
.LCPI10_8:
	.quad	0xbff4ac910fea3bac              # double -1.2921305295637735
.LCPI10_9:
	.quad	0x4008000000000000              # double 3
.LCPI10_10:
	.quad	0xbfe1d97f58537d01              # double -0.55779998065182224
.LCPI10_11:
	.quad	0x3ff3a1d946a3a87f              # double 1.2270138511035211
.LCPI10_12:
	.quad	0x3fd20019ca670854              # double 0.28125614896646778
.LCPI10_13:
	.quad	0x3ff1cbcddbfc1706              # double 1.11225686961683
.LCPI10_14:
	.quad	0xbfa4c6ecd6633e58              # double -0.0405801784232806
.LCPI10_15:
	.quad	0xbfb259671ec13146              # double -0.071676678665601207
.LCPI10_16:
	.quad	0xbfdaf98f8c4a28d4              # double -0.4214819784180126
.LCPI10_17:
	.quad	0xbfb38db94efa7dd7              # double -0.076381284505706901
.LCPI10_18:
	.quad	0x3ff960ecaf5e947d              # double 1.5861632204407947
.LCPI10_19:
	.quad	0x3f822354d28f7cd6              # double 0.0088564516790356311
.LCPI10_20:
	.quad	0x3fd5555555555555              # double 0.33333333333333331
.LCPI10_21:
	.quad	0x40375c71c71c71c7              # double 23.361111111111111
.LCPI10_22:
	.quad	0x3fc1a7b9611a7b96              # double 0.13793103448275862
.LCPI10_23:
	.quad	0x3fee6a67e846a5d7              # double 0.95048900000000003
.LCPI10_24:
	.quad	0x3ff16be37de939eb              # double 1.08884
.LCPI10_25:
	.quad	0x407f400000000000              # double 500
.LCPI10_26:
	.quad	0x405d000000000000              # double 116
.LCPI10_27:
	.quad	0xc030000000000000              # double -16
.LCPI10_28:
	.quad	0x4069000000000000              # double 200
.LCPI10_29:
	.quad	0x4060000000000000              # double 128
.LCPI10_31:
	.quad	0x406fe00000000000              # double 255
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI10_30:
	.quad	0x4059000000000000              # double 100
	.quad	0x406fe00000000000              # double 255
	.text
	.globl	color_oklab_to_lab
	.p2align	4
	.type	color_oklab_to_lab,@function
color_oklab_to_lab:                     # @color_oklab_to_lab
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movsd	16(%rbp), %xmm1                 # xmm1 = mem[0],zero
	movsd	24(%rbp), %xmm2                 # xmm2 = mem[0],zero
	movsd	32(%rbp), %xmm5                 # xmm5 = mem[0],zero
	movsd	.LCPI10_0(%rip), %xmm0          # xmm0 = [3.9527151599023685E-1,0.0E+0]
	mulsd	%xmm2, %xmm0
	movsd	.LCPI10_1(%rip), %xmm3          # xmm3 = [1.0101010086264997E+0,0.0E+0]
	mulsd	%xmm1, %xmm3
	addsd	%xmm0, %xmm3
	movsd	.LCPI10_2(%rip), %xmm0          # xmm0 = [2.1515876639733963E-1,0.0E+0]
	mulsd	%xmm5, %xmm0
	addsd	%xmm3, %xmm0
	movsd	.LCPI10_3(%rip), %xmm3          # xmm3 = [-1.0662761851830986E-1,0.0E+0]
	mulsd	%xmm2, %xmm3
	movsd	.LCPI10_4(%rip), %xmm4          # xmm4 = [1.0101010191631066E+0,0.0E+0]
	mulsd	%xmm1, %xmm4
	addsd	%xmm3, %xmm4
	movsd	.LCPI10_5(%rip), %xmm3          # xmm3 = [-6.4499166441853079E-2,0.0E+0]
	mulsd	%xmm5, %xmm3
	addsd	%xmm4, %xmm3
	movsd	%xmm3, -24(%rbp)                # 8-byte Spill
	mulsd	.LCPI10_6(%rip), %xmm2
	mulsd	.LCPI10_7(%rip), %xmm1
	addsd	%xmm2, %xmm1
	mulsd	.LCPI10_8(%rip), %xmm5
	addsd	%xmm1, %xmm5
	movsd	%xmm5, -16(%rbp)                # 8-byte Spill
	movsd	.LCPI10_9(%rip), %xmm1          # xmm1 = [3.0E+0,0.0E+0]
	callq	pow@PLT
	movsd	%xmm0, -32(%rbp)                # 8-byte Spill
	movsd	-24(%rbp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI10_9(%rip), %xmm1          # xmm1 = [3.0E+0,0.0E+0]
	callq	pow@PLT
	movsd	%xmm0, -24(%rbp)                # 8-byte Spill
	movsd	-16(%rbp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI10_9(%rip), %xmm1          # xmm1 = [3.0E+0,0.0E+0]
	callq	pow@PLT
	movapd	%xmm0, %xmm2
	movsd	.LCPI10_10(%rip), %xmm0         # xmm0 = [-5.5779998065182224E-1,0.0E+0]
	movsd	-24(%rbp), %xmm5                # 8-byte Reload
                                        # xmm5 = mem[0],zero
	mulsd	%xmm5, %xmm0
	movsd	.LCPI10_11(%rip), %xmm1         # xmm1 = [1.2270138511035211E+0,0.0E+0]
	movsd	-32(%rbp), %xmm4                # 8-byte Reload
                                        # xmm4 = mem[0],zero
	mulsd	%xmm4, %xmm1
	addsd	%xmm0, %xmm1
	movsd	.LCPI10_12(%rip), %xmm3         # xmm3 = [2.8125614896646778E-1,0.0E+0]
	mulsd	%xmm2, %xmm3
	addsd	%xmm1, %xmm3
	movsd	.LCPI10_13(%rip), %xmm0         # xmm0 = [1.11225686961683E+0,0.0E+0]
	mulsd	%xmm5, %xmm0
	movsd	.LCPI10_14(%rip), %xmm1         # xmm1 = [-4.05801784232806E-2,0.0E+0]
	mulsd	%xmm4, %xmm1
	addsd	%xmm0, %xmm1
	movsd	.LCPI10_15(%rip), %xmm0         # xmm0 = [-7.1676678665601207E-2,0.0E+0]
	mulsd	%xmm2, %xmm0
	mulsd	.LCPI10_16(%rip), %xmm5
	movsd	%xmm5, -24(%rbp)                # 8-byte Spill
	mulsd	.LCPI10_17(%rip), %xmm4
	movsd	%xmm4, -32(%rbp)                # 8-byte Spill
	addsd	%xmm1, %xmm0
	ucomisd	.LCPI10_19(%rip), %xmm0
	movsd	%xmm0, -40(%rbp)                # 8-byte Spill
	jbe	.LBB10_2
# %bb.1:
	movsd	%xmm2, -16(%rbp)                # 8-byte Spill
	movapd	%xmm3, -64(%rbp)                # 16-byte Spill
	callq	cbrt@PLT
	movapd	-64(%rbp), %xmm3                # 16-byte Reload
	movsd	-16(%rbp), %xmm2                # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movapd	%xmm0, -80(%rbp)                # 16-byte Spill
	jmp	.LBB10_3
.LBB10_2:
	movsd	.LCPI10_20(%rip), %xmm1         # xmm1 = [3.3333333333333331E-1,0.0E+0]
	mulsd	%xmm0, %xmm1
	mulsd	.LCPI10_21(%rip), %xmm1
	addsd	.LCPI10_22(%rip), %xmm1
	movapd	%xmm1, -80(%rbp)                # 16-byte Spill
.LBB10_3:
	mulsd	.LCPI10_18(%rip), %xmm2
	divsd	.LCPI10_23(%rip), %xmm3
	movsd	-32(%rbp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	-24(%rbp), %xmm0                # 8-byte Folded Reload
	ucomisd	.LCPI10_19(%rip), %xmm3
	jbe	.LBB10_5
# %bb.4:
	movsd	%xmm0, -32(%rbp)                # 8-byte Spill
	movapd	%xmm3, %xmm0
	movsd	%xmm2, -16(%rbp)                # 8-byte Spill
	callq	cbrt@PLT
	movsd	-16(%rbp), %xmm2                # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movapd	%xmm0, %xmm3
	movsd	-32(%rbp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	jmp	.LBB10_6
.LBB10_5:
	mulsd	.LCPI10_20(%rip), %xmm3
	mulsd	.LCPI10_21(%rip), %xmm3
	addsd	.LCPI10_22(%rip), %xmm3
.LBB10_6:
	movsd	-40(%rbp), %xmm4                # 8-byte Reload
                                        # xmm4 = mem[0],zero
	addsd	%xmm0, %xmm2
	ucomisd	.LCPI10_19(%rip), %xmm4
	movapd	%xmm3, -64(%rbp)                # 16-byte Spill
	jbe	.LBB10_8
# %bb.7:
	movapd	%xmm4, %xmm0
	movsd	%xmm2, -16(%rbp)                # 8-byte Spill
	callq	cbrt@PLT
	movsd	-16(%rbp), %xmm2                # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movapd	%xmm0, %xmm4
	divsd	.LCPI10_24(%rip), %xmm2
	ucomisd	.LCPI10_19(%rip), %xmm2
	ja	.LBB10_10
.LBB10_11:
	mulsd	.LCPI10_20(%rip), %xmm2
	mulsd	.LCPI10_21(%rip), %xmm2
	addsd	.LCPI10_22(%rip), %xmm2
	jmp	.LBB10_12
.LBB10_8:
	mulsd	.LCPI10_20(%rip), %xmm4
	mulsd	.LCPI10_21(%rip), %xmm4
	addsd	.LCPI10_22(%rip), %xmm4
	divsd	.LCPI10_24(%rip), %xmm2
	ucomisd	.LCPI10_19(%rip), %xmm2
	jbe	.LBB10_11
.LBB10_10:
	movapd	%xmm2, %xmm0
	movsd	%xmm4, -40(%rbp)                # 8-byte Spill
	callq	cbrt@PLT
	movsd	-40(%rbp), %xmm4                # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movapd	%xmm0, %xmm2
.LBB10_12:
	movapd	-64(%rbp), %xmm1                # 16-byte Reload
	subsd	%xmm4, %xmm1
	mulsd	.LCPI10_25(%rip), %xmm1
	movapd	-80(%rbp), %xmm3                # 16-byte Reload
	mulsd	.LCPI10_26(%rip), %xmm3
	addsd	.LCPI10_27(%rip), %xmm3
	subsd	%xmm2, %xmm4
	mulsd	.LCPI10_28(%rip), %xmm4
	movsd	.LCPI10_29(%rip), %xmm0         # xmm0 = [1.28E+2,0.0E+0]
	addsd	%xmm0, %xmm1
	unpcklpd	%xmm1, %xmm3                    # xmm3 = xmm3[0],xmm1[0]
	divpd	.LCPI10_30(%rip), %xmm3
	movupd	%xmm3, (%rbx)
	addsd	%xmm0, %xmm4
	divsd	.LCPI10_31(%rip), %xmm4
	movsd	%xmm4, 16(%rbx)
	movq	%rbx, %rax
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end10:
	.size	color_oklab_to_lab, .Lfunc_end10-color_oklab_to_lab
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function color_oklch_to_lab
.LCPI11_0:
	.quad	0x3ff0000000000000              # double 1
.LCPI11_1:
	.quad	0x400921fb54442d18              # double 3.1415926535897931
.LCPI11_2:
	.quad	0x3fd94c20e68dfa67              # double 0.39527151599023685
.LCPI11_3:
	.quad	0x3ff0295facdb51a2              # double 1.0101010086264997
.LCPI11_4:
	.quad	0x3fcb8a528c8fe853              # double 0.21515876639733963
.LCPI11_5:
	.quad	0xbfbb4bf29662f1fb              # double -0.10662761851830986
.LCPI11_6:
	.quad	0x3ff0295fafaf6395              # double 1.0101010191631066
.LCPI11_7:
	.quad	0xbfb08304727cad52              # double -0.064499166441853079
.LCPI11_8:
	.quad	0xbfb72e50993390f6              # double -0.090550458338444744
.LCPI11_9:
	.quad	0x3ff0295fbc19e22a              # double 1.0101010654162885
.LCPI11_10:
	.quad	0xbff4ac910fea3bac              # double -1.2921305295637735
.LCPI11_11:
	.quad	0x4008000000000000              # double 3
.LCPI11_12:
	.quad	0xbfe1d97f58537d01              # double -0.55779998065182224
.LCPI11_13:
	.quad	0x3ff3a1d946a3a87f              # double 1.2270138511035211
.LCPI11_14:
	.quad	0x3fd20019ca670854              # double 0.28125614896646778
.LCPI11_15:
	.quad	0x3ff1cbcddbfc1706              # double 1.11225686961683
.LCPI11_16:
	.quad	0xbfa4c6ecd6633e58              # double -0.0405801784232806
.LCPI11_17:
	.quad	0xbfb259671ec13146              # double -0.071676678665601207
.LCPI11_18:
	.quad	0xbfdaf98f8c4a28d4              # double -0.4214819784180126
.LCPI11_19:
	.quad	0xbfb38db94efa7dd7              # double -0.076381284505706901
.LCPI11_20:
	.quad	0x3ff960ecaf5e947d              # double 1.5861632204407947
.LCPI11_21:
	.quad	0x3f822354d28f7cd6              # double 0.0088564516790356311
.LCPI11_22:
	.quad	0x3fd5555555555555              # double 0.33333333333333331
.LCPI11_23:
	.quad	0x40375c71c71c71c7              # double 23.361111111111111
.LCPI11_24:
	.quad	0x3fc1a7b9611a7b96              # double 0.13793103448275862
.LCPI11_25:
	.quad	0x3fee6a67e846a5d7              # double 0.95048900000000003
.LCPI11_26:
	.quad	0x3ff16be37de939eb              # double 1.08884
.LCPI11_27:
	.quad	0x407f400000000000              # double 500
.LCPI11_28:
	.quad	0x405d000000000000              # double 116
.LCPI11_29:
	.quad	0xc030000000000000              # double -16
.LCPI11_30:
	.quad	0x4069000000000000              # double 200
.LCPI11_31:
	.quad	0x4060000000000000              # double 128
.LCPI11_33:
	.quad	0x406fe00000000000              # double 255
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI11_32:
	.quad	0x4059000000000000              # double 100
	.quad	0x406fe00000000000              # double 255
	.text
	.globl	color_oklch_to_lab
	.p2align	4
	.type	color_oklch_to_lab,@function
color_oklch_to_lab:                     # @color_oklch_to_lab
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movsd	16(%rbp), %xmm0                 # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)                # 8-byte Spill
	movsd	24(%rbp), %xmm1                 # xmm1 = mem[0],zero
	movsd	32(%rbp), %xmm2                 # xmm2 = mem[0],zero
	movsd	.LCPI11_0(%rip), %xmm0          # xmm0 = [1.0E+0,0.0E+0]
	subsd	%xmm1, %xmm0
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -24(%rbp)                # 8-byte Spill
	movapd	%xmm2, %xmm0
	mulsd	.LCPI11_1(%rip), %xmm0
	addsd	%xmm0, %xmm0
	movsd	%xmm0, -16(%rbp)                # 8-byte Spill
	callq	cos@PLT
	mulsd	-24(%rbp), %xmm0                # 8-byte Folded Reload
	movsd	%xmm0, -64(%rbp)                # 8-byte Spill
	movsd	-16(%rbp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sin@PLT
	movapd	%xmm0, %xmm4
	mulsd	-24(%rbp), %xmm4                # 8-byte Folded Reload
	movsd	.LCPI11_2(%rip), %xmm0          # xmm0 = [3.9527151599023685E-1,0.0E+0]
	movsd	-64(%rbp), %xmm5                # 8-byte Reload
                                        # xmm5 = mem[0],zero
	mulsd	%xmm5, %xmm0
	movsd	.LCPI11_3(%rip), %xmm1          # xmm1 = [1.0101010086264997E+0,0.0E+0]
	movsd	-32(%rbp), %xmm3                # 8-byte Reload
                                        # xmm3 = mem[0],zero
	mulsd	%xmm3, %xmm1
	addsd	%xmm0, %xmm1
	movsd	.LCPI11_4(%rip), %xmm0          # xmm0 = [2.1515876639733963E-1,0.0E+0]
	mulsd	%xmm4, %xmm0
	addsd	%xmm1, %xmm0
	movsd	.LCPI11_5(%rip), %xmm1          # xmm1 = [-1.0662761851830986E-1,0.0E+0]
	mulsd	%xmm5, %xmm1
	movsd	.LCPI11_6(%rip), %xmm2          # xmm2 = [1.0101010191631066E+0,0.0E+0]
	mulsd	%xmm3, %xmm2
	addsd	%xmm1, %xmm2
	movsd	.LCPI11_7(%rip), %xmm1          # xmm1 = [-6.4499166441853079E-2,0.0E+0]
	mulsd	%xmm4, %xmm1
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -16(%rbp)                # 8-byte Spill
	mulsd	.LCPI11_8(%rip), %xmm5
	movapd	%xmm3, %xmm1
	mulsd	.LCPI11_9(%rip), %xmm1
	addsd	%xmm5, %xmm1
	mulsd	.LCPI11_10(%rip), %xmm4
	addsd	%xmm1, %xmm4
	movsd	%xmm4, -64(%rbp)                # 8-byte Spill
	movsd	.LCPI11_11(%rip), %xmm1         # xmm1 = [3.0E+0,0.0E+0]
	callq	pow@PLT
	movsd	%xmm0, -24(%rbp)                # 8-byte Spill
	movsd	-16(%rbp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI11_11(%rip), %xmm1         # xmm1 = [3.0E+0,0.0E+0]
	callq	pow@PLT
	movsd	%xmm0, -32(%rbp)                # 8-byte Spill
	movsd	-64(%rbp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI11_11(%rip), %xmm1         # xmm1 = [3.0E+0,0.0E+0]
	callq	pow@PLT
	movapd	%xmm0, %xmm2
	movsd	.LCPI11_12(%rip), %xmm0         # xmm0 = [-5.5779998065182224E-1,0.0E+0]
	movsd	-32(%rbp), %xmm5                # 8-byte Reload
                                        # xmm5 = mem[0],zero
	mulsd	%xmm5, %xmm0
	movsd	.LCPI11_13(%rip), %xmm1         # xmm1 = [1.2270138511035211E+0,0.0E+0]
	movsd	-24(%rbp), %xmm4                # 8-byte Reload
                                        # xmm4 = mem[0],zero
	mulsd	%xmm4, %xmm1
	addsd	%xmm0, %xmm1
	movsd	.LCPI11_14(%rip), %xmm3         # xmm3 = [2.8125614896646778E-1,0.0E+0]
	mulsd	%xmm2, %xmm3
	addsd	%xmm1, %xmm3
	movsd	.LCPI11_15(%rip), %xmm0         # xmm0 = [1.11225686961683E+0,0.0E+0]
	mulsd	%xmm5, %xmm0
	movsd	.LCPI11_16(%rip), %xmm1         # xmm1 = [-4.05801784232806E-2,0.0E+0]
	mulsd	%xmm4, %xmm1
	addsd	%xmm0, %xmm1
	movsd	.LCPI11_17(%rip), %xmm0         # xmm0 = [-7.1676678665601207E-2,0.0E+0]
	mulsd	%xmm2, %xmm0
	mulsd	.LCPI11_18(%rip), %xmm5
	movsd	%xmm5, -32(%rbp)                # 8-byte Spill
	mulsd	.LCPI11_19(%rip), %xmm4
	movsd	%xmm4, -24(%rbp)                # 8-byte Spill
	addsd	%xmm1, %xmm0
	ucomisd	.LCPI11_21(%rip), %xmm0
	movsd	%xmm0, -40(%rbp)                # 8-byte Spill
	jbe	.LBB11_2
# %bb.1:
	movsd	%xmm2, -16(%rbp)                # 8-byte Spill
	movapd	%xmm3, -64(%rbp)                # 16-byte Spill
	callq	cbrt@PLT
	movapd	-64(%rbp), %xmm3                # 16-byte Reload
	movsd	-16(%rbp), %xmm2                # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movapd	%xmm0, -80(%rbp)                # 16-byte Spill
	jmp	.LBB11_3
.LBB11_2:
	movsd	.LCPI11_22(%rip), %xmm1         # xmm1 = [3.3333333333333331E-1,0.0E+0]
	mulsd	%xmm0, %xmm1
	mulsd	.LCPI11_23(%rip), %xmm1
	addsd	.LCPI11_24(%rip), %xmm1
	movapd	%xmm1, -80(%rbp)                # 16-byte Spill
.LBB11_3:
	mulsd	.LCPI11_20(%rip), %xmm2
	divsd	.LCPI11_25(%rip), %xmm3
	movsd	-24(%rbp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	-32(%rbp), %xmm0                # 8-byte Folded Reload
	ucomisd	.LCPI11_21(%rip), %xmm3
	jbe	.LBB11_5
# %bb.4:
	movsd	%xmm0, -24(%rbp)                # 8-byte Spill
	movapd	%xmm3, %xmm0
	movsd	%xmm2, -16(%rbp)                # 8-byte Spill
	callq	cbrt@PLT
	movsd	-16(%rbp), %xmm2                # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movapd	%xmm0, %xmm3
	movsd	-24(%rbp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	jmp	.LBB11_6
.LBB11_5:
	mulsd	.LCPI11_22(%rip), %xmm3
	mulsd	.LCPI11_23(%rip), %xmm3
	addsd	.LCPI11_24(%rip), %xmm3
.LBB11_6:
	movsd	-40(%rbp), %xmm4                # 8-byte Reload
                                        # xmm4 = mem[0],zero
	addsd	%xmm0, %xmm2
	ucomisd	.LCPI11_21(%rip), %xmm4
	movapd	%xmm3, -64(%rbp)                # 16-byte Spill
	jbe	.LBB11_8
# %bb.7:
	movapd	%xmm4, %xmm0
	movsd	%xmm2, -16(%rbp)                # 8-byte Spill
	callq	cbrt@PLT
	movsd	-16(%rbp), %xmm2                # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movapd	%xmm0, %xmm4
	divsd	.LCPI11_26(%rip), %xmm2
	ucomisd	.LCPI11_21(%rip), %xmm2
	ja	.LBB11_10
.LBB11_11:
	mulsd	.LCPI11_22(%rip), %xmm2
	mulsd	.LCPI11_23(%rip), %xmm2
	addsd	.LCPI11_24(%rip), %xmm2
	jmp	.LBB11_12
.LBB11_8:
	mulsd	.LCPI11_22(%rip), %xmm4
	mulsd	.LCPI11_23(%rip), %xmm4
	addsd	.LCPI11_24(%rip), %xmm4
	divsd	.LCPI11_26(%rip), %xmm2
	ucomisd	.LCPI11_21(%rip), %xmm2
	jbe	.LBB11_11
.LBB11_10:
	movapd	%xmm2, %xmm0
	movsd	%xmm4, -40(%rbp)                # 8-byte Spill
	callq	cbrt@PLT
	movsd	-40(%rbp), %xmm4                # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movapd	%xmm0, %xmm2
.LBB11_12:
	movapd	-64(%rbp), %xmm1                # 16-byte Reload
	subsd	%xmm4, %xmm1
	mulsd	.LCPI11_27(%rip), %xmm1
	movapd	-80(%rbp), %xmm3                # 16-byte Reload
	mulsd	.LCPI11_28(%rip), %xmm3
	addsd	.LCPI11_29(%rip), %xmm3
	subsd	%xmm2, %xmm4
	mulsd	.LCPI11_30(%rip), %xmm4
	movsd	.LCPI11_31(%rip), %xmm0         # xmm0 = [1.28E+2,0.0E+0]
	addsd	%xmm0, %xmm1
	unpcklpd	%xmm1, %xmm3                    # xmm3 = xmm3[0],xmm1[0]
	divpd	.LCPI11_32(%rip), %xmm3
	movupd	%xmm3, (%rbx)
	addsd	%xmm0, %xmm4
	divsd	.LCPI11_33(%rip), %xmm4
	movsd	%xmm4, 16(%rbx)
	movq	%rbx, %rax
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end11:
	.size	color_oklch_to_lab, .Lfunc_end11-color_oklch_to_lab
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function color_xyz_to_lch
.LCPI12_0:
	.quad	0x3f822354d28f7cd6              # double 0.0088564516790356311
.LCPI12_1:
	.quad	0x3fd5555555555555              # double 0.33333333333333331
.LCPI12_2:
	.quad	0x40375c71c71c71c7              # double 23.361111111111111
.LCPI12_3:
	.quad	0x3fc1a7b9611a7b96              # double 0.13793103448275862
.LCPI12_4:
	.quad	0x3fee6a67e846a5d7              # double 0.95048900000000003
.LCPI12_5:
	.quad	0x3ff16be37de939eb              # double 1.08884
.LCPI12_6:
	.quad	0x407f400000000000              # double 500
.LCPI12_7:
	.quad	0x405d000000000000              # double 116
.LCPI12_8:
	.quad	0xc030000000000000              # double -16
.LCPI12_9:
	.quad	0x4069000000000000              # double 200
.LCPI12_10:
	.quad	0x4060000000000000              # double 128
.LCPI12_11:
	.quad	0x406fe00000000000              # double 255
.LCPI12_12:
	.quad	0xc060000000000000              # double -128
.LCPI12_13:
	.quad	0x400921fb54442d18              # double 3.1415926535897931
.LCPI12_14:
	.quad	0x3fe0000000000000              # double 0.5
.LCPI12_15:
	.quad	0x3ff0000000000000              # double 1
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI12_16:
	.quad	0x4059000000000000              # double 100
	.zero	8
	.text
	.globl	color_xyz_to_lch
	.p2align	4
	.type	color_xyz_to_lch,@function
color_xyz_to_lch:                       # @color_xyz_to_lch
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movsd	16(%rbp), %xmm1                 # xmm1 = mem[0],zero
	movsd	24(%rbp), %xmm0                 # xmm0 = mem[0],zero
	movsd	32(%rbp), %xmm2                 # xmm2 = mem[0],zero
	movsd	%xmm2, -40(%rbp)                # 8-byte Spill
	ucomisd	.LCPI12_0(%rip), %xmm0
	movsd	%xmm0, -16(%rbp)                # 8-byte Spill
	jbe	.LBB12_2
# %bb.1:
	movsd	%xmm1, -32(%rbp)                # 8-byte Spill
	callq	cbrt@PLT
	movsd	-32(%rbp), %xmm1                # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movapd	%xmm0, -64(%rbp)                # 16-byte Spill
	divsd	.LCPI12_4(%rip), %xmm1
	ucomisd	.LCPI12_0(%rip), %xmm1
	ja	.LBB12_4
.LBB12_5:
	mulsd	.LCPI12_1(%rip), %xmm1
	mulsd	.LCPI12_2(%rip), %xmm1
	addsd	.LCPI12_3(%rip), %xmm1
	movsd	-16(%rbp), %xmm3                # 8-byte Reload
                                        # xmm3 = mem[0],zero
	ucomisd	.LCPI12_0(%rip), %xmm3
	movsd	%xmm1, -32(%rbp)                # 8-byte Spill
	ja	.LBB12_7
.LBB12_8:
	mulsd	.LCPI12_1(%rip), %xmm3
	mulsd	.LCPI12_2(%rip), %xmm3
	addsd	.LCPI12_3(%rip), %xmm3
	movsd	-40(%rbp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	.LCPI12_5(%rip), %xmm0
	ucomisd	.LCPI12_0(%rip), %xmm0
	ja	.LBB12_10
.LBB12_11:
	mulsd	.LCPI12_1(%rip), %xmm0
	mulsd	.LCPI12_2(%rip), %xmm0
	addsd	.LCPI12_3(%rip), %xmm0
	jmp	.LBB12_12
.LBB12_2:
	movsd	.LCPI12_1(%rip), %xmm2          # xmm2 = [3.3333333333333331E-1,0.0E+0]
	mulsd	%xmm0, %xmm2
	mulsd	.LCPI12_2(%rip), %xmm2
	addsd	.LCPI12_3(%rip), %xmm2
	movapd	%xmm2, -64(%rbp)                # 16-byte Spill
	divsd	.LCPI12_4(%rip), %xmm1
	ucomisd	.LCPI12_0(%rip), %xmm1
	jbe	.LBB12_5
.LBB12_4:
	movapd	%xmm1, %xmm0
	callq	cbrt@PLT
	movapd	%xmm0, %xmm1
	movsd	-16(%rbp), %xmm3                # 8-byte Reload
                                        # xmm3 = mem[0],zero
	ucomisd	.LCPI12_0(%rip), %xmm3
	movsd	%xmm1, -32(%rbp)                # 8-byte Spill
	jbe	.LBB12_8
.LBB12_7:
	movapd	%xmm3, %xmm0
	callq	cbrt@PLT
	movapd	%xmm0, %xmm3
	movsd	-40(%rbp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	.LCPI12_5(%rip), %xmm0
	ucomisd	.LCPI12_0(%rip), %xmm0
	jbe	.LBB12_11
.LBB12_10:
	movsd	%xmm3, -16(%rbp)                # 8-byte Spill
	callq	cbrt@PLT
	movsd	-16(%rbp), %xmm3                # 8-byte Reload
                                        # xmm3 = mem[0],zero
.LBB12_12:
	movsd	-32(%rbp), %xmm1                # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm3, %xmm1
	mulsd	.LCPI12_6(%rip), %xmm1
	movapd	-64(%rbp), %xmm2                # 16-byte Reload
	mulsd	.LCPI12_7(%rip), %xmm2
	addsd	.LCPI12_8(%rip), %xmm2
	movapd	%xmm2, -64(%rbp)                # 16-byte Spill
	subsd	%xmm0, %xmm3
	mulsd	.LCPI12_9(%rip), %xmm3
	movsd	.LCPI12_10(%rip), %xmm0         # xmm0 = [1.28E+2,0.0E+0]
	addsd	%xmm0, %xmm1
	movsd	.LCPI12_11(%rip), %xmm2         # xmm2 = [2.55E+2,0.0E+0]
	divsd	%xmm2, %xmm1
	addsd	%xmm0, %xmm3
	divsd	%xmm2, %xmm3
	mulsd	%xmm2, %xmm1
	movsd	.LCPI12_12(%rip), %xmm0         # xmm0 = [-1.28E+2,0.0E+0]
	addsd	%xmm0, %xmm1
	mulsd	%xmm2, %xmm3
	addsd	%xmm0, %xmm3
	movapd	%xmm3, %xmm0
	mulsd	%xmm3, %xmm0
	movapd	%xmm1, %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	sqrtsd	%xmm2, %xmm0
	movapd	%xmm0, -32(%rbp)                # 16-byte Spill
	movapd	%xmm3, %xmm0
	callq	atan2@PLT
	divsd	.LCPI12_13(%rip), %xmm0
	mulsd	.LCPI12_14(%rip), %xmm0
	movsd	%xmm0, 16(%rbx)
	movapd	-64(%rbp), %xmm1                # 16-byte Reload
	movapd	-32(%rbp), %xmm0                # 16-byte Reload
	unpcklpd	%xmm0, %xmm1                    # xmm1 = xmm1[0],xmm0[0]
	addsd	.LCPI12_15(%rip), %xmm0
	movapd	%xmm0, %xmm2
	movapd	.LCPI12_16(%rip), %xmm0         # xmm0 = [1.0E+2,u]
	unpcklpd	%xmm2, %xmm0                    # xmm0 = xmm0[0],xmm2[0]
	divpd	%xmm0, %xmm1
	movupd	%xmm1, (%rbx)
	movq	%rbx, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end12:
	.size	color_xyz_to_lch, .Lfunc_end12-color_xyz_to_lch
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function color_lab_to_lch
.LCPI13_0:
	.quad	0x406fe00000000000              # double 255
.LCPI13_1:
	.quad	0xc060000000000000              # double -128
.LCPI13_2:
	.quad	0x400921fb54442d18              # double 3.1415926535897931
.LCPI13_3:
	.quad	0x3fe0000000000000              # double 0.5
.LCPI13_4:
	.quad	0x3ff0000000000000              # double 1
	.text
	.globl	color_lab_to_lch
	.p2align	4
	.type	color_lab_to_lch,@function
color_lab_to_lch:                       # @color_lab_to_lch
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movsd	16(%rbp), %xmm0                 # xmm0 = mem[0],zero
	movsd	%xmm0, (%rdi)
	movsd	.LCPI13_0(%rip), %xmm0          # xmm0 = [2.55E+2,0.0E+0]
	movsd	24(%rbp), %xmm1                 # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	.LCPI13_1(%rip), %xmm2          # xmm2 = [-1.28E+2,0.0E+0]
	mulsd	32(%rbp), %xmm0
	addsd	%xmm2, %xmm1
	addsd	%xmm2, %xmm0
	movapd	%xmm0, %xmm2
	mulsd	%xmm0, %xmm2
	movapd	%xmm1, %xmm3
	mulsd	%xmm1, %xmm3
	addsd	%xmm2, %xmm3
	xorps	%xmm2, %xmm2
	sqrtsd	%xmm3, %xmm2
	movsd	%xmm2, -16(%rbp)                # 8-byte Spill
	callq	atan2@PLT
	divsd	.LCPI13_2(%rip), %xmm0
	mulsd	.LCPI13_3(%rip), %xmm0
	movsd	%xmm0, 16(%rbx)
	movsd	.LCPI13_4(%rip), %xmm0          # xmm0 = [1.0E+0,0.0E+0]
	movsd	-16(%rbp), %xmm1                # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 8(%rbx)
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end13:
	.size	color_lab_to_lch, .Lfunc_end13-color_lab_to_lch
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function color_oklab_to_lch
.LCPI14_0:
	.quad	0x406fe00000000000              # double 255
.LCPI14_1:
	.quad	0xc060000000000000              # double -128
.LCPI14_2:
	.quad	0x400921fb54442d18              # double 3.1415926535897931
.LCPI14_3:
	.quad	0x3fe0000000000000              # double 0.5
.LCPI14_4:
	.quad	0x3ff0000000000000              # double 1
	.text
	.globl	color_oklab_to_lch
	.p2align	4
	.type	color_oklab_to_lch,@function
color_oklab_to_lch:                     # @color_oklab_to_lch
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movaps	16(%rbp), %xmm0
	movups	%xmm0, (%rsp)
	leaq	-40(%rbp), %rdi
	callq	color_oklab_to_lab
	movsd	-40(%rbp), %xmm2                # xmm2 = mem[0],zero
	movsd	.LCPI14_0(%rip), %xmm0          # xmm0 = [2.55E+2,0.0E+0]
	movsd	-32(%rbp), %xmm1                # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	mulsd	-24(%rbp), %xmm0
	movsd	%xmm2, (%rbx)
	movsd	.LCPI14_1(%rip), %xmm2          # xmm2 = [-1.28E+2,0.0E+0]
	addsd	%xmm2, %xmm1
	addsd	%xmm2, %xmm0
	movapd	%xmm0, %xmm2
	mulsd	%xmm0, %xmm2
	movapd	%xmm1, %xmm3
	mulsd	%xmm1, %xmm3
	addsd	%xmm2, %xmm3
	xorps	%xmm2, %xmm2
	sqrtsd	%xmm3, %xmm2
	movsd	%xmm2, -16(%rbp)                # 8-byte Spill
	callq	atan2@PLT
	divsd	.LCPI14_2(%rip), %xmm0
	mulsd	.LCPI14_3(%rip), %xmm0
	movsd	%xmm0, 16(%rbx)
	movsd	.LCPI14_4(%rip), %xmm0          # xmm0 = [1.0E+0,0.0E+0]
	movsd	-16(%rbp), %xmm1                # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 8(%rbx)
	movq	%rbx, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end14:
	.size	color_oklab_to_lch, .Lfunc_end14-color_oklab_to_lch
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function color_oklch_to_lch
.LCPI15_0:
	.quad	0x406fe00000000000              # double 255
.LCPI15_1:
	.quad	0xc060000000000000              # double -128
.LCPI15_2:
	.quad	0x400921fb54442d18              # double 3.1415926535897931
.LCPI15_3:
	.quad	0x3fe0000000000000              # double 0.5
.LCPI15_4:
	.quad	0x3ff0000000000000              # double 1
	.text
	.globl	color_oklch_to_lch
	.p2align	4
	.type	color_oklch_to_lch,@function
color_oklch_to_lch:                     # @color_oklch_to_lch
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movaps	16(%rbp), %xmm0
	movups	%xmm0, (%rsp)
	leaq	-40(%rbp), %rdi
	callq	color_oklch_to_lab
	movsd	-40(%rbp), %xmm2                # xmm2 = mem[0],zero
	movsd	.LCPI15_0(%rip), %xmm0          # xmm0 = [2.55E+2,0.0E+0]
	movsd	-32(%rbp), %xmm1                # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	mulsd	-24(%rbp), %xmm0
	movsd	%xmm2, (%rbx)
	movsd	.LCPI15_1(%rip), %xmm2          # xmm2 = [-1.28E+2,0.0E+0]
	addsd	%xmm2, %xmm1
	addsd	%xmm2, %xmm0
	movapd	%xmm0, %xmm2
	mulsd	%xmm0, %xmm2
	movapd	%xmm1, %xmm3
	mulsd	%xmm1, %xmm3
	addsd	%xmm2, %xmm3
	xorps	%xmm2, %xmm2
	sqrtsd	%xmm3, %xmm2
	movsd	%xmm2, -16(%rbp)                # 8-byte Spill
	callq	atan2@PLT
	divsd	.LCPI15_2(%rip), %xmm0
	mulsd	.LCPI15_3(%rip), %xmm0
	movsd	%xmm0, 16(%rbx)
	movsd	.LCPI15_4(%rip), %xmm0          # xmm0 = [1.0E+0,0.0E+0]
	movsd	-16(%rbp), %xmm1                # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 8(%rbx)
	movq	%rbx, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end15:
	.size	color_oklch_to_lch, .Lfunc_end15-color_oklch_to_lch
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function color_xyz_to_oklab
.LCPI16_0:
	.quad	0x3fd728d320078e3d              # double 0.3618667424
.LCPI16_1:
	.quad	0x3fea34b2ffffd19d              # double 0.81893301009999997
.LCPI16_2:
	.quad	0xbfc07e79a00e84a6              # double -0.12885971369999999
.LCPI16_3:
	.quad	0x3fedbcec3ffc10d5              # double 0.92931187150000005
.LCPI16_4:
	.quad	0x3fa0e359a0122b3c              # double 0.032984543599999999
.LCPI16_5:
	.quad	0x3fa281ae60381493              # double 0.036145638700000003
.LCPI16_6:
	.quad	0x3fd0eb607ffccd61              # double 0.2643662691
.LCPI16_7:
	.quad	0x3fa8adb5bfc6d32e              # double 0.048200301799999998
.LCPI16_8:
	.quad	0x3fe4488360028552              # double 0.63385170700000004
.LCPI16_12:
	.quad	0x3fe90c776001f502              # double 0.7827717662
.LCPI16_13:
	.quad	0x3f9a869680b729e0              # double 0.025904037099999999
.LCPI16_14:
	.quad	0xbfe9e0ac0001353d              # double -0.80867576600000002
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI16_9:
	.quad	0x3fe913659ae4725b              # double 0.78361778500000001
	.quad	0xc0036dc1bffe5d3e              # double -2.4285922050000002
.LCPI16_10:
	.quad	0x3fcaf02a3fe8a4fa              # double 0.2104542553
	.quad	0x3fffa5e1bfffde12              # double 1.9779984951
.LCPI16_11:
	.quad	0xbf70add9bd572b38              # double -0.0040720467999999996
	.quad	0x3fdcd686fff371a5              # double 0.45059370989999997
	.text
	.globl	color_xyz_to_oklab
	.p2align	4
	.type	color_xyz_to_oklab,@function
color_xyz_to_oklab:                     # @color_xyz_to_oklab
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movsd	16(%rbp), %xmm1                 # xmm1 = mem[0],zero
	movsd	24(%rbp), %xmm2                 # xmm2 = mem[0],zero
	movsd	.LCPI16_0(%rip), %xmm0          # xmm0 = [3.618667424E-1,0.0E+0]
	mulsd	%xmm2, %xmm0
	movsd	.LCPI16_1(%rip), %xmm3          # xmm3 = [8.1893301009999997E-1,0.0E+0]
	mulsd	%xmm1, %xmm3
	addsd	%xmm0, %xmm3
	movsd	32(%rbp), %xmm5                 # xmm5 = mem[0],zero
	movsd	.LCPI16_2(%rip), %xmm0          # xmm0 = [-1.2885971369999999E-1,0.0E+0]
	mulsd	%xmm5, %xmm0
	addsd	%xmm3, %xmm0
	movsd	.LCPI16_3(%rip), %xmm3          # xmm3 = [9.2931187150000005E-1,0.0E+0]
	mulsd	%xmm2, %xmm3
	movsd	.LCPI16_4(%rip), %xmm4          # xmm4 = [3.2984543599999999E-2,0.0E+0]
	mulsd	%xmm1, %xmm4
	addsd	%xmm3, %xmm4
	movsd	.LCPI16_5(%rip), %xmm3          # xmm3 = [3.6145638700000003E-2,0.0E+0]
	mulsd	%xmm5, %xmm3
	addsd	%xmm4, %xmm3
	movsd	%xmm3, -32(%rbp)                # 8-byte Spill
	mulsd	.LCPI16_6(%rip), %xmm2
	mulsd	.LCPI16_7(%rip), %xmm1
	addsd	%xmm2, %xmm1
	mulsd	.LCPI16_8(%rip), %xmm5
	addsd	%xmm1, %xmm5
	movsd	%xmm5, -40(%rbp)                # 8-byte Spill
	callq	cbrt@PLT
	movapd	%xmm0, -64(%rbp)                # 16-byte Spill
	movsd	-32(%rbp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	cbrt@PLT
	movaps	%xmm0, -32(%rbp)                # 16-byte Spill
	movsd	-40(%rbp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	cbrt@PLT
	movapd	-32(%rbp), %xmm4                # 16-byte Reload
	movapd	%xmm4, %xmm1
	unpcklpd	%xmm4, %xmm1                    # xmm1 = xmm1[0],xmm4[0]
	mulpd	.LCPI16_9(%rip), %xmm1
	movapd	-64(%rbp), %xmm3                # 16-byte Reload
	movapd	%xmm3, %xmm2
	unpcklpd	%xmm3, %xmm2                    # xmm2 = xmm2[0],xmm3[0]
	mulpd	.LCPI16_10(%rip), %xmm2
	addpd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	unpcklpd	%xmm0, %xmm1                    # xmm1 = xmm1[0],xmm0[0]
	mulpd	.LCPI16_11(%rip), %xmm1
	addpd	%xmm2, %xmm1
	movupd	%xmm1, (%rbx)
	movapd	%xmm4, %xmm2
	mulsd	.LCPI16_12(%rip), %xmm2
	movapd	%xmm3, %xmm1
	mulsd	.LCPI16_13(%rip), %xmm1
	mulsd	.LCPI16_14(%rip), %xmm0
	addsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 16(%rbx)
	movq	%rbx, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end16:
	.size	color_xyz_to_oklab, .Lfunc_end16-color_xyz_to_oklab
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function color_lab_to_oklab
.LCPI17_0:
	.quad	0x4059000000000000              # double 100
.LCPI17_1:
	.quad	0x406fe00000000000              # double 255
.LCPI17_2:
	.quad	0xc060000000000000              # double -128
.LCPI17_3:
	.quad	0x4030000000000000              # double 16
.LCPI17_4:
	.quad	0x407f400000000000              # double 500
.LCPI17_6:
	.quad	0xbfc1a7b9611a7b96              # double -0.13793103448275862
.LCPI17_7:
	.quad	0x3fc07004ded20922              # double 0.12841854934601665
.LCPI17_8:
	.quad	0x3fca7b9611a7b961              # double 0.20689655172413793
.LCPI17_9:
	.quad	0x3fee6a67e846a5d7              # double 0.95048900000000003
.LCPI17_10:
	.quad	0x3ff16be37de939eb              # double 1.08884
.LCPI17_11:
	.quad	0x3fd728d320078e3d              # double 0.3618667424
.LCPI17_12:
	.quad	0x3fea34b2ffffd19d              # double 0.81893301009999997
.LCPI17_13:
	.quad	0xbfc07e79a00e84a6              # double -0.12885971369999999
.LCPI17_14:
	.quad	0x3fedbcec3ffc10d5              # double 0.92931187150000005
.LCPI17_15:
	.quad	0x3fa0e359a0122b3c              # double 0.032984543599999999
.LCPI17_16:
	.quad	0x3fa281ae60381493              # double 0.036145638700000003
.LCPI17_17:
	.quad	0x3fd0eb607ffccd61              # double 0.2643662691
.LCPI17_18:
	.quad	0x3fa8adb5bfc6d32e              # double 0.048200301799999998
.LCPI17_19:
	.quad	0x3fe4488360028552              # double 0.63385170700000004
.LCPI17_23:
	.quad	0x3fe90c776001f502              # double 0.7827717662
.LCPI17_24:
	.quad	0x3f9a869680b729e0              # double 0.025904037099999999
.LCPI17_25:
	.quad	0xbfe9e0ac0001353d              # double -0.80867576600000002
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI17_5:
	.quad	0x405d000000000000              # double 116
	.quad	0x4069000000000000              # double 200
.LCPI17_20:
	.quad	0x3fe913659ae4725b              # double 0.78361778500000001
	.quad	0xc0036dc1bffe5d3e              # double -2.4285922050000002
.LCPI17_21:
	.quad	0x3fcaf02a3fe8a4fa              # double 0.2104542553
	.quad	0x3fffa5e1bfffde12              # double 1.9779984951
.LCPI17_22:
	.quad	0xbf70add9bd572b38              # double -0.0040720467999999996
	.quad	0x3fdcd686fff371a5              # double 0.45059370989999997
	.text
	.globl	color_lab_to_oklab
	.p2align	4
	.type	color_lab_to_oklab,@function
color_lab_to_oklab:                     # @color_lab_to_oklab
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movsd	16(%rbp), %xmm0                 # xmm0 = mem[0],zero
	mulsd	.LCPI17_0(%rip), %xmm0
	movsd	.LCPI17_1(%rip), %xmm1          # xmm1 = [2.55E+2,0.0E+0]
	movsd	24(%rbp), %xmm2                 # xmm2 = mem[0],zero
	mulsd	%xmm1, %xmm2
	movsd	.LCPI17_2(%rip), %xmm3          # xmm3 = [-1.28E+2,0.0E+0]
	addsd	%xmm3, %xmm2
	mulsd	32(%rbp), %xmm1
	addsd	.LCPI17_3(%rip), %xmm0
	addsd	%xmm3, %xmm1
	unpcklpd	%xmm1, %xmm0                    # xmm0 = xmm0[0],xmm1[0]
	divsd	.LCPI17_4(%rip), %xmm2
	divpd	.LCPI17_5(%rip), %xmm0
	addsd	%xmm0, %xmm2
	movapd	%xmm2, %xmm5
	mulsd	%xmm2, %xmm5
	mulsd	%xmm2, %xmm5
	movsd	.LCPI17_6(%rip), %xmm3          # xmm3 = [-1.3793103448275862E-1,0.0E+0]
	movsd	.LCPI17_8(%rip), %xmm7          # xmm7 = [2.0689655172413793E-1,0.0E+0]
	movapd	%xmm7, %xmm1
	cmpltsd	%xmm2, %xmm1
	addsd	%xmm3, %xmm2
	movsd	.LCPI17_7(%rip), %xmm4          # xmm4 = [1.2841854934601665E-1,0.0E+0]
	mulsd	%xmm4, %xmm2
	andpd	%xmm1, %xmm5
	andnpd	%xmm2, %xmm1
	orpd	%xmm5, %xmm1
	mulsd	.LCPI17_9(%rip), %xmm1
	movapd	%xmm0, %xmm5
	mulsd	%xmm0, %xmm5
	mulsd	%xmm0, %xmm5
	movapd	%xmm0, %xmm6
	addsd	%xmm3, %xmm6
	mulsd	%xmm4, %xmm6
	movapd	%xmm7, %xmm2
	cmpltsd	%xmm0, %xmm2
	andpd	%xmm2, %xmm5
	andnpd	%xmm6, %xmm2
	orpd	%xmm5, %xmm2
	movapd	%xmm0, %xmm5
	unpckhpd	%xmm0, %xmm5                    # xmm5 = xmm5[1],xmm0[1]
	subsd	%xmm5, %xmm0
	movapd	%xmm0, %xmm5
	mulsd	%xmm0, %xmm5
	mulsd	%xmm0, %xmm5
	addsd	%xmm0, %xmm3
	mulsd	%xmm4, %xmm3
	cmpltsd	%xmm0, %xmm7
	andpd	%xmm7, %xmm5
	andnpd	%xmm3, %xmm7
	orpd	%xmm5, %xmm7
	mulsd	.LCPI17_10(%rip), %xmm7
	movsd	.LCPI17_11(%rip), %xmm0         # xmm0 = [3.618667424E-1,0.0E+0]
	mulsd	%xmm2, %xmm0
	movsd	.LCPI17_12(%rip), %xmm3         # xmm3 = [8.1893301009999997E-1,0.0E+0]
	mulsd	%xmm1, %xmm3
	addsd	%xmm0, %xmm3
	movsd	.LCPI17_13(%rip), %xmm0         # xmm0 = [-1.2885971369999999E-1,0.0E+0]
	mulsd	%xmm7, %xmm0
	addsd	%xmm3, %xmm0
	movsd	.LCPI17_14(%rip), %xmm3         # xmm3 = [9.2931187150000005E-1,0.0E+0]
	mulsd	%xmm2, %xmm3
	movsd	.LCPI17_15(%rip), %xmm4         # xmm4 = [3.2984543599999999E-2,0.0E+0]
	mulsd	%xmm1, %xmm4
	addsd	%xmm3, %xmm4
	movsd	.LCPI17_16(%rip), %xmm3         # xmm3 = [3.6145638700000003E-2,0.0E+0]
	mulsd	%xmm7, %xmm3
	addsd	%xmm4, %xmm3
	movsd	%xmm3, -32(%rbp)                # 8-byte Spill
	mulsd	.LCPI17_17(%rip), %xmm2
	mulsd	.LCPI17_18(%rip), %xmm1
	addsd	%xmm2, %xmm1
	mulsd	.LCPI17_19(%rip), %xmm7
	addsd	%xmm1, %xmm7
	movapd	%xmm7, -48(%rbp)                # 16-byte Spill
	callq	cbrt@PLT
	movapd	%xmm0, -64(%rbp)                # 16-byte Spill
	movsd	-32(%rbp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	cbrt@PLT
	movaps	%xmm0, -32(%rbp)                # 16-byte Spill
	movapd	-48(%rbp), %xmm0                # 16-byte Reload
	callq	cbrt@PLT
	movapd	-32(%rbp), %xmm4                # 16-byte Reload
	movapd	%xmm4, %xmm1
	unpcklpd	%xmm4, %xmm1                    # xmm1 = xmm1[0],xmm4[0]
	mulpd	.LCPI17_20(%rip), %xmm1
	movapd	-64(%rbp), %xmm3                # 16-byte Reload
	movapd	%xmm3, %xmm2
	unpcklpd	%xmm3, %xmm2                    # xmm2 = xmm2[0],xmm3[0]
	mulpd	.LCPI17_21(%rip), %xmm2
	addpd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	unpcklpd	%xmm0, %xmm1                    # xmm1 = xmm1[0],xmm0[0]
	mulpd	.LCPI17_22(%rip), %xmm1
	addpd	%xmm2, %xmm1
	movupd	%xmm1, (%rbx)
	movapd	%xmm4, %xmm2
	mulsd	.LCPI17_23(%rip), %xmm2
	movapd	%xmm3, %xmm1
	mulsd	.LCPI17_24(%rip), %xmm1
	mulsd	.LCPI17_25(%rip), %xmm0
	addsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 16(%rbx)
	movq	%rbx, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end17:
	.size	color_lab_to_oklab, .Lfunc_end17-color_lab_to_oklab
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function color_lch_to_oklab
.LCPI18_0:
	.quad	0x3ff0000000000000              # double 1
.LCPI18_1:
	.quad	0x400921fb54442d18              # double 3.1415926535897931
.LCPI18_2:
	.quad	0x4060000000000000              # double 128
.LCPI18_3:
	.quad	0x406fe00000000000              # double 255
.LCPI18_4:
	.quad	0x4059000000000000              # double 100
.LCPI18_5:
	.quad	0xc060000000000000              # double -128
.LCPI18_6:
	.quad	0x4030000000000000              # double 16
.LCPI18_7:
	.quad	0x407f400000000000              # double 500
.LCPI18_9:
	.quad	0xbfc1a7b9611a7b96              # double -0.13793103448275862
.LCPI18_10:
	.quad	0x3fc07004ded20922              # double 0.12841854934601665
.LCPI18_11:
	.quad	0x3fca7b9611a7b961              # double 0.20689655172413793
.LCPI18_12:
	.quad	0x3fee6a67e846a5d7              # double 0.95048900000000003
.LCPI18_13:
	.quad	0x3ff16be37de939eb              # double 1.08884
.LCPI18_14:
	.quad	0x3fd728d320078e3d              # double 0.3618667424
.LCPI18_15:
	.quad	0x3fea34b2ffffd19d              # double 0.81893301009999997
.LCPI18_16:
	.quad	0xbfc07e79a00e84a6              # double -0.12885971369999999
.LCPI18_17:
	.quad	0x3fedbcec3ffc10d5              # double 0.92931187150000005
.LCPI18_18:
	.quad	0x3fa0e359a0122b3c              # double 0.032984543599999999
.LCPI18_19:
	.quad	0x3fa281ae60381493              # double 0.036145638700000003
.LCPI18_20:
	.quad	0x3fd0eb607ffccd61              # double 0.2643662691
.LCPI18_21:
	.quad	0x3fa8adb5bfc6d32e              # double 0.048200301799999998
.LCPI18_22:
	.quad	0x3fe4488360028552              # double 0.63385170700000004
.LCPI18_26:
	.quad	0x3fe90c776001f502              # double 0.7827717662
.LCPI18_27:
	.quad	0x3f9a869680b729e0              # double 0.025904037099999999
.LCPI18_28:
	.quad	0xbfe9e0ac0001353d              # double -0.80867576600000002
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI18_8:
	.quad	0x405d000000000000              # double 116
	.quad	0x4069000000000000              # double 200
.LCPI18_23:
	.quad	0x3fe913659ae4725b              # double 0.78361778500000001
	.quad	0xc0036dc1bffe5d3e              # double -2.4285922050000002
.LCPI18_24:
	.quad	0x3fcaf02a3fe8a4fa              # double 0.2104542553
	.quad	0x3fffa5e1bfffde12              # double 1.9779984951
.LCPI18_25:
	.quad	0xbf70add9bd572b38              # double -0.0040720467999999996
	.quad	0x3fdcd686fff371a5              # double 0.45059370989999997
	.text
	.globl	color_lch_to_oklab
	.p2align	4
	.type	color_lch_to_oklab,@function
color_lch_to_oklab:                     # @color_lch_to_oklab
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movsd	16(%rbp), %xmm0                 # xmm0 = mem[0],zero
	movaps	%xmm0, -64(%rbp)                # 16-byte Spill
	movsd	24(%rbp), %xmm1                 # xmm1 = mem[0],zero
	movsd	32(%rbp), %xmm2                 # xmm2 = mem[0],zero
	movsd	.LCPI18_0(%rip), %xmm0          # xmm0 = [1.0E+0,0.0E+0]
	subsd	%xmm1, %xmm0
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -32(%rbp)                # 8-byte Spill
	movapd	%xmm2, %xmm0
	mulsd	.LCPI18_1(%rip), %xmm0
	addsd	%xmm0, %xmm0
	movsd	%xmm0, -72(%rbp)                # 8-byte Spill
	callq	cos@PLT
	mulsd	-32(%rbp), %xmm0                # 8-byte Folded Reload
	movsd	%xmm0, -48(%rbp)                # 8-byte Spill
	movsd	-72(%rbp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sin@PLT
	mulsd	-32(%rbp), %xmm0                # 8-byte Folded Reload
	movsd	.LCPI18_2(%rip), %xmm1          # xmm1 = [1.28E+2,0.0E+0]
	movsd	-48(%rbp), %xmm3                # 8-byte Reload
                                        # xmm3 = mem[0],zero
	addsd	%xmm1, %xmm3
	movsd	.LCPI18_3(%rip), %xmm2          # xmm2 = [2.55E+2,0.0E+0]
	divsd	%xmm2, %xmm3
	addsd	%xmm1, %xmm0
	divsd	%xmm2, %xmm0
	movapd	-64(%rbp), %xmm5                # 16-byte Reload
	mulsd	.LCPI18_4(%rip), %xmm5
	mulsd	%xmm2, %xmm3
	movsd	.LCPI18_5(%rip), %xmm1          # xmm1 = [-1.28E+2,0.0E+0]
	addsd	%xmm1, %xmm3
	mulsd	%xmm2, %xmm0
	addsd	.LCPI18_6(%rip), %xmm5
	addsd	%xmm1, %xmm0
	unpcklpd	%xmm0, %xmm5                    # xmm5 = xmm5[0],xmm0[0]
	divsd	.LCPI18_7(%rip), %xmm3
	divpd	.LCPI18_8(%rip), %xmm5
	addsd	%xmm5, %xmm3
	movapd	%xmm3, %xmm2
	mulsd	%xmm3, %xmm2
	mulsd	%xmm3, %xmm2
	movsd	.LCPI18_9(%rip), %xmm0          # xmm0 = [-1.3793103448275862E-1,0.0E+0]
	movapd	%xmm3, %xmm4
	movapd	%xmm3, %xmm7
	addsd	%xmm0, %xmm4
	movsd	.LCPI18_10(%rip), %xmm3         # xmm3 = [1.2841854934601665E-1,0.0E+0]
	mulsd	%xmm3, %xmm4
	movsd	.LCPI18_11(%rip), %xmm6         # xmm6 = [2.0689655172413793E-1,0.0E+0]
	movapd	%xmm6, %xmm1
	cmpltsd	%xmm7, %xmm1
	andpd	%xmm1, %xmm2
	andnpd	%xmm4, %xmm1
	orpd	%xmm2, %xmm1
	mulsd	.LCPI18_12(%rip), %xmm1
	movapd	%xmm5, %xmm4
	mulsd	%xmm5, %xmm4
	mulsd	%xmm5, %xmm4
	movapd	%xmm5, %xmm7
	addsd	%xmm0, %xmm5
	mulsd	%xmm3, %xmm5
	movapd	%xmm6, %xmm2
	cmpltsd	%xmm7, %xmm2
	andpd	%xmm2, %xmm4
	andnpd	%xmm5, %xmm2
	orpd	%xmm4, %xmm2
	movapd	%xmm7, %xmm5
	movapd	%xmm7, %xmm4
	unpckhpd	%xmm7, %xmm4                    # xmm4 = xmm4[1],xmm7[1]
	subsd	%xmm4, %xmm5
	movapd	%xmm5, %xmm4
	mulsd	%xmm5, %xmm4
	mulsd	%xmm5, %xmm4
	addsd	%xmm5, %xmm0
	mulsd	%xmm3, %xmm0
	cmpltsd	%xmm5, %xmm6
	andpd	%xmm6, %xmm4
	andnpd	%xmm0, %xmm6
	orpd	%xmm4, %xmm6
	mulsd	.LCPI18_13(%rip), %xmm6
	movsd	.LCPI18_14(%rip), %xmm0         # xmm0 = [3.618667424E-1,0.0E+0]
	mulsd	%xmm2, %xmm0
	movsd	.LCPI18_15(%rip), %xmm3         # xmm3 = [8.1893301009999997E-1,0.0E+0]
	mulsd	%xmm1, %xmm3
	addsd	%xmm0, %xmm3
	movsd	.LCPI18_16(%rip), %xmm0         # xmm0 = [-1.2885971369999999E-1,0.0E+0]
	mulsd	%xmm6, %xmm0
	addsd	%xmm3, %xmm0
	movsd	.LCPI18_17(%rip), %xmm3         # xmm3 = [9.2931187150000005E-1,0.0E+0]
	mulsd	%xmm2, %xmm3
	movsd	.LCPI18_18(%rip), %xmm4         # xmm4 = [3.2984543599999999E-2,0.0E+0]
	mulsd	%xmm1, %xmm4
	addsd	%xmm3, %xmm4
	movsd	.LCPI18_19(%rip), %xmm3         # xmm3 = [3.6145638700000003E-2,0.0E+0]
	mulsd	%xmm6, %xmm3
	addsd	%xmm4, %xmm3
	movsd	%xmm3, -32(%rbp)                # 8-byte Spill
	mulsd	.LCPI18_20(%rip), %xmm2
	mulsd	.LCPI18_21(%rip), %xmm1
	addsd	%xmm2, %xmm1
	mulsd	.LCPI18_22(%rip), %xmm6
	addsd	%xmm1, %xmm6
	movapd	%xmm6, -48(%rbp)                # 16-byte Spill
	callq	cbrt@PLT
	movapd	%xmm0, -64(%rbp)                # 16-byte Spill
	movsd	-32(%rbp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	cbrt@PLT
	movaps	%xmm0, -32(%rbp)                # 16-byte Spill
	movapd	-48(%rbp), %xmm0                # 16-byte Reload
	callq	cbrt@PLT
	movapd	-32(%rbp), %xmm4                # 16-byte Reload
	movapd	%xmm4, %xmm1
	unpcklpd	%xmm4, %xmm1                    # xmm1 = xmm1[0],xmm4[0]
	mulpd	.LCPI18_23(%rip), %xmm1
	movapd	-64(%rbp), %xmm3                # 16-byte Reload
	movapd	%xmm3, %xmm2
	unpcklpd	%xmm3, %xmm2                    # xmm2 = xmm2[0],xmm3[0]
	mulpd	.LCPI18_24(%rip), %xmm2
	addpd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	unpcklpd	%xmm0, %xmm1                    # xmm1 = xmm1[0],xmm0[0]
	mulpd	.LCPI18_25(%rip), %xmm1
	addpd	%xmm2, %xmm1
	movupd	%xmm1, (%rbx)
	movapd	%xmm4, %xmm2
	mulsd	.LCPI18_26(%rip), %xmm2
	movapd	%xmm3, %xmm1
	mulsd	.LCPI18_27(%rip), %xmm1
	mulsd	.LCPI18_28(%rip), %xmm0
	addsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 16(%rbx)
	movq	%rbx, %rax
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end18:
	.size	color_lch_to_oklab, .Lfunc_end18-color_lch_to_oklab
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function color_lch_to_xyz
.LCPI19_0:
	.quad	0x3ff0000000000000              # double 1
.LCPI19_1:
	.quad	0x400921fb54442d18              # double 3.1415926535897931
.LCPI19_2:
	.quad	0x4060000000000000              # double 128
.LCPI19_3:
	.quad	0x406fe00000000000              # double 255
.LCPI19_4:
	.quad	0x4059000000000000              # double 100
.LCPI19_5:
	.quad	0xc060000000000000              # double -128
.LCPI19_6:
	.quad	0x4030000000000000              # double 16
.LCPI19_7:
	.quad	0x407f400000000000              # double 500
.LCPI19_9:
	.quad	0xbfc1a7b9611a7b96              # double -0.13793103448275862
.LCPI19_10:
	.quad	0x3fc07004ded20922              # double 0.12841854934601665
.LCPI19_11:
	.quad	0x3fca7b9611a7b961              # double 0.20689655172413793
.LCPI19_12:
	.quad	0x3fee6a67e846a5d7              # double 0.95048900000000003
.LCPI19_13:
	.quad	0x3ff16be37de939eb              # double 1.08884
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI19_8:
	.quad	0x405d000000000000              # double 116
	.quad	0x4069000000000000              # double 200
	.text
	.globl	color_lch_to_xyz
	.p2align	4
	.type	color_lch_to_xyz,@function
color_lch_to_xyz:                       # @color_lch_to_xyz
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movsd	16(%rbp), %xmm0                 # xmm0 = mem[0],zero
	movaps	%xmm0, -48(%rbp)                # 16-byte Spill
	movsd	24(%rbp), %xmm1                 # xmm1 = mem[0],zero
	movsd	32(%rbp), %xmm2                 # xmm2 = mem[0],zero
	movsd	.LCPI19_0(%rip), %xmm0          # xmm0 = [1.0E+0,0.0E+0]
	subsd	%xmm1, %xmm0
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -16(%rbp)                # 8-byte Spill
	movapd	%xmm2, %xmm0
	mulsd	.LCPI19_1(%rip), %xmm0
	addsd	%xmm0, %xmm0
	movsd	%xmm0, -24(%rbp)                # 8-byte Spill
	callq	cos@PLT
	mulsd	-16(%rbp), %xmm0                # 8-byte Folded Reload
	movsd	%xmm0, -32(%rbp)                # 8-byte Spill
	movsd	-24(%rbp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sin@PLT
	mulsd	-16(%rbp), %xmm0                # 8-byte Folded Reload
	movsd	.LCPI19_2(%rip), %xmm1          # xmm1 = [1.28E+2,0.0E+0]
	movsd	-32(%rbp), %xmm5                # 8-byte Reload
                                        # xmm5 = mem[0],zero
	addsd	%xmm1, %xmm5
	movsd	.LCPI19_3(%rip), %xmm2          # xmm2 = [2.55E+2,0.0E+0]
	divsd	%xmm2, %xmm5
	addsd	%xmm1, %xmm0
	divsd	%xmm2, %xmm0
	movapd	-48(%rbp), %xmm6                # 16-byte Reload
	mulsd	.LCPI19_4(%rip), %xmm6
	mulsd	%xmm2, %xmm5
	movsd	.LCPI19_5(%rip), %xmm1          # xmm1 = [-1.28E+2,0.0E+0]
	addsd	%xmm1, %xmm5
	mulsd	%xmm2, %xmm0
	addsd	.LCPI19_6(%rip), %xmm6
	addsd	%xmm1, %xmm0
	unpcklpd	%xmm0, %xmm6                    # xmm6 = xmm6[0],xmm0[0]
	divsd	.LCPI19_7(%rip), %xmm5
	divpd	.LCPI19_8(%rip), %xmm6
	addsd	%xmm6, %xmm5
	movapd	%xmm5, %xmm3
	mulsd	%xmm5, %xmm3
	mulsd	%xmm5, %xmm3
	movsd	.LCPI19_9(%rip), %xmm0          # xmm0 = [-1.3793103448275862E-1,0.0E+0]
	movapd	%xmm5, %xmm4
	movapd	%xmm5, %xmm7
	addsd	%xmm0, %xmm4
	movsd	.LCPI19_10(%rip), %xmm2         # xmm2 = [1.2841854934601665E-1,0.0E+0]
	mulsd	%xmm2, %xmm4
	movsd	.LCPI19_11(%rip), %xmm1         # xmm1 = [2.0689655172413793E-1,0.0E+0]
	movapd	%xmm1, %xmm5
	cmpltsd	%xmm7, %xmm5
	andpd	%xmm5, %xmm3
	andnpd	%xmm4, %xmm5
	orpd	%xmm3, %xmm5
	mulsd	.LCPI19_12(%rip), %xmm5
	movsd	%xmm5, (%rbx)
	movapd	%xmm6, %xmm3
	mulsd	%xmm6, %xmm3
	mulsd	%xmm6, %xmm3
	movapd	%xmm6, %xmm4
	addsd	%xmm0, %xmm4
	mulsd	%xmm2, %xmm4
	movapd	%xmm1, %xmm5
	cmpltsd	%xmm6, %xmm5
	andpd	%xmm5, %xmm3
	andnpd	%xmm4, %xmm5
	orpd	%xmm3, %xmm5
	movlpd	%xmm5, 8(%rbx)
	movapd	%xmm6, %xmm4
	movapd	%xmm6, %xmm3
	unpckhpd	%xmm6, %xmm3                    # xmm3 = xmm3[1],xmm6[1]
	subsd	%xmm3, %xmm4
	movapd	%xmm4, %xmm3
	mulsd	%xmm4, %xmm3
	mulsd	%xmm4, %xmm3
	addsd	%xmm4, %xmm0
	mulsd	%xmm2, %xmm0
	cmpltsd	%xmm4, %xmm1
	andpd	%xmm1, %xmm3
	andnpd	%xmm0, %xmm1
	orpd	%xmm3, %xmm1
	mulsd	.LCPI19_13(%rip), %xmm1
	movsd	%xmm1, 16(%rbx)
	movq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end19:
	.size	color_lch_to_xyz, .Lfunc_end19-color_lch_to_xyz
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function color_oklab_to_oklch
.LCPI20_0:
	.quad	0x400921fb54442d18              # double 3.1415926535897931
.LCPI20_1:
	.quad	0x3fe0000000000000              # double 0.5
.LCPI20_2:
	.quad	0x3ff0000000000000              # double 1
	.text
	.globl	color_oklab_to_oklch
	.p2align	4
	.type	color_oklab_to_oklch,@function
color_oklab_to_oklch:                   # @color_oklab_to_oklch
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movsd	16(%rbp), %xmm0                 # xmm0 = mem[0],zero
	movsd	%xmm0, (%rdi)
	movsd	24(%rbp), %xmm1                 # xmm1 = mem[0],zero
	movsd	32(%rbp), %xmm0                 # xmm0 = mem[0],zero
	movapd	%xmm0, %xmm2
	mulsd	%xmm0, %xmm2
	movapd	%xmm1, %xmm3
	mulsd	%xmm1, %xmm3
	addsd	%xmm2, %xmm3
	xorps	%xmm2, %xmm2
	sqrtsd	%xmm3, %xmm2
	movsd	%xmm2, -16(%rbp)                # 8-byte Spill
	callq	atan2@PLT
	divsd	.LCPI20_0(%rip), %xmm0
	mulsd	.LCPI20_1(%rip), %xmm0
	movsd	%xmm0, 16(%rbx)
	movsd	.LCPI20_2(%rip), %xmm0          # xmm0 = [1.0E+0,0.0E+0]
	movsd	-16(%rbp), %xmm1                # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 8(%rbx)
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end20:
	.size	color_oklab_to_oklch, .Lfunc_end20-color_oklab_to_oklch
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function color_xyz_to_oklch
.LCPI21_0:
	.quad	0x3fd728d320078e3d              # double 0.3618667424
.LCPI21_1:
	.quad	0x3fea34b2ffffd19d              # double 0.81893301009999997
.LCPI21_2:
	.quad	0xbfc07e79a00e84a6              # double -0.12885971369999999
.LCPI21_3:
	.quad	0x3fedbcec3ffc10d5              # double 0.92931187150000005
.LCPI21_4:
	.quad	0x3fa0e359a0122b3c              # double 0.032984543599999999
.LCPI21_5:
	.quad	0x3fa281ae60381493              # double 0.036145638700000003
.LCPI21_6:
	.quad	0x3fd0eb607ffccd61              # double 0.2643662691
.LCPI21_7:
	.quad	0x3fa8adb5bfc6d32e              # double 0.048200301799999998
.LCPI21_8:
	.quad	0x3fe4488360028552              # double 0.63385170700000004
.LCPI21_9:
	.quad	0x3fe913659ae4725b              # double 0.78361778500000001
.LCPI21_10:
	.quad	0x3fcaf02a3fe8a4fa              # double 0.2104542553
.LCPI21_11:
	.quad	0xbf70add9bd572b38              # double -0.0040720467999999996
.LCPI21_12:
	.quad	0xc0036dc1bffe5d3e              # double -2.4285922050000002
.LCPI21_13:
	.quad	0x3fffa5e1bfffde12              # double 1.9779984951
.LCPI21_14:
	.quad	0x3fdcd686fff371a5              # double 0.45059370989999997
.LCPI21_15:
	.quad	0x3fe90c776001f502              # double 0.7827717662
.LCPI21_16:
	.quad	0x3f9a869680b729e0              # double 0.025904037099999999
.LCPI21_17:
	.quad	0xbfe9e0ac0001353d              # double -0.80867576600000002
.LCPI21_18:
	.quad	0x400921fb54442d18              # double 3.1415926535897931
.LCPI21_19:
	.quad	0x3fe0000000000000              # double 0.5
.LCPI21_20:
	.quad	0x3ff0000000000000              # double 1
	.text
	.globl	color_xyz_to_oklch
	.p2align	4
	.type	color_xyz_to_oklch,@function
color_xyz_to_oklch:                     # @color_xyz_to_oklch
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movsd	16(%rbp), %xmm1                 # xmm1 = mem[0],zero
	movsd	24(%rbp), %xmm2                 # xmm2 = mem[0],zero
	movsd	32(%rbp), %xmm5                 # xmm5 = mem[0],zero
	movsd	.LCPI21_0(%rip), %xmm0          # xmm0 = [3.618667424E-1,0.0E+0]
	mulsd	%xmm2, %xmm0
	movsd	.LCPI21_1(%rip), %xmm3          # xmm3 = [8.1893301009999997E-1,0.0E+0]
	mulsd	%xmm1, %xmm3
	addsd	%xmm0, %xmm3
	movsd	.LCPI21_2(%rip), %xmm0          # xmm0 = [-1.2885971369999999E-1,0.0E+0]
	mulsd	%xmm5, %xmm0
	addsd	%xmm3, %xmm0
	movsd	.LCPI21_3(%rip), %xmm3          # xmm3 = [9.2931187150000005E-1,0.0E+0]
	mulsd	%xmm2, %xmm3
	movsd	.LCPI21_4(%rip), %xmm4          # xmm4 = [3.2984543599999999E-2,0.0E+0]
	mulsd	%xmm1, %xmm4
	addsd	%xmm3, %xmm4
	movsd	.LCPI21_5(%rip), %xmm3          # xmm3 = [3.6145638700000003E-2,0.0E+0]
	mulsd	%xmm5, %xmm3
	addsd	%xmm4, %xmm3
	movsd	%xmm3, -16(%rbp)                # 8-byte Spill
	mulsd	.LCPI21_6(%rip), %xmm2
	mulsd	.LCPI21_7(%rip), %xmm1
	addsd	%xmm2, %xmm1
	mulsd	.LCPI21_8(%rip), %xmm5
	addsd	%xmm1, %xmm5
	movsd	%xmm5, -24(%rbp)                # 8-byte Spill
	callq	cbrt@PLT
	movsd	%xmm0, -32(%rbp)                # 8-byte Spill
	movsd	-16(%rbp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	cbrt@PLT
	movsd	%xmm0, -16(%rbp)                # 8-byte Spill
	movsd	-24(%rbp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	cbrt@PLT
	movsd	.LCPI21_9(%rip), %xmm1          # xmm1 = [7.8361778500000001E-1,0.0E+0]
	movsd	-16(%rbp), %xmm5                # 8-byte Reload
                                        # xmm5 = mem[0],zero
	mulsd	%xmm5, %xmm1
	movsd	.LCPI21_10(%rip), %xmm2         # xmm2 = [2.104542553E-1,0.0E+0]
	movsd	-32(%rbp), %xmm4                # 8-byte Reload
                                        # xmm4 = mem[0],zero
	mulsd	%xmm4, %xmm2
	addsd	%xmm1, %xmm2
	movsd	.LCPI21_11(%rip), %xmm3         # xmm3 = [-4.0720467999999996E-3,0.0E+0]
	mulsd	%xmm0, %xmm3
	addsd	%xmm2, %xmm3
	movsd	.LCPI21_12(%rip), %xmm1         # xmm1 = [-2.4285922050000002E+0,0.0E+0]
	mulsd	%xmm5, %xmm1
	movsd	.LCPI21_13(%rip), %xmm2         # xmm2 = [1.9779984951E+0,0.0E+0]
	mulsd	%xmm4, %xmm2
	addsd	%xmm1, %xmm2
	movsd	.LCPI21_14(%rip), %xmm1         # xmm1 = [4.5059370989999997E-1,0.0E+0]
	mulsd	%xmm0, %xmm1
	mulsd	.LCPI21_15(%rip), %xmm5
	mulsd	.LCPI21_16(%rip), %xmm4
	addsd	%xmm2, %xmm1
	addsd	%xmm5, %xmm4
	mulsd	.LCPI21_17(%rip), %xmm0
	addsd	%xmm4, %xmm0
	movsd	%xmm3, (%rbx)
	movapd	%xmm0, %xmm2
	mulsd	%xmm0, %xmm2
	movapd	%xmm1, %xmm3
	mulsd	%xmm1, %xmm3
	addsd	%xmm2, %xmm3
	xorps	%xmm2, %xmm2
	sqrtsd	%xmm3, %xmm2
	movsd	%xmm2, -16(%rbp)                # 8-byte Spill
	callq	atan2@PLT
	divsd	.LCPI21_18(%rip), %xmm0
	mulsd	.LCPI21_19(%rip), %xmm0
	movsd	%xmm0, 16(%rbx)
	movsd	.LCPI21_20(%rip), %xmm0         # xmm0 = [1.0E+0,0.0E+0]
	movsd	-16(%rbp), %xmm1                # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 8(%rbx)
	movq	%rbx, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end21:
	.size	color_xyz_to_oklch, .Lfunc_end21-color_xyz_to_oklch
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function color_lab_to_oklch
.LCPI22_0:
	.quad	0x4059000000000000              # double 100
.LCPI22_1:
	.quad	0x406fe00000000000              # double 255
.LCPI22_2:
	.quad	0xc060000000000000              # double -128
.LCPI22_3:
	.quad	0x4030000000000000              # double 16
.LCPI22_4:
	.quad	0x407f400000000000              # double 500
.LCPI22_6:
	.quad	0xbfc1a7b9611a7b96              # double -0.13793103448275862
.LCPI22_7:
	.quad	0x3fc07004ded20922              # double 0.12841854934601665
.LCPI22_8:
	.quad	0x3fca7b9611a7b961              # double 0.20689655172413793
.LCPI22_9:
	.quad	0x3fee6a67e846a5d7              # double 0.95048900000000003
.LCPI22_10:
	.quad	0x3ff16be37de939eb              # double 1.08884
.LCPI22_11:
	.quad	0x3fd728d320078e3d              # double 0.3618667424
.LCPI22_12:
	.quad	0x3fea34b2ffffd19d              # double 0.81893301009999997
.LCPI22_13:
	.quad	0xbfc07e79a00e84a6              # double -0.12885971369999999
.LCPI22_14:
	.quad	0x3fedbcec3ffc10d5              # double 0.92931187150000005
.LCPI22_15:
	.quad	0x3fa0e359a0122b3c              # double 0.032984543599999999
.LCPI22_16:
	.quad	0x3fa281ae60381493              # double 0.036145638700000003
.LCPI22_17:
	.quad	0x3fd0eb607ffccd61              # double 0.2643662691
.LCPI22_18:
	.quad	0x3fa8adb5bfc6d32e              # double 0.048200301799999998
.LCPI22_19:
	.quad	0x3fe4488360028552              # double 0.63385170700000004
.LCPI22_20:
	.quad	0x3fe913659ae4725b              # double 0.78361778500000001
.LCPI22_21:
	.quad	0x3fcaf02a3fe8a4fa              # double 0.2104542553
.LCPI22_22:
	.quad	0xbf70add9bd572b38              # double -0.0040720467999999996
.LCPI22_23:
	.quad	0xc0036dc1bffe5d3e              # double -2.4285922050000002
.LCPI22_24:
	.quad	0x3fffa5e1bfffde12              # double 1.9779984951
.LCPI22_25:
	.quad	0x3fdcd686fff371a5              # double 0.45059370989999997
.LCPI22_26:
	.quad	0x3fe90c776001f502              # double 0.7827717662
.LCPI22_27:
	.quad	0x3f9a869680b729e0              # double 0.025904037099999999
.LCPI22_28:
	.quad	0xbfe9e0ac0001353d              # double -0.80867576600000002
.LCPI22_29:
	.quad	0x400921fb54442d18              # double 3.1415926535897931
.LCPI22_30:
	.quad	0x3fe0000000000000              # double 0.5
.LCPI22_31:
	.quad	0x3ff0000000000000              # double 1
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI22_5:
	.quad	0x405d000000000000              # double 116
	.quad	0x4069000000000000              # double 200
	.text
	.globl	color_lab_to_oklch
	.p2align	4
	.type	color_lab_to_oklch,@function
color_lab_to_oklch:                     # @color_lab_to_oklch
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movsd	16(%rbp), %xmm0                 # xmm0 = mem[0],zero
	mulsd	.LCPI22_0(%rip), %xmm0
	movsd	.LCPI22_1(%rip), %xmm1          # xmm1 = [2.55E+2,0.0E+0]
	movsd	24(%rbp), %xmm2                 # xmm2 = mem[0],zero
	mulsd	%xmm1, %xmm2
	movsd	.LCPI22_2(%rip), %xmm3          # xmm3 = [-1.28E+2,0.0E+0]
	addsd	%xmm3, %xmm2
	mulsd	32(%rbp), %xmm1
	addsd	.LCPI22_3(%rip), %xmm0
	addsd	%xmm3, %xmm1
	unpcklpd	%xmm1, %xmm0                    # xmm0 = xmm0[0],xmm1[0]
	divsd	.LCPI22_4(%rip), %xmm2
	divpd	.LCPI22_5(%rip), %xmm0
	addsd	%xmm0, %xmm2
	movapd	%xmm2, %xmm5
	mulsd	%xmm2, %xmm5
	mulsd	%xmm2, %xmm5
	movsd	.LCPI22_6(%rip), %xmm3          # xmm3 = [-1.3793103448275862E-1,0.0E+0]
	movsd	.LCPI22_8(%rip), %xmm7          # xmm7 = [2.0689655172413793E-1,0.0E+0]
	movapd	%xmm7, %xmm1
	cmpltsd	%xmm2, %xmm1
	addsd	%xmm3, %xmm2
	movsd	.LCPI22_7(%rip), %xmm4          # xmm4 = [1.2841854934601665E-1,0.0E+0]
	mulsd	%xmm4, %xmm2
	andpd	%xmm1, %xmm5
	andnpd	%xmm2, %xmm1
	orpd	%xmm5, %xmm1
	mulsd	.LCPI22_9(%rip), %xmm1
	movapd	%xmm0, %xmm5
	mulsd	%xmm0, %xmm5
	mulsd	%xmm0, %xmm5
	movapd	%xmm0, %xmm6
	addsd	%xmm3, %xmm6
	mulsd	%xmm4, %xmm6
	movapd	%xmm7, %xmm2
	cmpltsd	%xmm0, %xmm2
	andpd	%xmm2, %xmm5
	andnpd	%xmm6, %xmm2
	orpd	%xmm5, %xmm2
	movapd	%xmm0, %xmm5
	unpckhpd	%xmm0, %xmm5                    # xmm5 = xmm5[1],xmm0[1]
	subsd	%xmm5, %xmm0
	movapd	%xmm0, %xmm5
	mulsd	%xmm0, %xmm5
	mulsd	%xmm0, %xmm5
	addsd	%xmm0, %xmm3
	mulsd	%xmm4, %xmm3
	cmpltsd	%xmm0, %xmm7
	andpd	%xmm7, %xmm5
	andnpd	%xmm3, %xmm7
	orpd	%xmm5, %xmm7
	mulsd	.LCPI22_10(%rip), %xmm7
	movsd	.LCPI22_11(%rip), %xmm0         # xmm0 = [3.618667424E-1,0.0E+0]
	mulsd	%xmm2, %xmm0
	movsd	.LCPI22_12(%rip), %xmm3         # xmm3 = [8.1893301009999997E-1,0.0E+0]
	mulsd	%xmm1, %xmm3
	addsd	%xmm0, %xmm3
	movsd	.LCPI22_13(%rip), %xmm0         # xmm0 = [-1.2885971369999999E-1,0.0E+0]
	mulsd	%xmm7, %xmm0
	addsd	%xmm3, %xmm0
	movsd	.LCPI22_14(%rip), %xmm3         # xmm3 = [9.2931187150000005E-1,0.0E+0]
	mulsd	%xmm2, %xmm3
	movsd	.LCPI22_15(%rip), %xmm4         # xmm4 = [3.2984543599999999E-2,0.0E+0]
	mulsd	%xmm1, %xmm4
	addsd	%xmm3, %xmm4
	movsd	.LCPI22_16(%rip), %xmm3         # xmm3 = [3.6145638700000003E-2,0.0E+0]
	mulsd	%xmm7, %xmm3
	addsd	%xmm4, %xmm3
	movsd	%xmm3, -16(%rbp)                # 8-byte Spill
	mulsd	.LCPI22_17(%rip), %xmm2
	mulsd	.LCPI22_18(%rip), %xmm1
	addsd	%xmm2, %xmm1
	mulsd	.LCPI22_19(%rip), %xmm7
	addsd	%xmm1, %xmm7
	movapd	%xmm7, -48(%rbp)                # 16-byte Spill
	callq	cbrt@PLT
	movsd	%xmm0, -24(%rbp)                # 8-byte Spill
	movsd	-16(%rbp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	cbrt@PLT
	movsd	%xmm0, -16(%rbp)                # 8-byte Spill
	movapd	-48(%rbp), %xmm0                # 16-byte Reload
	callq	cbrt@PLT
	movsd	.LCPI22_20(%rip), %xmm1         # xmm1 = [7.8361778500000001E-1,0.0E+0]
	movsd	-16(%rbp), %xmm5                # 8-byte Reload
                                        # xmm5 = mem[0],zero
	mulsd	%xmm5, %xmm1
	movsd	.LCPI22_21(%rip), %xmm2         # xmm2 = [2.104542553E-1,0.0E+0]
	movsd	-24(%rbp), %xmm4                # 8-byte Reload
                                        # xmm4 = mem[0],zero
	mulsd	%xmm4, %xmm2
	addsd	%xmm1, %xmm2
	movsd	.LCPI22_22(%rip), %xmm3         # xmm3 = [-4.0720467999999996E-3,0.0E+0]
	mulsd	%xmm0, %xmm3
	addsd	%xmm2, %xmm3
	movsd	.LCPI22_23(%rip), %xmm1         # xmm1 = [-2.4285922050000002E+0,0.0E+0]
	mulsd	%xmm5, %xmm1
	movsd	.LCPI22_24(%rip), %xmm2         # xmm2 = [1.9779984951E+0,0.0E+0]
	mulsd	%xmm4, %xmm2
	addsd	%xmm1, %xmm2
	movsd	.LCPI22_25(%rip), %xmm1         # xmm1 = [4.5059370989999997E-1,0.0E+0]
	mulsd	%xmm0, %xmm1
	mulsd	.LCPI22_26(%rip), %xmm5
	mulsd	.LCPI22_27(%rip), %xmm4
	addsd	%xmm2, %xmm1
	addsd	%xmm5, %xmm4
	mulsd	.LCPI22_28(%rip), %xmm0
	addsd	%xmm4, %xmm0
	movsd	%xmm3, (%rbx)
	movapd	%xmm0, %xmm2
	mulsd	%xmm0, %xmm2
	movapd	%xmm1, %xmm3
	mulsd	%xmm1, %xmm3
	addsd	%xmm2, %xmm3
	xorps	%xmm2, %xmm2
	sqrtsd	%xmm3, %xmm2
	movsd	%xmm2, -16(%rbp)                # 8-byte Spill
	callq	atan2@PLT
	divsd	.LCPI22_29(%rip), %xmm0
	mulsd	.LCPI22_30(%rip), %xmm0
	movsd	%xmm0, 16(%rbx)
	movsd	.LCPI22_31(%rip), %xmm0         # xmm0 = [1.0E+0,0.0E+0]
	movsd	-16(%rbp), %xmm1                # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 8(%rbx)
	movq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end22:
	.size	color_lab_to_oklch, .Lfunc_end22-color_lab_to_oklch
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function color_lch_to_oklch
.LCPI23_0:
	.quad	0x3ff0000000000000              # double 1
.LCPI23_1:
	.quad	0x400921fb54442d18              # double 3.1415926535897931
.LCPI23_2:
	.quad	0x4060000000000000              # double 128
.LCPI23_3:
	.quad	0x406fe00000000000              # double 255
.LCPI23_4:
	.quad	0x4059000000000000              # double 100
.LCPI23_5:
	.quad	0xc060000000000000              # double -128
.LCPI23_6:
	.quad	0x4030000000000000              # double 16
.LCPI23_7:
	.quad	0x407f400000000000              # double 500
.LCPI23_9:
	.quad	0xbfc1a7b9611a7b96              # double -0.13793103448275862
.LCPI23_10:
	.quad	0x3fc07004ded20922              # double 0.12841854934601665
.LCPI23_11:
	.quad	0x3fca7b9611a7b961              # double 0.20689655172413793
.LCPI23_12:
	.quad	0x3fee6a67e846a5d7              # double 0.95048900000000003
.LCPI23_13:
	.quad	0x3ff16be37de939eb              # double 1.08884
.LCPI23_14:
	.quad	0x3fd728d320078e3d              # double 0.3618667424
.LCPI23_15:
	.quad	0x3fea34b2ffffd19d              # double 0.81893301009999997
.LCPI23_16:
	.quad	0xbfc07e79a00e84a6              # double -0.12885971369999999
.LCPI23_17:
	.quad	0x3fedbcec3ffc10d5              # double 0.92931187150000005
.LCPI23_18:
	.quad	0x3fa0e359a0122b3c              # double 0.032984543599999999
.LCPI23_19:
	.quad	0x3fa281ae60381493              # double 0.036145638700000003
.LCPI23_20:
	.quad	0x3fd0eb607ffccd61              # double 0.2643662691
.LCPI23_21:
	.quad	0x3fa8adb5bfc6d32e              # double 0.048200301799999998
.LCPI23_22:
	.quad	0x3fe4488360028552              # double 0.63385170700000004
.LCPI23_23:
	.quad	0x3fe913659ae4725b              # double 0.78361778500000001
.LCPI23_24:
	.quad	0x3fcaf02a3fe8a4fa              # double 0.2104542553
.LCPI23_25:
	.quad	0xbf70add9bd572b38              # double -0.0040720467999999996
.LCPI23_26:
	.quad	0xc0036dc1bffe5d3e              # double -2.4285922050000002
.LCPI23_27:
	.quad	0x3fffa5e1bfffde12              # double 1.9779984951
.LCPI23_28:
	.quad	0x3fdcd686fff371a5              # double 0.45059370989999997
.LCPI23_29:
	.quad	0x3fe90c776001f502              # double 0.7827717662
.LCPI23_30:
	.quad	0x3f9a869680b729e0              # double 0.025904037099999999
.LCPI23_31:
	.quad	0xbfe9e0ac0001353d              # double -0.80867576600000002
.LCPI23_32:
	.quad	0x3fe0000000000000              # double 0.5
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI23_8:
	.quad	0x405d000000000000              # double 116
	.quad	0x4069000000000000              # double 200
	.text
	.globl	color_lch_to_oklch
	.p2align	4
	.type	color_lch_to_oklch,@function
color_lch_to_oklch:                     # @color_lch_to_oklch
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movsd	16(%rbp), %xmm0                 # xmm0 = mem[0],zero
	movaps	%xmm0, -48(%rbp)                # 16-byte Spill
	movsd	24(%rbp), %xmm1                 # xmm1 = mem[0],zero
	movsd	.LCPI23_0(%rip), %xmm0          # xmm0 = [1.0E+0,0.0E+0]
	subsd	%xmm1, %xmm0
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -16(%rbp)                # 8-byte Spill
	movsd	32(%rbp), %xmm0                 # xmm0 = mem[0],zero
	mulsd	.LCPI23_1(%rip), %xmm0
	addsd	%xmm0, %xmm0
	movsd	%xmm0, -56(%rbp)                # 8-byte Spill
	callq	cos@PLT
	mulsd	-16(%rbp), %xmm0                # 8-byte Folded Reload
	movsd	%xmm0, -32(%rbp)                # 8-byte Spill
	movsd	-56(%rbp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sin@PLT
	mulsd	-16(%rbp), %xmm0                # 8-byte Folded Reload
	movsd	.LCPI23_2(%rip), %xmm1          # xmm1 = [1.28E+2,0.0E+0]
	movsd	-32(%rbp), %xmm3                # 8-byte Reload
                                        # xmm3 = mem[0],zero
	addsd	%xmm1, %xmm3
	movsd	.LCPI23_3(%rip), %xmm2          # xmm2 = [2.55E+2,0.0E+0]
	divsd	%xmm2, %xmm3
	addsd	%xmm1, %xmm0
	divsd	%xmm2, %xmm0
	movapd	-48(%rbp), %xmm5                # 16-byte Reload
	mulsd	.LCPI23_4(%rip), %xmm5
	mulsd	%xmm2, %xmm3
	movsd	.LCPI23_5(%rip), %xmm1          # xmm1 = [-1.28E+2,0.0E+0]
	addsd	%xmm1, %xmm3
	mulsd	%xmm2, %xmm0
	addsd	.LCPI23_6(%rip), %xmm5
	addsd	%xmm1, %xmm0
	unpcklpd	%xmm0, %xmm5                    # xmm5 = xmm5[0],xmm0[0]
	divsd	.LCPI23_7(%rip), %xmm3
	divpd	.LCPI23_8(%rip), %xmm5
	addsd	%xmm5, %xmm3
	movapd	%xmm3, %xmm2
	mulsd	%xmm3, %xmm2
	mulsd	%xmm3, %xmm2
	movsd	.LCPI23_9(%rip), %xmm0          # xmm0 = [-1.3793103448275862E-1,0.0E+0]
	movapd	%xmm3, %xmm4
	movapd	%xmm3, %xmm7
	addsd	%xmm0, %xmm4
	movsd	.LCPI23_10(%rip), %xmm3         # xmm3 = [1.2841854934601665E-1,0.0E+0]
	mulsd	%xmm3, %xmm4
	movsd	.LCPI23_11(%rip), %xmm6         # xmm6 = [2.0689655172413793E-1,0.0E+0]
	movapd	%xmm6, %xmm1
	cmpltsd	%xmm7, %xmm1
	andpd	%xmm1, %xmm2
	andnpd	%xmm4, %xmm1
	orpd	%xmm2, %xmm1
	mulsd	.LCPI23_12(%rip), %xmm1
	movapd	%xmm5, %xmm4
	mulsd	%xmm5, %xmm4
	mulsd	%xmm5, %xmm4
	movapd	%xmm5, %xmm7
	addsd	%xmm0, %xmm5
	mulsd	%xmm3, %xmm5
	movapd	%xmm6, %xmm2
	cmpltsd	%xmm7, %xmm2
	andpd	%xmm2, %xmm4
	andnpd	%xmm5, %xmm2
	orpd	%xmm4, %xmm2
	movapd	%xmm7, %xmm5
	movapd	%xmm7, %xmm4
	unpckhpd	%xmm7, %xmm4                    # xmm4 = xmm4[1],xmm7[1]
	subsd	%xmm4, %xmm5
	movapd	%xmm5, %xmm4
	mulsd	%xmm5, %xmm4
	mulsd	%xmm5, %xmm4
	addsd	%xmm5, %xmm0
	mulsd	%xmm3, %xmm0
	cmpltsd	%xmm5, %xmm6
	andpd	%xmm6, %xmm4
	andnpd	%xmm0, %xmm6
	orpd	%xmm4, %xmm6
	mulsd	.LCPI23_13(%rip), %xmm6
	movsd	.LCPI23_14(%rip), %xmm0         # xmm0 = [3.618667424E-1,0.0E+0]
	mulsd	%xmm2, %xmm0
	movsd	.LCPI23_15(%rip), %xmm3         # xmm3 = [8.1893301009999997E-1,0.0E+0]
	mulsd	%xmm1, %xmm3
	addsd	%xmm0, %xmm3
	movsd	.LCPI23_16(%rip), %xmm0         # xmm0 = [-1.2885971369999999E-1,0.0E+0]
	mulsd	%xmm6, %xmm0
	addsd	%xmm3, %xmm0
	movsd	.LCPI23_17(%rip), %xmm3         # xmm3 = [9.2931187150000005E-1,0.0E+0]
	mulsd	%xmm2, %xmm3
	movsd	.LCPI23_18(%rip), %xmm4         # xmm4 = [3.2984543599999999E-2,0.0E+0]
	mulsd	%xmm1, %xmm4
	addsd	%xmm3, %xmm4
	movsd	.LCPI23_19(%rip), %xmm3         # xmm3 = [3.6145638700000003E-2,0.0E+0]
	mulsd	%xmm6, %xmm3
	addsd	%xmm4, %xmm3
	movsd	%xmm3, -16(%rbp)                # 8-byte Spill
	mulsd	.LCPI23_20(%rip), %xmm2
	mulsd	.LCPI23_21(%rip), %xmm1
	addsd	%xmm2, %xmm1
	mulsd	.LCPI23_22(%rip), %xmm6
	addsd	%xmm1, %xmm6
	movapd	%xmm6, -32(%rbp)                # 16-byte Spill
	callq	cbrt@PLT
	movsd	%xmm0, -48(%rbp)                # 8-byte Spill
	movsd	-16(%rbp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	cbrt@PLT
	movsd	%xmm0, -16(%rbp)                # 8-byte Spill
	movapd	-32(%rbp), %xmm0                # 16-byte Reload
	callq	cbrt@PLT
	movsd	.LCPI23_23(%rip), %xmm1         # xmm1 = [7.8361778500000001E-1,0.0E+0]
	movsd	-16(%rbp), %xmm5                # 8-byte Reload
                                        # xmm5 = mem[0],zero
	mulsd	%xmm5, %xmm1
	movsd	.LCPI23_24(%rip), %xmm2         # xmm2 = [2.104542553E-1,0.0E+0]
	movsd	-48(%rbp), %xmm4                # 8-byte Reload
                                        # xmm4 = mem[0],zero
	mulsd	%xmm4, %xmm2
	addsd	%xmm1, %xmm2
	movsd	.LCPI23_25(%rip), %xmm3         # xmm3 = [-4.0720467999999996E-3,0.0E+0]
	mulsd	%xmm0, %xmm3
	addsd	%xmm2, %xmm3
	movsd	.LCPI23_26(%rip), %xmm1         # xmm1 = [-2.4285922050000002E+0,0.0E+0]
	mulsd	%xmm5, %xmm1
	movsd	.LCPI23_27(%rip), %xmm2         # xmm2 = [1.9779984951E+0,0.0E+0]
	mulsd	%xmm4, %xmm2
	addsd	%xmm1, %xmm2
	movsd	.LCPI23_28(%rip), %xmm1         # xmm1 = [4.5059370989999997E-1,0.0E+0]
	mulsd	%xmm0, %xmm1
	mulsd	.LCPI23_29(%rip), %xmm5
	mulsd	.LCPI23_30(%rip), %xmm4
	addsd	%xmm2, %xmm1
	addsd	%xmm5, %xmm4
	mulsd	.LCPI23_31(%rip), %xmm0
	addsd	%xmm4, %xmm0
	movsd	%xmm3, (%rbx)
	movapd	%xmm0, %xmm2
	mulsd	%xmm0, %xmm2
	movapd	%xmm1, %xmm3
	mulsd	%xmm1, %xmm3
	addsd	%xmm2, %xmm3
	xorps	%xmm2, %xmm2
	sqrtsd	%xmm3, %xmm2
	movsd	%xmm2, -16(%rbp)                # 8-byte Spill
	callq	atan2@PLT
	divsd	.LCPI23_1(%rip), %xmm0
	mulsd	.LCPI23_32(%rip), %xmm0
	movsd	%xmm0, 16(%rbx)
	movsd	.LCPI23_0(%rip), %xmm0          # xmm0 = [1.0E+0,0.0E+0]
	movsd	-16(%rbp), %xmm1                # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 8(%rbx)
	movq	%rbx, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end23:
	.size	color_lch_to_oklch, .Lfunc_end23-color_lch_to_oklch
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function color_oklch_to_xyz
.LCPI24_0:
	.quad	0x3ff0000000000000              # double 1
.LCPI24_1:
	.quad	0x400921fb54442d18              # double 3.1415926535897931
.LCPI24_2:
	.quad	0x3fd94c20e68dfa67              # double 0.39527151599023685
.LCPI24_3:
	.quad	0x3ff0295facdb51a2              # double 1.0101010086264997
.LCPI24_4:
	.quad	0x3fcb8a528c8fe853              # double 0.21515876639733963
.LCPI24_5:
	.quad	0xbfbb4bf29662f1fb              # double -0.10662761851830986
.LCPI24_6:
	.quad	0x3ff0295fafaf6395              # double 1.0101010191631066
.LCPI24_7:
	.quad	0xbfb08304727cad52              # double -0.064499166441853079
.LCPI24_8:
	.quad	0xbfb72e50993390f6              # double -0.090550458338444744
.LCPI24_9:
	.quad	0x3ff0295fbc19e22a              # double 1.0101010654162885
.LCPI24_10:
	.quad	0xbff4ac910fea3bac              # double -1.2921305295637735
.LCPI24_11:
	.quad	0x4008000000000000              # double 3
.LCPI24_15:
	.quad	0xbfdaf98f8c4a28d4              # double -0.4214819784180126
.LCPI24_16:
	.quad	0xbfb38db94efa7dd7              # double -0.076381284505706901
.LCPI24_17:
	.quad	0x3ff960ecaf5e947d              # double 1.5861632204407947
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI24_12:
	.quad	0xbfe1d97f58537d01              # double -0.55779998065182224
	.quad	0x3ff1cbcddbfc1706              # double 1.11225686961683
.LCPI24_13:
	.quad	0x3ff3a1d946a3a87f              # double 1.2270138511035211
	.quad	0xbfa4c6ecd6633e58              # double -0.0405801784232806
.LCPI24_14:
	.quad	0x3fd20019ca670854              # double 0.28125614896646778
	.quad	0xbfb259671ec13146              # double -0.071676678665601207
	.text
	.globl	color_oklch_to_xyz
	.p2align	4
	.type	color_oklch_to_xyz,@function
color_oklch_to_xyz:                     # @color_oklch_to_xyz
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movsd	16(%rbp), %xmm0                 # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)                # 8-byte Spill
	movsd	24(%rbp), %xmm1                 # xmm1 = mem[0],zero
	movsd	32(%rbp), %xmm2                 # xmm2 = mem[0],zero
	movsd	.LCPI24_0(%rip), %xmm0          # xmm0 = [1.0E+0,0.0E+0]
	subsd	%xmm1, %xmm0
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -32(%rbp)                # 8-byte Spill
	movapd	%xmm2, %xmm0
	mulsd	.LCPI24_1(%rip), %xmm0
	addsd	%xmm0, %xmm0
	movsd	%xmm0, -56(%rbp)                # 8-byte Spill
	callq	cos@PLT
	mulsd	-32(%rbp), %xmm0                # 8-byte Folded Reload
	movsd	%xmm0, -16(%rbp)                # 8-byte Spill
	movsd	-56(%rbp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sin@PLT
	movapd	%xmm0, %xmm4
	mulsd	-32(%rbp), %xmm4                # 8-byte Folded Reload
	movsd	.LCPI24_2(%rip), %xmm0          # xmm0 = [3.9527151599023685E-1,0.0E+0]
	movsd	-16(%rbp), %xmm5                # 8-byte Reload
                                        # xmm5 = mem[0],zero
	mulsd	%xmm5, %xmm0
	movsd	.LCPI24_3(%rip), %xmm1          # xmm1 = [1.0101010086264997E+0,0.0E+0]
	movsd	-48(%rbp), %xmm3                # 8-byte Reload
                                        # xmm3 = mem[0],zero
	mulsd	%xmm3, %xmm1
	addsd	%xmm0, %xmm1
	movsd	.LCPI24_4(%rip), %xmm0          # xmm0 = [2.1515876639733963E-1,0.0E+0]
	mulsd	%xmm4, %xmm0
	addsd	%xmm1, %xmm0
	movsd	.LCPI24_5(%rip), %xmm1          # xmm1 = [-1.0662761851830986E-1,0.0E+0]
	mulsd	%xmm5, %xmm1
	movsd	.LCPI24_6(%rip), %xmm2          # xmm2 = [1.0101010191631066E+0,0.0E+0]
	mulsd	%xmm3, %xmm2
	addsd	%xmm1, %xmm2
	movsd	.LCPI24_7(%rip), %xmm1          # xmm1 = [-6.4499166441853079E-2,0.0E+0]
	mulsd	%xmm4, %xmm1
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -32(%rbp)                # 8-byte Spill
	mulsd	.LCPI24_8(%rip), %xmm5
	movapd	%xmm3, %xmm1
	mulsd	.LCPI24_9(%rip), %xmm1
	addsd	%xmm5, %xmm1
	mulsd	.LCPI24_10(%rip), %xmm4
	addsd	%xmm1, %xmm4
	movsd	%xmm4, -16(%rbp)                # 8-byte Spill
	movsd	.LCPI24_11(%rip), %xmm1         # xmm1 = [3.0E+0,0.0E+0]
	callq	pow@PLT
	movapd	%xmm0, -48(%rbp)                # 16-byte Spill
	movsd	-32(%rbp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI24_11(%rip), %xmm1         # xmm1 = [3.0E+0,0.0E+0]
	callq	pow@PLT
	movaps	%xmm0, -32(%rbp)                # 16-byte Spill
	movsd	-16(%rbp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI24_11(%rip), %xmm1         # xmm1 = [3.0E+0,0.0E+0]
	callq	pow@PLT
	movapd	-32(%rbp), %xmm4                # 16-byte Reload
	movapd	%xmm4, %xmm1
	unpcklpd	%xmm4, %xmm1                    # xmm1 = xmm1[0],xmm4[0]
	mulpd	.LCPI24_12(%rip), %xmm1
	movapd	-48(%rbp), %xmm3                # 16-byte Reload
	movapd	%xmm3, %xmm2
	unpcklpd	%xmm3, %xmm2                    # xmm2 = xmm2[0],xmm3[0]
	mulpd	.LCPI24_13(%rip), %xmm2
	addpd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	unpcklpd	%xmm0, %xmm1                    # xmm1 = xmm1[0],xmm0[0]
	mulpd	.LCPI24_14(%rip), %xmm1
	addpd	%xmm2, %xmm1
	movupd	%xmm1, (%rbx)
	movapd	%xmm4, %xmm2
	mulsd	.LCPI24_15(%rip), %xmm2
	movapd	%xmm3, %xmm1
	mulsd	.LCPI24_16(%rip), %xmm1
	mulsd	.LCPI24_17(%rip), %xmm0
	addsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 16(%rbx)
	movq	%rbx, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end24:
	.size	color_oklch_to_xyz, .Lfunc_end24-color_oklch_to_xyz
	.cfi_endproc
                                        # -- End function
	.globl	color_xyz_lerp                  # -- Begin function color_xyz_lerp
	.p2align	4
	.type	color_xyz_lerp,@function
color_xyz_lerp:                         # @color_xyz_lerp
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, %rax
	movapd	16(%rbp), %xmm1
	movupd	40(%rbp), %xmm2
	subpd	%xmm1, %xmm2
	movsd	32(%rbp), %xmm3                 # xmm3 = mem[0],zero
	movsd	56(%rbp), %xmm4                 # xmm4 = mem[0],zero
	subsd	%xmm3, %xmm4
	mulsd	%xmm0, %xmm4
	unpcklpd	%xmm0, %xmm0                    # xmm0 = xmm0[0,0]
	mulpd	%xmm2, %xmm0
	addpd	%xmm1, %xmm0
	movupd	%xmm0, (%rdi)
	addsd	%xmm3, %xmm4
	movsd	%xmm4, 16(%rdi)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end25:
	.size	color_xyz_lerp, .Lfunc_end25-color_xyz_lerp
	.cfi_endproc
                                        # -- End function
	.globl	color_lab_lerp                  # -- Begin function color_lab_lerp
	.p2align	4
	.type	color_lab_lerp,@function
color_lab_lerp:                         # @color_lab_lerp
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, %rax
	movapd	16(%rbp), %xmm1
	movupd	40(%rbp), %xmm2
	subpd	%xmm1, %xmm2
	movsd	32(%rbp), %xmm3                 # xmm3 = mem[0],zero
	movsd	56(%rbp), %xmm4                 # xmm4 = mem[0],zero
	subsd	%xmm3, %xmm4
	mulsd	%xmm0, %xmm4
	unpcklpd	%xmm0, %xmm0                    # xmm0 = xmm0[0,0]
	mulpd	%xmm2, %xmm0
	addpd	%xmm1, %xmm0
	movupd	%xmm0, (%rdi)
	addsd	%xmm3, %xmm4
	movsd	%xmm4, 16(%rdi)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end26:
	.size	color_lab_lerp, .Lfunc_end26-color_lab_lerp
	.cfi_endproc
                                        # -- End function
	.globl	color_lch_lerp                  # -- Begin function color_lch_lerp
	.p2align	4
	.type	color_lch_lerp,@function
color_lch_lerp:                         # @color_lch_lerp
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, %rax
	movapd	16(%rbp), %xmm1
	movupd	40(%rbp), %xmm2
	subpd	%xmm1, %xmm2
	movsd	32(%rbp), %xmm3                 # xmm3 = mem[0],zero
	movsd	56(%rbp), %xmm4                 # xmm4 = mem[0],zero
	subsd	%xmm3, %xmm4
	mulsd	%xmm0, %xmm4
	unpcklpd	%xmm0, %xmm0                    # xmm0 = xmm0[0,0]
	mulpd	%xmm2, %xmm0
	addpd	%xmm1, %xmm0
	movupd	%xmm0, (%rdi)
	addsd	%xmm3, %xmm4
	movsd	%xmm4, 16(%rdi)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end27:
	.size	color_lch_lerp, .Lfunc_end27-color_lch_lerp
	.cfi_endproc
                                        # -- End function
	.globl	color_oklab_lerp                # -- Begin function color_oklab_lerp
	.p2align	4
	.type	color_oklab_lerp,@function
color_oklab_lerp:                       # @color_oklab_lerp
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, %rax
	movapd	16(%rbp), %xmm1
	movupd	40(%rbp), %xmm2
	subpd	%xmm1, %xmm2
	movsd	32(%rbp), %xmm3                 # xmm3 = mem[0],zero
	movsd	56(%rbp), %xmm4                 # xmm4 = mem[0],zero
	subsd	%xmm3, %xmm4
	mulsd	%xmm0, %xmm4
	unpcklpd	%xmm0, %xmm0                    # xmm0 = xmm0[0,0]
	mulpd	%xmm2, %xmm0
	addpd	%xmm1, %xmm0
	movupd	%xmm0, (%rdi)
	addsd	%xmm3, %xmm4
	movsd	%xmm4, 16(%rdi)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end28:
	.size	color_oklab_lerp, .Lfunc_end28-color_oklab_lerp
	.cfi_endproc
                                        # -- End function
	.globl	color_oklch_lerp                # -- Begin function color_oklch_lerp
	.p2align	4
	.type	color_oklch_lerp,@function
color_oklch_lerp:                       # @color_oklch_lerp
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, %rax
	movapd	16(%rbp), %xmm1
	movupd	40(%rbp), %xmm2
	subpd	%xmm1, %xmm2
	movsd	32(%rbp), %xmm3                 # xmm3 = mem[0],zero
	movsd	56(%rbp), %xmm4                 # xmm4 = mem[0],zero
	subsd	%xmm3, %xmm4
	mulsd	%xmm0, %xmm4
	unpcklpd	%xmm0, %xmm0                    # xmm0 = xmm0[0,0]
	mulpd	%xmm2, %xmm0
	addpd	%xmm1, %xmm0
	movupd	%xmm0, (%rdi)
	addsd	%xmm3, %xmm4
	movsd	%xmm4, 16(%rdi)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end29:
	.size	color_oklch_lerp, .Lfunc_end29-color_oklch_lerp
	.cfi_endproc
                                        # -- End function
	.globl	color_install_handler           # -- Begin function color_install_handler
	.p2align	4
	.type	color_install_handler,@function
color_install_handler:                  # @color_install_handler
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	handler_count(%rip), %rax
	imulq	$56, %rax, %rcx
	leaq	handlers(%rip), %rdx
	movq	64(%rbp), %rsi
	movq	%rsi, 48(%rcx,%rdx)
	movaps	16(%rbp), %xmm0
	movaps	32(%rbp), %xmm1
	movaps	48(%rbp), %xmm2
	movups	%xmm2, 32(%rcx,%rdx)
	movups	%xmm1, 16(%rcx,%rdx)
	movups	%xmm0, (%rcx,%rdx)
	incq	%rax
	movq	%rax, handler_count(%rip)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end30:
	.size	color_install_handler, .Lfunc_end30-color_install_handler
	.cfi_endproc
                                        # -- End function
	.globl	color_run_handler               # -- Begin function color_run_handler
	.p2align	4
	.type	color_run_handler,@function
color_run_handler:                      # @color_run_handler
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rdi, %rbx
	cmpq	$4, %rdi
	jb	.LBB31_2
# %bb.1:
	leaq	.Lstr(%rip), %rdi
	callq	puts@PLT
.LBB31_2:
	leaq	16(%rbp), %r14
	cmpq	handler_count(%rip), %rbx
	jbe	.LBB31_4
# %bb.3:
	leaq	.Lstr.4(%rip), %rdi
	callq	puts@PLT
.LBB31_4:
	imulq	$56, %rbx, %rcx
	leaq	handlers(%rip), %rax
	movl	48(%rcx,%rax), %edx
	movl	24(%r14), %esi
	cmpl	$1, %esi
	sete	%dil
	andb	%dl, %dil
	cmpb	$1, %dil
	jne	.LBB31_6
# %bb.5:
	addq	%rcx, %rax
	movq	16(%r14), %rcx
	movq	%rcx, 16(%rsp)
	movups	(%r14), %xmm0
	movups	%xmm0, (%rsp)
	callq	*(%rax)
	jmp	.LBB31_9
.LBB31_6:
	movl	%edx, %edi
	shrb	%dil
	cmpl	$2, %esi
	sete	%r8b
	andb	%dil, %r8b
	cmpb	$1, %r8b
	jne	.LBB31_10
# %bb.7:
	movq	8(%rcx,%rax), %rax
	jmp	.LBB31_8
.LBB31_10:
	movl	%edx, %edi
	shrb	$2, %dil
	cmpl	$4, %esi
	sete	%r8b
	andb	%dil, %r8b
	cmpb	$1, %r8b
	jne	.LBB31_12
# %bb.11:
	movq	16(%rcx,%rax), %rax
	jmp	.LBB31_8
.LBB31_12:
	movl	%edx, %edi
	shrb	$3, %dil
	cmpl	$8, %esi
	sete	%r8b
	andb	%dil, %r8b
	cmpb	$1, %r8b
	jne	.LBB31_14
# %bb.13:
	movq	24(%rcx,%rax), %rax
	jmp	.LBB31_8
.LBB31_14:
	movl	%edx, %edi
	shrb	$4, %dil
	cmpl	$16, %esi
	sete	%r8b
	andb	%dil, %r8b
	cmpb	$1, %r8b
	jne	.LBB31_16
# %bb.15:
	movq	32(%rcx,%rax), %rax
	jmp	.LBB31_8
.LBB31_16:
	shrb	$5, %dl
	cmpl	$32, %esi
	sete	%sil
	andb	%dl, %sil
	cmpb	$1, %sil
	jne	.LBB31_9
# %bb.17:
	movq	40(%rcx,%rax), %rax
.LBB31_8:
	movq	16(%r14), %rcx
	movq	%rcx, 16(%rsp)
	movups	(%r14), %xmm0
	movups	%xmm0, (%rsp)
	callq	*%rax
.LBB31_9:
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end31:
	.size	color_run_handler, .Lfunc_end31-color_run_handler
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function linear_to_srgb
.LCPI32_0:
	.quad	0x3f69a5c37387b719              # double 0.0031308
.LCPI32_1:
	.quad	0x4029d70a3d70a3d7              # double 12.92
.LCPI32_2:
	.quad	0x3fdaaaaaaaaaaaab              # double 0.41666666666666669
.LCPI32_3:
	.quad	0x3ff0e147ae147ae1              # double 1.0549999999999999
.LCPI32_4:
	.quad	0xbfac28f5c28f5c29              # double -0.055
	.text
	.globl	linear_to_srgb
	.p2align	4
	.type	linear_to_srgb,@function
linear_to_srgb:                         # @linear_to_srgb
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rdi, %rbx
	leaq	16(%rbp), %r14
	movsd	16(%rbp), %xmm0                 # xmm0 = mem[0],zero
	movsd	.LCPI32_0(%rip), %xmm1          # xmm1 = [3.1308E-3,0.0E+0]
	ucomisd	%xmm0, %xmm1
	jae	.LBB32_1
# %bb.2:
	movsd	.LCPI32_2(%rip), %xmm1          # xmm1 = [4.1666666666666669E-1,0.0E+0]
	callq	pow@PLT
	movsd	.LCPI32_0(%rip), %xmm1          # xmm1 = [3.1308E-3,0.0E+0]
	mulsd	.LCPI32_3(%rip), %xmm0
	addsd	.LCPI32_4(%rip), %xmm0
	movsd	%xmm0, (%r14)
	movsd	8(%r14), %xmm0                  # xmm0 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB32_5
.LBB32_4:
	mulsd	.LCPI32_1(%rip), %xmm0
	movsd	%xmm0, 8(%r14)
	movsd	16(%r14), %xmm0                 # xmm0 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB32_8
.LBB32_7:
	mulsd	.LCPI32_1(%rip), %xmm0
	jmp	.LBB32_9
.LBB32_1:
	mulsd	.LCPI32_1(%rip), %xmm0
	movsd	%xmm0, (%r14)
	movsd	8(%r14), %xmm0                  # xmm0 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jae	.LBB32_4
.LBB32_5:
	movsd	.LCPI32_2(%rip), %xmm1          # xmm1 = [4.1666666666666669E-1,0.0E+0]
	callq	pow@PLT
	movsd	.LCPI32_0(%rip), %xmm1          # xmm1 = [3.1308E-3,0.0E+0]
	mulsd	.LCPI32_3(%rip), %xmm0
	addsd	.LCPI32_4(%rip), %xmm0
	movsd	%xmm0, 8(%r14)
	movsd	16(%r14), %xmm0                 # xmm0 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jae	.LBB32_7
.LBB32_8:
	movsd	.LCPI32_2(%rip), %xmm1          # xmm1 = [4.1666666666666669E-1,0.0E+0]
	callq	pow@PLT
	mulsd	.LCPI32_3(%rip), %xmm0
	addsd	.LCPI32_4(%rip), %xmm0
.LBB32_9:
	movsd	%xmm0, 16(%r14)
	movups	(%r14), %xmm0
	movups	%xmm0, (%rbx)
	movq	16(%r14), %rax
	movq	%rax, 16(%rbx)
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end32:
	.size	linear_to_srgb, .Lfunc_end32-linear_to_srgb
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function color_sample_cmf
.LCPI33_0:
	.quad	0x4076800000000000              # double 360
.LCPI33_1:
	.quad	0x4089f00000000000              # double 830
.LCPI33_2:
	.quad	0xc076800000000000              # double -360
	.text
	.globl	color_sample_cmf
	.p2align	4
	.type	color_sample_cmf,@function
color_sample_cmf:                       # @color_sample_cmf
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, %rax
	movsd	.LCPI33_0(%rip), %xmm1          # xmm1 = [3.6E+2,0.0E+0]
	ucomisd	%xmm0, %xmm1
	ja	.LBB33_2
# %bb.1:
	ucomisd	.LCPI33_1(%rip), %xmm0
	ja	.LBB33_2
# %bb.3:
	addsd	.LCPI33_2(%rip), %xmm0
	cvttsd2si	%xmm0, %ecx
	cvttpd2dq	%xmm0, %xmm1
	cvtdq2pd	%xmm1, %xmm1
	subsd	%xmm1, %xmm0
	xorl	%edx, %edx
	cmpl	$470, %ecx                      # imm = 0x1D6
	setl	%dl
	addl	%ecx, %edx
	movslq	%ecx, %rcx
	leaq	(%rcx,%rcx,2), %rcx
	leaq	cie_1931_2deg_1nm(%rip), %rsi
	movslq	%edx, %rdx
	leaq	(%rdx,%rdx,2), %rdx
	movupd	(%rsi,%rcx,8), %xmm1
	movupd	(%rsi,%rdx,8), %xmm2
	subpd	%xmm1, %xmm2
	movapd	%xmm0, %xmm3
	unpcklpd	%xmm0, %xmm3                    # xmm3 = xmm3[0],xmm0[0]
	mulpd	%xmm2, %xmm3
	addpd	%xmm1, %xmm3
	movupd	%xmm3, (%rax)
	movsd	16(%rsi,%rcx,8), %xmm1          # xmm1 = mem[0],zero
	movsd	16(%rsi,%rdx,8), %xmm2          # xmm2 = mem[0],zero
	subsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	movsd	%xmm2, 16(%rax)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB33_2:
	.cfi_def_cfa %rbp, 16
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, (%rax)
	movq	$0, 16(%rax)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end33:
	.size	color_sample_cmf, .Lfunc_end33-color_sample_cmf
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function color_planck_spectral_exitance
.LCPI34_0:
	.quad	0x3e112e0be826d695              # double 1.0000000000000001E-9
.LCPI34_1:
	.quad	0x3f8d7755a2cf4402              # double 0.014387768775039337
.LCPI34_2:
	.quad	0x4085e00000000000              # double 700
.LCPI34_3:
	.quad	0x4014000000000000              # double 5
.LCPI34_4:
	.quad	0xbff0000000000000              # double -1
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI34_5:
	.quad	0x3cbaf659cc5282c4              # double 3.7417718521927573E-16
	.quad	0x3ff0000000000000              # double 1
	.text
	.globl	color_planck_spectral_exitance
	.p2align	4
	.type	color_planck_spectral_exitance,@function
color_planck_spectral_exitance:         # @color_planck_spectral_exitance
	.cfi_startproc
# %bb.0:
	mulsd	.LCPI34_0(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	.LCPI34_1(%rip), %xmm2          # xmm2 = [1.4387768775039337E-2,0.0E+0]
	divsd	%xmm1, %xmm2
	xorpd	%xmm1, %xmm1
	ucomisd	.LCPI34_2(%rip), %xmm2
	ja	.LBB34_2
# %bb.1:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movsd	.LCPI34_3(%rip), %xmm1          # xmm1 = [5.0E+0,0.0E+0]
	movsd	%xmm2, -8(%rbp)                 # 8-byte Spill
	callq	pow@PLT
	movapd	%xmm0, -32(%rbp)                # 16-byte Spill
	movsd	-8(%rbp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	exp@PLT
	addsd	.LCPI34_4(%rip), %xmm0
	movapd	-32(%rbp), %xmm1                # 16-byte Reload
	unpcklpd	%xmm0, %xmm1                    # xmm1 = xmm1[0],xmm0[0]
	movapd	.LCPI34_5(%rip), %xmm0          # xmm0 = [3.7417718521927573E-16,1.0E+0]
	divpd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm1                    # xmm1 = xmm1[1],xmm0[1]
	mulsd	%xmm0, %xmm1
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	.cfi_restore %rbp
.LBB34_2:
	movapd	%xmm1, %xmm0
	retq
.Lfunc_end34:
	.size	color_planck_spectral_exitance, .Lfunc_end34-color_planck_spectral_exitance
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function color_kelvin_to_xyz
.LCPI35_0:
	.quad	0x4076800000000000              # double 360
.LCPI35_1:
	.quad	0x3e112e0be826d695              # double 1.0000000000000001E-9
.LCPI35_2:
	.quad	0x3f8d7755a2cf4402              # double 0.014387768775039337
.LCPI35_3:
	.quad	0x4085e00000000000              # double 700
.LCPI35_4:
	.quad	0x4014000000000000              # double 5
.LCPI35_5:
	.quad	0xbff0000000000000              # double -1
.LCPI35_7:
	.quad	0x3ff0000000000000              # double 1
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI35_6:
	.quad	0x3cbaf659cc5282c4              # double 3.7417718521927573E-16
	.quad	0x3ff0000000000000              # double 1
	.text
	.globl	color_kelvin_to_xyz
	.p2align	4
	.type	color_kelvin_to_xyz,@function
color_kelvin_to_xyz:                    # @color_kelvin_to_xyz
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$64, %rsp
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movapd	%xmm0, %xmm9
	movq	%rdi, %rbx
	xorpd	%xmm7, %xmm7
	xorpd	%xmm6, %xmm6
	movsd	.LCPI35_0(%rip), %xmm10         # xmm10 = [3.6E+2,0.0E+0]
	leaq	cie_1931_2deg_1nm+16(%rip), %r14
	xorl	%r15d, %r15d
	movsd	.LCPI35_1(%rip), %xmm11         # xmm11 = [1.0000000000000001E-9,0.0E+0]
	movsd	.LCPI35_2(%rip), %xmm12         # xmm12 = [1.4387768775039337E-2,0.0E+0]
	movsd	.LCPI35_3(%rip), %xmm13         # xmm13 = [7.0E+2,0.0E+0]
	movsd	.LCPI35_7(%rip), %xmm8          # xmm8 = [1.0E+0,0.0E+0]
	leaq	cie_1931_2deg_1nm(%rip), %r12
	movsd	%xmm0, -40(%rbp)                # 8-byte Spill
	jmp	.LBB35_1
	.p2align	4
.LBB35_5:                               #   in Loop: Header=BB35_1 Depth=1
	leaq	360(%r15), %rax
	xorps	%xmm2, %xmm2
	cvtsi2sd	%r15d, %xmm2
	subsd	%xmm2, %xmm2
	cmpl	$830, %eax                      # imm = 0x33E
	movq	%r15, %rax
	adcq	$0, %rax
	leaq	(%rax,%rax,2), %rax
	movupd	-16(%r14), %xmm3
	movupd	(%r12,%rax,8), %xmm4
	subpd	%xmm3, %xmm4
	movsd	(%r14), %xmm5                   # xmm5 = mem[0],zero
	movsd	16(%r12,%rax,8), %xmm0          # xmm0 = mem[0],zero
	subsd	%xmm5, %xmm0
	mulsd	%xmm2, %xmm0
	unpcklpd	%xmm2, %xmm2                    # xmm2 = xmm2[0,0]
	mulpd	%xmm4, %xmm2
	addpd	%xmm3, %xmm2
	addsd	%xmm5, %xmm0
.LBB35_6:                               #   in Loop: Header=BB35_1 Depth=1
	movapd	%xmm1, %xmm3
	unpcklpd	%xmm1, %xmm3                    # xmm3 = xmm3[0],xmm1[0]
	mulpd	%xmm2, %xmm3
	addpd	%xmm3, %xmm7
	mulsd	%xmm1, %xmm0
	addsd	%xmm0, %xmm6
	addsd	%xmm8, %xmm10
	incq	%r15
	addq	$24, %r14
	cmpl	$471, %r15d                     # imm = 0x1D7
	je	.LBB35_7
.LBB35_1:                               # =>This Inner Loop Header: Depth=1
	movapd	%xmm10, %xmm0
	mulsd	%xmm11, %xmm0
	movapd	%xmm9, %xmm1
	mulsd	%xmm0, %xmm1
	movapd	%xmm12, %xmm2
	divsd	%xmm1, %xmm2
	ucomisd	%xmm13, %xmm2
	xorpd	%xmm1, %xmm1
	ja	.LBB35_3
# %bb.2:                                #   in Loop: Header=BB35_1 Depth=1
	movsd	.LCPI35_4(%rip), %xmm1          # xmm1 = [5.0E+0,0.0E+0]
	movsd	%xmm6, -64(%rbp)                # 8-byte Spill
	movapd	%xmm7, -96(%rbp)                # 16-byte Spill
	movsd	%xmm10, -56(%rbp)               # 8-byte Spill
	movsd	%xmm2, -48(%rbp)                # 8-byte Spill
	callq	pow@PLT
	movapd	%xmm0, -80(%rbp)                # 16-byte Spill
	movsd	-48(%rbp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	exp@PLT
	movsd	.LCPI35_3(%rip), %xmm13         # xmm13 = [7.0E+2,0.0E+0]
	movsd	.LCPI35_2(%rip), %xmm12         # xmm12 = [1.4387768775039337E-2,0.0E+0]
	movsd	.LCPI35_1(%rip), %xmm11         # xmm11 = [1.0000000000000001E-9,0.0E+0]
	movsd	-56(%rbp), %xmm10               # 8-byte Reload
                                        # xmm10 = mem[0],zero
	movsd	-40(%rbp), %xmm9                # 8-byte Reload
                                        # xmm9 = mem[0],zero
	movsd	.LCPI35_7(%rip), %xmm8          # xmm8 = [1.0E+0,0.0E+0]
	movapd	-96(%rbp), %xmm7                # 16-byte Reload
	movsd	-64(%rbp), %xmm6                # 8-byte Reload
                                        # xmm6 = mem[0],zero
	addsd	.LCPI35_5(%rip), %xmm0
	movapd	-80(%rbp), %xmm1                # 16-byte Reload
	unpcklpd	%xmm0, %xmm1                    # xmm1 = xmm1[0],xmm0[0]
	movapd	.LCPI35_6(%rip), %xmm0          # xmm0 = [3.7417718521927573E-16,1.0E+0]
	divpd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm1                    # xmm1 = xmm1[1],xmm0[1]
	mulsd	%xmm0, %xmm1
.LBB35_3:                               #   in Loop: Header=BB35_1 Depth=1
	leal	-471(%r15), %eax
	cmpl	$-471, %eax                     # imm = 0xFE29
	jae	.LBB35_5
# %bb.4:                                #   in Loop: Header=BB35_1 Depth=1
	xorpd	%xmm2, %xmm2
	xorpd	%xmm0, %xmm0
	jmp	.LBB35_6
.LBB35_7:
	movapd	%xmm7, %xmm0
	unpckhpd	%xmm7, %xmm0                    # xmm0 = xmm0[1],xmm7[1]
	movupd	%xmm7, (%rbx)
	movsd	%xmm6, 16(%rbx)
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB35_9
# %bb.8:
	divsd	%xmm0, %xmm8
	movapd	%xmm8, %xmm0
	unpcklpd	%xmm8, %xmm0                    # xmm0 = xmm0[0],xmm8[0]
	mulpd	%xmm7, %xmm0
	movupd	%xmm0, (%rbx)
	mulsd	%xmm6, %xmm8
	movsd	%xmm8, 16(%rbx)
.LBB35_9:
	movq	%rbx, %rax
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end35:
	.size	color_kelvin_to_xyz, .Lfunc_end35-color_kelvin_to_xyz
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function color_cherenkov_to_xyz
.LCPI36_0:
	.quad	0x4076800000000000              # double 360
.LCPI36_1:
	.quad	0x408f400000000000              # double 1000
.LCPI36_2:
	.quad	0x3f689374bc6a7efa              # double 0.0030000000000000001
.LCPI36_3:
	.quad	0x3ff0000000000000              # double 1
.LCPI36_4:
	.quad	0xbfb999999999999a              # double -0.10000000000000001
.LCPI36_5:
	.quad	0xbfa999999999999a              # double -0.050000000000000003
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	3, 0x0
.LCPI36_6:
	.quad	0xc018000000000000              # double -6
	.quad	0xbff0000000000000              # double -1
	.text
	.globl	color_cherenkov_to_xyz
	.p2align	4
	.type	color_cherenkov_to_xyz,@function
color_cherenkov_to_xyz:                 # @color_cherenkov_to_xyz
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movsd	%xmm0, -48(%rbp)                # 8-byte Spill
	movq	%rdi, %rbx
	xorpd	%xmm3, %xmm3
	xorpd	%xmm2, %xmm2
	movsd	.LCPI36_0(%rip), %xmm5          # xmm5 = [3.6E+2,0.0E+0]
	leaq	cie_1931_2deg_1nm+16(%rip), %r14
	xorl	%r15d, %r15d
	leaq	.LCPI36_6(%rip), %r12
	leaq	cie_1931_2deg_1nm(%rip), %r13
	jmp	.LBB36_1
	.p2align	4
.LBB36_6:                               #   in Loop: Header=BB36_1 Depth=1
	mulsd	%xmm1, %xmm1
	movsd	.LCPI36_2(%rip), %xmm2          # xmm2 = [3.0000000000000001E-3,0.0E+0]
	divsd	%xmm1, %xmm2
	addsd	-48(%rbp), %xmm2                # 8-byte Folded Reload
	mulsd	%xmm2, %xmm2
	movsd	.LCPI36_3(%rip), %xmm3          # xmm3 = [1.0E+0,0.0E+0]
	movapd	%xmm3, %xmm1
	divsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm3
	movapd	%xmm5, %xmm1
	mulsd	%xmm5, %xmm1
	divsd	%xmm1, %xmm3
	movsd	%xmm3, -56(%rbp)                # 8-byte Spill
	movsd	%xmm5, -72(%rbp)                # 8-byte Spill
	callq	exp@PLT
	movsd	-72(%rbp), %xmm5                # 8-byte Reload
                                        # xmm5 = mem[0],zero
	mulsd	-56(%rbp), %xmm0                # 8-byte Folded Reload
	movapd	%xmm0, %xmm1
	unpcklpd	%xmm0, %xmm1                    # xmm1 = xmm1[0],xmm0[0]
	mulpd	-96(%rbp), %xmm1                # 16-byte Folded Reload
	movapd	-112(%rbp), %xmm3               # 16-byte Reload
	addpd	%xmm1, %xmm3
	mulsd	-64(%rbp), %xmm0                # 8-byte Folded Reload
	movsd	-80(%rbp), %xmm2                # 8-byte Reload
                                        # xmm2 = mem[0],zero
	addsd	%xmm0, %xmm2
	movsd	.LCPI36_3(%rip), %xmm0          # xmm0 = [1.0E+0,0.0E+0]
	addsd	%xmm0, %xmm5
	incq	%r15
	addq	$24, %r14
	cmpl	$471, %r15d                     # imm = 0x1D7
	je	.LBB36_7
.LBB36_1:                               # =>This Inner Loop Header: Depth=1
	movapd	%xmm3, -112(%rbp)               # 16-byte Spill
	movsd	%xmm2, -80(%rbp)                # 8-byte Spill
	leaq	360(%r15), %rax
	movapd	%xmm5, %xmm1
	divsd	.LCPI36_1(%rip), %xmm1
	leal	-471(%r15), %ecx
	xorpd	%xmm6, %xmm6
	xorpd	%xmm0, %xmm0
	cmpl	$-471, %ecx                     # imm = 0xFE29
	jb	.LBB36_3
# %bb.2:                                #   in Loop: Header=BB36_1 Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2sd	%r15d, %xmm0
	subsd	%xmm0, %xmm0
	cmpl	$830, %eax                      # imm = 0x33E
	movq	%r15, %rcx
	adcq	$0, %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movupd	-16(%r14), %xmm2
	movupd	(%r13,%rcx,8), %xmm3
	subpd	%xmm2, %xmm3
	movsd	(%r14), %xmm4                   # xmm4 = mem[0],zero
	movsd	16(%r13,%rcx,8), %xmm6          # xmm6 = mem[0],zero
	subsd	%xmm4, %xmm6
	mulsd	%xmm0, %xmm6
	unpcklpd	%xmm0, %xmm0                    # xmm0 = xmm0[0,0]
	mulpd	%xmm3, %xmm0
	addpd	%xmm2, %xmm0
	addsd	%xmm4, %xmm6
.LBB36_3:                               #   in Loop: Header=BB36_1 Depth=1
	movapd	%xmm0, -96(%rbp)                # 16-byte Spill
	movsd	%xmm6, -64(%rbp)                # 8-byte Spill
	movsd	.LCPI36_4(%rip), %xmm0          # xmm0 = [-1.0000000000000001E-1,0.0E+0]
	cmpl	$420, %eax                      # imm = 0x1A4
	jb	.LBB36_6
# %bb.4:                                #   in Loop: Header=BB36_1 Depth=1
	movsd	.LCPI36_5(%rip), %xmm0          # xmm0 = [-5.0000000000000003E-2,0.0E+0]
	cmpl	$500, %eax                      # imm = 0x1F4
	jb	.LBB36_6
# %bb.5:                                #   in Loop: Header=BB36_1 Depth=1
	xorl	%ecx, %ecx
	cmpl	$600, %eax                      # imm = 0x258
	setb	%cl
	movsd	(%r12,%rcx,8), %xmm0            # xmm0 = mem[0],zero
	jmp	.LBB36_6
.LBB36_7:
	movapd	%xmm3, %xmm0
	unpckhpd	%xmm3, %xmm0                    # xmm0 = xmm0[1],xmm3[1]
	movupd	%xmm3, (%rbx)
	movsd	%xmm2, 16(%rbx)
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB36_9
# %bb.8:
	movsd	.LCPI36_3(%rip), %xmm1          # xmm1 = [1.0E+0,0.0E+0]
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	unpcklpd	%xmm1, %xmm0                    # xmm0 = xmm0[0],xmm1[0]
	mulpd	%xmm3, %xmm0
	movupd	%xmm0, (%rbx)
	mulsd	%xmm2, %xmm1
	movsd	%xmm1, 16(%rbx)
.LBB36_9:
	movq	%rbx, %rax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end36:
	.size	color_cherenkov_to_xyz, .Lfunc_end36-color_cherenkov_to_xyz
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function color_tonemap_lottes
.LCPI37_0:
	.quad	0x3ff999999999999a              # double 1.6000000000000001
.LCPI37_1:
	.quad	0x3ff902de00d1b718              # double 1.5632000000000001
.LCPI37_4:
	.quad	0x3ff03e4b3db81d13              # double 1.0152084742456438
.LCPI37_5:
	.quad	0x3fa2483e2ac9fb7c              # double 0.035707419131532497
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI37_2:
	.quad	0x3ff03e4b3db81d13              # double 1.0152084742456438
	.quad	0x3ff03e4b3db81d13              # double 1.0152084742456438
.LCPI37_3:
	.quad	0x3fa2483e2ac9fb7c              # double 0.035707419131532497
	.quad	0x3fa2483e2ac9fb7c              # double 0.035707419131532497
	.text
	.globl	color_tonemap_lottes
	.p2align	4
	.type	color_tonemap_lottes,@function
color_tonemap_lottes:                   # @color_tonemap_lottes
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movsd	16(%rbp), %xmm0                 # xmm0 = mem[0],zero
	xorpd	%xmm1, %xmm1
	maxsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)                # 8-byte Spill
	movsd	.LCPI37_0(%rip), %xmm1          # xmm1 = [1.6000000000000001E+0,0.0E+0]
	callq	pow@PLT
	movapd	%xmm0, -48(%rbp)                # 16-byte Spill
	movsd	.LCPI37_1(%rip), %xmm1          # xmm1 = [1.5632000000000001E+0,0.0E+0]
	movsd	-32(%rbp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	pow@PLT
	movapd	%xmm0, -32(%rbp)                # 16-byte Spill
	movsd	24(%rbp), %xmm1                 # xmm1 = mem[0],zero
	xorpd	%xmm0, %xmm0
	maxsd	%xmm0, %xmm1
	movsd	%xmm1, -56(%rbp)                # 8-byte Spill
	movapd	%xmm1, %xmm0
	movsd	.LCPI37_0(%rip), %xmm1          # xmm1 = [1.6000000000000001E+0,0.0E+0]
	callq	pow@PLT
	movapd	%xmm0, -80(%rbp)                # 16-byte Spill
	movsd	-56(%rbp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI37_1(%rip), %xmm1          # xmm1 = [1.5632000000000001E+0,0.0E+0]
	callq	pow@PLT
	movapd	-32(%rbp), %xmm1                # 16-byte Reload
	unpcklpd	%xmm0, %xmm1                    # xmm1 = xmm1[0],xmm0[0]
	mulpd	.LCPI37_2(%rip), %xmm1
	addpd	.LCPI37_3(%rip), %xmm1
	movapd	-48(%rbp), %xmm0                # 16-byte Reload
	unpcklpd	-80(%rbp), %xmm0                # 16-byte Folded Reload
                                        # xmm0 = xmm0[0],mem[0]
	divpd	%xmm1, %xmm0
	movapd	%xmm0, 16(%rbp)
	movsd	32(%rbp), %xmm1                 # xmm1 = mem[0],zero
	xorpd	%xmm0, %xmm0
	maxsd	%xmm0, %xmm1
	movsd	%xmm1, -32(%rbp)                # 8-byte Spill
	movapd	%xmm1, %xmm0
	movsd	.LCPI37_0(%rip), %xmm1          # xmm1 = [1.6000000000000001E+0,0.0E+0]
	callq	pow@PLT
	movsd	%xmm0, -48(%rbp)                # 8-byte Spill
	movsd	-32(%rbp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI37_1(%rip), %xmm1          # xmm1 = [1.5632000000000001E+0,0.0E+0]
	callq	pow@PLT
	mulsd	.LCPI37_4(%rip), %xmm0
	addsd	.LCPI37_5(%rip), %xmm0
	movsd	-48(%rbp), %xmm1                # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 32(%rbp)
	movaps	16(%rbp), %xmm0
	movups	%xmm0, (%rbx)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rbx)
	movq	%rbx, %rax
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end37:
	.size	color_tonemap_lottes, .Lfunc_end37-color_tonemap_lottes
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function color_printer
.LCPI38_0:
	.quad	0xbff898676a7264a1              # double -1.5372079999999999
.LCPI38_1:
	.quad	0x4009eccd0fe8ab50              # double 3.2406255000000002
.LCPI38_2:
	.quad	0xbfdfe987ee766ac0              # double -0.49862859999999998
.LCPI38_3:
	.quad	0x3ffe0318d40c5c2f              # double 1.8757561
.LCPI38_4:
	.quad	0xbfef017af492e474              # double -0.96893070000000003
.LCPI38_5:
	.quad	0x3fa541c8216c6152              # double 0.041517499999999999
.LCPI38_6:
	.quad	0xbfca1d5d0818d336              # double -0.20402110000000001
.LCPI38_7:
	.quad	0x3fac8608c31d20a2              # double 0.055710099999999999
.LCPI38_8:
	.quad	0x3ff0e974886818ee              # double 1.0569959
.LCPI38_9:
	.quad	0x3ff0000000000000              # double 1
.LCPI38_10:
	.quad	0x3ff999999999999a              # double 1.6000000000000001
.LCPI38_11:
	.quad	0x3ff902de00d1b718              # double 1.5632000000000001
.LCPI38_12:
	.quad	0x3ff03e4b3db81d13              # double 1.0152084742456438
.LCPI38_13:
	.quad	0x3fa2483e2ac9fb7c              # double 0.035707419131532497
.LCPI38_14:
	.quad	0x3f69a5c37387b719              # double 0.0031308
.LCPI38_15:
	.quad	0x4029d70a3d70a3d7              # double 12.92
.LCPI38_16:
	.quad	0x3fdaaaaaaaaaaaab              # double 0.41666666666666669
.LCPI38_17:
	.quad	0x3ff0e147ae147ae1              # double 1.0549999999999999
.LCPI38_18:
	.quad	0xbfac28f5c28f5c29              # double -0.055
.LCPI38_19:
	.quad	0x406fe00000000000              # double 255
	.text
	.globl	color_printer
	.p2align	4
	.type	color_printer,@function
color_printer:                          # @color_printer
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movsd	16(%rbp), %xmm1                 # xmm1 = mem[0],zero
	movsd	24(%rbp), %xmm4                 # xmm4 = mem[0],zero
	movsd	32(%rbp), %xmm6                 # xmm6 = mem[0],zero
	movsd	.LCPI38_0(%rip), %xmm2          # xmm2 = [-1.5372079999999999E+0,0.0E+0]
	mulsd	%xmm4, %xmm2
	movsd	.LCPI38_1(%rip), %xmm5          # xmm5 = [3.2406255000000002E+0,0.0E+0]
	mulsd	%xmm1, %xmm5
	addsd	%xmm2, %xmm5
	movsd	.LCPI38_2(%rip), %xmm3          # xmm3 = [-4.9862859999999998E-1,0.0E+0]
	mulsd	%xmm6, %xmm3
	addsd	%xmm5, %xmm3
	movsd	.LCPI38_3(%rip), %xmm2          # xmm2 = [1.8757561E+0,0.0E+0]
	mulsd	%xmm4, %xmm2
	movsd	.LCPI38_4(%rip), %xmm5          # xmm5 = [-9.6893070000000003E-1,0.0E+0]
	mulsd	%xmm1, %xmm5
	addsd	%xmm2, %xmm5
	movsd	.LCPI38_5(%rip), %xmm2          # xmm2 = [4.1517499999999999E-2,0.0E+0]
	mulsd	%xmm6, %xmm2
	mulsd	.LCPI38_6(%rip), %xmm4
	mulsd	.LCPI38_7(%rip), %xmm1
	addsd	%xmm5, %xmm2
	addsd	%xmm4, %xmm1
	mulsd	.LCPI38_8(%rip), %xmm6
	movsd	.LCPI38_9(%rip), %xmm5          # xmm5 = [1.0E+0,0.0E+0]
	ucomisd	%xmm5, %xmm3
	movapd	%xmm5, %xmm0
	ja	.LBB38_3
# %bb.1:
	xorpd	%xmm4, %xmm4
	ucomisd	%xmm3, %xmm4
	movapd	%xmm3, %xmm0
	jbe	.LBB38_3
# %bb.2:
	xorpd	%xmm0, %xmm0
.LBB38_3:
	addsd	%xmm1, %xmm6
	ucomisd	%xmm5, %xmm2
	movapd	%xmm5, %xmm1
	ja	.LBB38_6
# %bb.4:
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm2, %xmm1
	movapd	%xmm2, %xmm1
	jbe	.LBB38_6
# %bb.5:
	xorpd	%xmm1, %xmm1
.LBB38_6:
	movsd	%xmm1, -40(%rbp)                # 8-byte Spill
	ucomisd	%xmm5, %xmm6
	ja	.LBB38_9
# %bb.7:
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm6, %xmm1
	movapd	%xmm6, %xmm5
	jbe	.LBB38_9
# %bb.8:
	xorpd	%xmm5, %xmm5
.LBB38_9:
	movsd	%xmm5, -64(%rbp)                # 8-byte Spill
	xorpd	%xmm1, %xmm1
	maxsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)                # 8-byte Spill
	movsd	.LCPI38_10(%rip), %xmm1         # xmm1 = [1.6000000000000001E+0,0.0E+0]
	callq	pow@PLT
	movsd	%xmm0, -48(%rbp)                # 8-byte Spill
	movsd	.LCPI38_11(%rip), %xmm1         # xmm1 = [1.5632000000000001E+0,0.0E+0]
	movsd	-56(%rbp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	pow@PLT
	mulsd	.LCPI38_12(%rip), %xmm0
	addsd	.LCPI38_13(%rip), %xmm0
	movsd	-48(%rbp), %xmm1                # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -48(%rbp)                # 8-byte Spill
	movsd	-40(%rbp), %xmm1                # 8-byte Reload
                                        # xmm1 = mem[0],zero
	xorpd	%xmm0, %xmm0
	maxsd	%xmm0, %xmm1
	movsd	%xmm1, -40(%rbp)                # 8-byte Spill
	movapd	%xmm1, %xmm0
	movsd	.LCPI38_10(%rip), %xmm1         # xmm1 = [1.6000000000000001E+0,0.0E+0]
	callq	pow@PLT
	movsd	%xmm0, -56(%rbp)                # 8-byte Spill
	movsd	-40(%rbp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI38_11(%rip), %xmm1         # xmm1 = [1.5632000000000001E+0,0.0E+0]
	callq	pow@PLT
	mulsd	.LCPI38_12(%rip), %xmm0
	addsd	.LCPI38_13(%rip), %xmm0
	movsd	-56(%rbp), %xmm1                # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -56(%rbp)                # 8-byte Spill
	movsd	-64(%rbp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorpd	%xmm1, %xmm1
	maxsd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)                # 8-byte Spill
	movsd	.LCPI38_10(%rip), %xmm1         # xmm1 = [1.6000000000000001E+0,0.0E+0]
	callq	pow@PLT
	movsd	%xmm0, -40(%rbp)                # 8-byte Spill
	movsd	-64(%rbp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI38_11(%rip), %xmm1         # xmm1 = [1.5632000000000001E+0,0.0E+0]
	callq	pow@PLT
	movapd	%xmm0, %xmm2
	movsd	-48(%rbp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	.LCPI38_12(%rip), %xmm2
	addsd	.LCPI38_13(%rip), %xmm2
	movsd	.LCPI38_14(%rip), %xmm1         # xmm1 = [3.1308E-3,0.0E+0]
	ucomisd	%xmm0, %xmm1
	jae	.LBB38_10
# %bb.11:
	movsd	.LCPI38_16(%rip), %xmm1         # xmm1 = [4.1666666666666669E-1,0.0E+0]
	movsd	%xmm2, -48(%rbp)                # 8-byte Spill
	callq	pow@PLT
	movsd	-48(%rbp), %xmm2                # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	.LCPI38_14(%rip), %xmm1         # xmm1 = [3.1308E-3,0.0E+0]
	mulsd	.LCPI38_17(%rip), %xmm0
	addsd	.LCPI38_18(%rip), %xmm0
	jmp	.LBB38_12
.LBB38_10:
	mulsd	.LCPI38_15(%rip), %xmm0
.LBB38_12:
	movsd	-40(%rbp), %xmm3                # 8-byte Reload
                                        # xmm3 = mem[0],zero
	divsd	%xmm2, %xmm3
	movsd	-56(%rbp), %xmm2                # 8-byte Reload
                                        # xmm2 = mem[0],zero
	ucomisd	%xmm2, %xmm1
	movsd	%xmm0, -48(%rbp)                # 8-byte Spill
	jae	.LBB38_13
# %bb.14:
	movsd	.LCPI38_16(%rip), %xmm1         # xmm1 = [4.1666666666666669E-1,0.0E+0]
	movapd	%xmm2, %xmm0
	movsd	%xmm3, -40(%rbp)                # 8-byte Spill
	callq	pow@PLT
	movsd	.LCPI38_14(%rip), %xmm1         # xmm1 = [3.1308E-3,0.0E+0]
	movsd	-40(%rbp), %xmm3                # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movapd	%xmm0, %xmm2
	mulsd	.LCPI38_17(%rip), %xmm2
	addsd	.LCPI38_18(%rip), %xmm2
	movsd	%xmm2, -56(%rbp)                # 8-byte Spill
	ucomisd	%xmm3, %xmm1
	jb	.LBB38_17
.LBB38_16:
	mulsd	.LCPI38_15(%rip), %xmm3
	movsd	%xmm3, -40(%rbp)                # 8-byte Spill
	jmp	.LBB38_18
.LBB38_13:
	mulsd	.LCPI38_15(%rip), %xmm2
	movsd	%xmm2, -56(%rbp)                # 8-byte Spill
	ucomisd	%xmm3, %xmm1
	jae	.LBB38_16
.LBB38_17:
	movsd	.LCPI38_16(%rip), %xmm1         # xmm1 = [4.1666666666666669E-1,0.0E+0]
	movapd	%xmm3, %xmm0
	callq	pow@PLT
	mulsd	.LCPI38_17(%rip), %xmm0
	addsd	.LCPI38_18(%rip), %xmm0
	movsd	%xmm0, -40(%rbp)                # 8-byte Spill
.LBB38_18:
	movsd	-48(%rbp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	.LCPI38_19(%rip), %xmm0
	callq	round@PLT
	cvttsd2si	%xmm0, %ebx
	xorl	%r15d, %r15d
	testl	%ebx, %ebx
	cmovlel	%r15d, %ebx
	cmpl	$255, %ebx
	movl	$255, %r12d
	cmovgel	%r12d, %ebx
	movsd	-56(%rbp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	.LCPI38_19(%rip), %xmm0
	callq	round@PLT
	cvttsd2si	%xmm0, %r14d
	testl	%r14d, %r14d
	cmovlel	%r15d, %r14d
	cmpl	$255, %r14d
	cmovgel	%r12d, %r14d
	movsd	-40(%rbp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	.LCPI38_19(%rip), %xmm0
	callq	round@PLT
	cvttsd2si	%xmm0, %ecx
	testl	%ecx, %ecx
	cmovlel	%r15d, %ecx
	cmpl	$255, %ecx
	cmovgel	%r12d, %ecx
	movl	%ecx, (%rsp)
	leaq	.L.str.2(%rip), %rdi
	movl	%ebx, %esi
	movl	%r14d, %edx
	movl	%ebx, %r8d
	movl	%r14d, %r9d
	xorl	%eax, %eax
	callq	printf@PLT
	leaq	.Lstr.5(%rip), %rdi
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	jmp	puts@PLT                        # TAILCALL
.Lfunc_end38:
	.size	color_printer, .Lfunc_end38-color_printer
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function main
.LCPI39_0:
	.quad	0x3ff547ae147ae148              # double 1.3300000000000001
	.text
	.globl	main
	.p2align	4
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	handler_count(%rip), %rax
	imulq	$56, %rax, %rcx
	leaq	handlers(%rip), %rdx
	movq	.L__const.main.handler+48(%rip), %rsi
	movq	%rsi, 48(%rcx,%rdx)
	movups	.L__const.main.handler+32(%rip), %xmm0
	movups	%xmm0, 32(%rcx,%rdx)
	movups	.L__const.main.handler+16(%rip), %xmm0
	movups	%xmm0, 16(%rcx,%rdx)
	movups	.L__const.main.handler(%rip), %xmm0
	movups	%xmm0, (%rcx,%rdx)
	incq	%rax
	movq	%rax, handler_count(%rip)
	leaq	-32(%rbp), %rdi
	movsd	.LCPI39_0(%rip), %xmm0          # xmm0 = [1.3300000000000001E+0,0.0E+0]
	callq	color_cherenkov_to_xyz
	movq	$32, -8(%rbp)
	testb	$32, handlers+48(%rip)
	je	.LBB39_2
# %bb.1:
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movups	-32(%rbp), %xmm0
	movups	%xmm0, (%rsp)
	callq	*handlers+40(%rip)
.LBB39_2:
	xorl	%eax, %eax
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end39:
	.size	main, .Lfunc_end39-main
	.cfi_endproc
                                        # -- End function
	.type	handlers,@object                # @handlers
	.local	handlers
	.comm	handlers,224,16
	.type	handler_count,@object           # @handler_count
	.local	handler_count
	.comm	handler_count,8,8
	.type	cie_1931_2deg_1nm,@object       # @cie_1931_2deg_1nm
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
cie_1931_2deg_1nm:
	.quad	0x3f2106b880e56dae              # double 1.2990000000000001E-4
	.quad	0x3ed06dd8c2f1a414              # double 3.9169999999999999E-6
	.quad	0x3f43dc55d6cc2a10              # double 6.0610000000000004E-4
	.quad	0x3f231dd030c0a35a              # double 1.45847E-4
	.quad	0x3ed26d925969b039              # double 4.3935810000000003E-6
	.quad	0x3f464fa0f2c16292              # double 6.8087919999999997E-4
	.quad	0x3f25784953355027              # double 1.6380210000000001E-4
	.quad	0x3ed4ad1f3ac5efba              # double 4.9296040000000003E-6
	.quad	0x3f491281aa122166              # double 7.6514560000000005E-4
	.quad	0x3f281e23bf68595c              # double 1.8400369999999999E-4
	.quad	0x3ed73415f6f0a6d1              # double 5.5321360000000001E-6
	.quad	0x3f4c2e4e90ea700c              # double 8.6001239999999998E-4
	.quad	0x3f2b175f4c7ea444              # double 2.066902E-4
	.quad	0x3eda0a0d64327fbd              # double 6.2082449999999999E-6
	.quad	0x3f4fac5e3b765809              # double 9.665928E-4
	.quad	0x3f2e6bfbd19d1626              # double 2.321E-4
	.quad	0x3edd369c9f328ac2              # double 6.9650000000000002E-6
	.quad	0x3f51cb039ef0f16f              # double 0.0010859999999999999
	.quad	0x3f31164a3bafd0e0              # double 2.60728E-4
	.quad	0x3ee062b0a481ed9c              # double 7.8132190000000003E-6
	.quad	0x3f53ff823cecd694              # double 0.0012205860000000001
	.quad	0x3f3334fb8a4f79bb              # double 2.9307500000000001E-4
	.quad	0x3ee262ed7c0d438d              # double 8.767336E-6
	.quad	0x3f567da48a5242b2              # double 0.001372729
	.quad	0x3f359636b00cc502              # double 3.2938800000000001E-4
	.quad	0x3ee4a2b9dc979150              # double 9.8398440000000005E-6
	.quad	0x3f594a3d54b903b1              # double 0.001543579
	.quad	0x3f383e208846f213              # double 3.69914E-4
	.quad	0x3ee728c9f961eef1              # double 1.104323E-5
	.quad	0x3f5c6a1f69b8e779              # double 0.001734286
	.quad	0x3f3b30ddee5d404d              # double 4.149E-4
	.quad	0x3ee9fbd4a22e3dab              # double 1.239E-5
	.quad	0x3f5fe21d96e9bbf1              # double 0.001946
	.quad	0x3f3e6b4a6fc88c62              # double 4.6415870000000002E-4
	.quad	0x3eed1f35a86b0722              # double 1.388641E-5
	.quad	0x3f61d7211fc68013              # double 0.0021777770000000001
	.quad	0x3f410191f2d39409              # double 5.1898600000000003E-4
	.quad	0x3ef05020241ae602              # double 1.555728E-5
	.quad	0x3f63f442ffd15367              # double 0.0024358090000000002
	.quad	0x3f4310f1f3558043              # double 5.8185400000000003E-4
	.quad	0x3ef24a4f157c3d0c              # double 1.7442959999999999E-5
	.quad	0x3f6661521941336b              # double 0.0027319530000000001
	.quad	0x3f457881cdc941c0              # double 6.552347E-4
	.quad	0x3ef488f90d728457              # double 1.958375E-5
	.quad	0x3f69372b06e13d14              # double 0.0030780640000000001
	.quad	0x3f484cfddf944fae              # double 7.4160000000000003E-4
	.quad	0x3ef716f2e0b2b2c5              # double 2.2019999999999999E-5
	.quad	0x3f6c8eabffcdab19              # double 0.0034859999999999999
	.quad	0x3f4bb09f3f81e850              # double 8.4502959999999995E-4
	.quad	0x3efa0bd7c0140377              # double 2.4839649999999999E-5
	.quad	0x3f704853df58c922              # double 0.0039752269999999996
	.quad	0x3f4f9b0987f366db              # double 9.645268E-4
	.quad	0x3efd6744b6d6ffcb              # double 2.8041259999999999E-5
	.quad	0x3f72997531855e23              # double 0.0045408799999999997
	.quad	0x3f51f08c895496ca              # double 0.001094949
	.quad	0x3f00880648ed4d57              # double 3.1531040000000003E-5
	.quad	0x3f7520e3fb3ca1c7              # double 0.0051583200000000001
	.quad	0x3f542bd58aa54ec8              # double 0.0012311539999999999
	.quad	0x3f02768166f4e30b              # double 3.5215210000000002E-5
	.quad	0x3f77c4c9fc9671a5              # double 0.0058029070000000004
	.quad	0x3f5669ced0b30b5b              # double 0.0013680000000000001
	.quad	0x3f04727dcbddb984              # double 3.8999999999999999E-5
	.quad	0x3f7a6b50f5aaab54              # double 0.0064500010000000003
	.quad	0x3f589c0de8200f6a              # double 0.00150205
	.quad	0x3f06740fe634cf56              # double 4.28264E-5
	.quad	0x3f7d034a5120c8bc              # double 0.0070832159999999998
	.quad	0x3f5ae86c4327d087              # double 0.001642328
	.quad	0x3f0898c561b31e31              # double 4.69146E-5
	.quad	0x3f7fb9bb9a6ccaa6              # double 0.007745488
	.quad	0x3f5d87bcefac6d28              # double 0.0018023819999999999
	.quad	0x3f0b0c3d289418b2              # double 5.1589599999999998E-5
	.quad	0x3f81690d4e8bedf9              # double 0.0085011519999999996
	.quad	0x3f605967e176e41e              # double 0.0019957569999999999
	.quad	0x3f0dfa1625133176              # double 5.7176399999999997E-5
	.quad	0x3f8347eeb4b1ab92              # double 0.0094145440000000004
	.quad	0x3f62513b5bf6a0dc              # double 0.0022360000000000001
	.quad	0x3f10c6f7a0b5ed8d              # double 6.3999999999999997E-5
	.quad	0x3f859b3bb02f5d3b              # double 0.01054999
	.quad	0x3f64c516750c717d              # double 0.0025353849999999998
	.quad	0x3f12f6f010639a6d              # double 7.2344209999999998E-5
	.quad	0x3f8881867d5d22f1              # double 0.0119658
	.quad	0x3f67b23a6921458f              # double 0.0028926030000000001
	.quad	0x3f158d2b874d52cd              # double 8.2212239999999995E-5
	.quad	0x3f8bf79bd8632df8              # double 0.013655870000000001
	.quad	0x3f6b0a5713599b74              # double 0.0033008289999999999
	.quad	0x3f188339f4d90672              # double 9.3508159999999998E-5
	.quad	0x3f8feca0a7aad455              # double 0.015588050000000001
	.quad	0x3f6ebf1b3bf93310              # double 0.0037532360000000001
	.quad	0x3f1bd2ac504ea3b1              # double 1.061361E-4
	.quad	0x3f9227da399cd9c0              # double 0.01773015
	.quad	0x3f71611ba3ca7504              # double 0.0042430000000000002
	.quad	0x3f1f75104d551d69              # double 1.2E-4
	.quad	0x3f9487fd64f019ae              # double 0.02005001
	.quad	0x3f7381ba1017e159              # double 0.0047623889999999997
	.quad	0x3f21b14fbb209f54              # double 1.3498399999999999E-4
	.quad	0x3f970d37cbf434c6              # double 0.022511360000000001
	.quad	0x3f75d4f5dd89aadc              # double 0.0053300480000000004
	.quad	0x3f23db3a5f07b38f              # double 1.5149200000000001E-4
	.quad	0x3f99cec8a575c5d5              # double 0.02520288
	.quad	0x3f787d224831fb83              # double 0.0059787119999999997
	.quad	0x3f264f3b9647ef47              # double 1.7020800000000001E-4
	.quad	0x3f9cf55be228ff7e              # double 0.028279720000000001
	.quad	0x3f7b9c92d0db2cea              # double 0.0067411169999999996
	.quad	0x3f292446e4c9765f              # double 1.9181600000000001E-4
	.quad	0x3fa054cf0f4745ba              # double 0.031897040000000002
	.quad	0x3f7f559b3d07c84b              # double 0.0076499999999999997
	.quad	0x3f2c714fce746cb9              # double 2.1699999999999999E-4
	.quad	0x3fa28a1dfb9389b5              # double 0.036209999999999999
	.quad	0x3f81ec3d66a40a1c              # double 0.0087513729999999998
	.quad	0x3f302e6833a03476              # double 2.4690669999999999E-4
	.quad	0x3fa53752d28ad1d6              # double 0.041437710000000003
	.quad	0x3f848a057cec8fb6              # double 0.01002888
	.quad	0x3f326e6c9a321ada              # double 2.8123999999999998E-4
	.quad	0x3fa8526857ad3b0c              # double 0.047503719999999999
	.quad	0x3f8764429fb7c0cc              # double 0.0114217
	.quad	0x3f34dfe0fbade0ce              # double 3.1851999999999998E-4
	.quad	0x3fabb599d553aeff              # double 0.054119880000000002
	.quad	0x3f8a5b1148a7b998              # double 0.01286901
	.quad	0x3f3769f0caddfe30              # double 3.5726669999999999E-4
	.quad	0x3faf3b223ff0dbcb              # double 0.060998030000000002
	.quad	0x3f8d4e8fb00bcbe6              # double 0.01431
	.quad	0x3f39f3c70c996b76              # double 3.9599999999999998E-4
	.quad	0x3fb15e9e45fbb7c7              # double 0.067850010000000002
	.quad	0x3f9014d275026082              # double 0.015704429999999998
	.quad	0x3f3c6c8673c991b4              # double 4.337147E-4
	.quad	0x3fb3118914663e78              # double 0.074486319999999995
	.quad	0x3f918f19380a5d7c              # double 0.01714744
	.quad	0x3f3f00069c3794d3              # double 4.73024E-4
	.quad	0x3fb4d41c7759fea4              # double 0.081361559999999999
	.quad	0x3f933b6256b746d4              # double 0.018781220000000001
	.quad	0x3f40f8423ddf80fc              # double 5.1787600000000001E-4
	.quad	0x3fb6d2c5e01e8e36              # double 0.089153640000000006
	.quad	0x3f953ef761a0d9d5              # double 0.020748010000000001
	.quad	0x3f42c01e4d23f370              # double 5.7221870000000001E-4
	.quad	0x3fb939f2eaeea0dd              # double 0.09854048
	.quad	0x3f97bf1e8e608073              # double 0.023189999999999999
	.quad	0x3f44f8b588e368f1              # double 6.4000000000000005E-4
	.quad	0x3fbc36113404ea4b              # double 0.11020000000000001
	.quad	0x3f9ad61a28753f1c              # double 0.026207359999999999
	.quad	0x3f47be0cc082bc88              # double 7.2455999999999996E-4
	.quad	0x3fbfe6a8402589fd              # double 0.1246133
	.quad	0x3f9e7f4c66600650              # double 0.02978248
	.quad	0x3f4b0ccbc05d52c1              # double 8.2549999999999995E-4
	.quad	0x3fc2234803a4d02f              # double 0.14170170000000001
	.quad	0x3fa158d706b77f33              # double 0.033880920000000002
	.quad	0x3f4ed705b5cc8021              # double 9.4116000000000002E-4
	.quad	0x3fc4a597d49d7ba6              # double 0.16130349999999999
	.quad	0x3fa3b21bf17827da              # double 0.038468240000000001
	.quad	0x3f518766e714cc96              # double 0.00106988
	.quad	0x3fc774f5756282ac              # double 0.1832568
	.quad	0x3fa646f156191149              # double 0.04351
	.quad	0x3f53d31b9b66f933              # double 0.0012099999999999999
	.quad	0x3fca8c154c985f07              # double 0.2074
	.quad	0x3fa915f3874bb93c              # double 0.0489956
	.quad	0x3f5651061325b2d3              # double 0.001362091
	.quad	0x3fcde99f6b6ab226              # double 0.23369210000000001
	.quad	0x3fac2bec1714ef7b              # double 0.055022599999999998
	.quad	0x3f59147071cf7291              # double 0.001530752
	.quad	0x3fd0cea00ba3a231              # double 0.26261139999999999
	.quad	0x3faf999b4718c345              # double 0.061718799999999997
	.quad	0x3f5c2fbf13037080              # double 0.0017203679999999999
	.quad	0x3fd2dd9648ac413c              # double 0.2947746
	.quad	0x3fb1b7e0ac7da1ec              # double 0.069211999999999996
	.quad	0x3f5fb5553f802634              # double 0.0019353230000000001
	.quad	0x3fd52bcd78c436fc              # double 0.3307985
	.quad	0x3fb3df8f4730403a              # double 0.077630000000000004
	.quad	0x3f61dbca9691a75d              # double 0.0021800000000000001
	.quad	0x3fd7c36113404ea5              # double 0.37130000000000002
	.quad	0x3fb642e2fe926caa              # double 0.086958110000000005
	.quad	0x3f641c16b6fbaa30              # double 0.0024548
	.quad	0x3fdaa32b7e330bc6              # double 0.4162091
	.quad	0x3fb8e092d25521f0              # double 0.097176719999999994
	.quad	0x3f66a4873365881a              # double 0.002764
	.quad	0x3fddca2a5b1d5d08              # double 0.46546419999999999
	.quad	0x3fbbc083e92e2c63              # double 0.1084063
	.quad	0x3f698a8021228f77              # double 0.0031178
	.quad	0x3fe0a156fd3cd721              # double 0.51969480000000001
	.quad	0x3fbeea99666df323              # double 0.12076720000000001
	.quad	0x3f6ce36595860ea2              # double 0.0035263999999999998
	.quad	0x3fe28b8320b15070              # double 0.57953030000000005
	.quad	0x3fc1335d249e44fa              # double 0.13438
	.quad	0x3f70624dd2f1a9fc              # double 0.0040000000000000001
	.quad	0x3fe4a8c154c985f0              # double 0.64559999999999995
	.quad	0x3fc31e2b6431d8c0              # double 0.1493582
	.quad	0x3f729f1401ea90d8              # double 0.00454624
	.quad	0x3fe6fdd1bcf695f4              # double 0.71848380000000001
	.quad	0x3fc52bafb1331353              # double 0.16539570000000001
	.quad	0x3f7521f06ab6ad26              # double 0.0051593200000000002
	.quad	0x3fe97eace3f9393c              # double 0.79671329999999995
	.quad	0x3fc74b38e3765c7e              # double 0.18198310000000001
	.quad	0x3f77e0716f58fe49              # double 0.0058292800000000001
	.quad	0x3fec175048edaf9b              # double 0.87784589999999996
	.quad	0x3fc96c15d2d01c0d              # double 0.19861100000000001
	.quad	0x3f7ad02571d483a5              # double 0.0065461599999999997
	.quad	0x3feeb3b96af038e3              # double 0.95943900000000004
	.quad	0x3fcb7d955714b9cb              # double 0.21476999999999999
	.quad	0x3f7de69ad42c3c9f              # double 0.0073000000000000001
	.quad	0x3ff09ff2ff667d0d              # double 1.0390501000000001
	.quad	0x3fcd76c2d4fc4637              # double 0.2301868
	.quad	0x3f808fa898d4bc74              # double 0.0080865069999999997
	.quad	0x3ff1d88b61c871f4              # double 1.1153673
	.quad	0x3fcf5837cf7a2637              # double 0.24487970000000001
	.quad	0x3f823ebc2864ce0b              # double 0.0089087200000000001
	.quad	0x3ff3041588fe40e3              # double 1.1884971
	.quad	0x3fd08fceaa1c9e9c              # double 0.25877729999999999
	.quad	0x3f840113d1432920              # double 0.0097676800000000008
	.quad	0x3ff42145e5bd5e9b              # double 1.2581233000000001
	.quad	0x3fd1654cf652d814              # double 0.27180789999999999
	.quad	0x3f85d73b90a4d35f              # double 0.010664430000000001
	.quad	0x3ff52ed0cde34d42              # double 1.3239296
	.quad	0x3fd22b6ae7d566cf              # double 0.28389999999999999
	.quad	0x3f87c1bda5119ce0              # double 0.011599999999999999
	.quad	0x3ff62b6ae7d566cf              # double 1.3855999999999999
	.quad	0x3fd2e05bf5ca1c18              # double 0.29494379999999998
	.quad	0x3f89bff64fa808f3              # double 0.01257317
	.quad	0x3ff71508a5c0ef49              # double 1.4426352
	.quad	0x3fd3836c9c0a8d22              # double 0.30489650000000001
	.quad	0x3f8bd141d1869ae4              # double 0.01358272
	.quad	0x3ff7eab713272431              # double 1.4948035
	.quad	0x3fd4151753d99be8              # double 0.31378729999999999
	.quad	0x3f8df62a693522cd              # double 0.014629680000000001
	.quad	0x3ff8accfbc6b55b9              # double 1.5421902999999999
	.quad	0x3fd495d6967a2a69              # double 0.32164540000000003
	.quad	0x3f90179dd66a2f74              # double 0.015715090000000001
	.quad	0x3ff95babdd68fc43              # double 1.5848807
	.quad	0x3fd50624dd2f1aa0              # double 0.32850000000000001
	.quad	0x3f913e81450efdca              # double 0.016840000000000001
	.quad	0x3ff9f7a4e7ab7564              # double 1.62296
	.quad	0x3fd56602feb80164              # double 0.33435130000000002
	.quad	0x3f92708579263198              # double 0.01800736
	.quad	0x3ffa80a251ceffad              # double 1.6564048
	.quad	0x3fd5b59e477e43d3              # double 0.33921010000000001
	.quad	0x3f93acf5ecd6ad76              # double 0.019214479999999999
	.quad	0x3ffaf6f8d5695381              # double 1.6852959000000001
	.quad	0x3fd5f5b30a83e781              # double 0.34312130000000002
	.quad	0x3f94f1df55e6667c              # double 0.02045392
	.quad	0x3ffb5ba55d1c3ac9              # double 1.7098745
	.quad	0x3fd626fcc40b5d2b              # double 0.34612959999999998
	.quad	0x3f963d4e6a1b51c0              # double 0.02171824
	.quad	0x3ffbafa524115740              # double 1.7303820999999999
	.quad	0x3fd64a38327674d1              # double 0.34827999999999998
	.quad	0x3f978d4fdf3b645a              # double 0.023
	.quad	0x3ffbf3f52fc2656b              # double 1.7470600000000001
	.quad	0x3fd65fd8424bd4eb              # double 0.34959990000000002
	.quad	0x3f98e0afadad21e2              # double 0.024294610000000001
	.quad	0x3ffc292486c805be              # double 1.7600446000000001
	.quad	0x3fd668d0a3f1e230              # double 0.3501474
	.quad	0x3f9a39921cf8893e              # double 0.025610239999999999
	.quad	0x3ffc5060857bd563              # double 1.7696232999999999
	.quad	0x3fd6669ced0b30b6              # double 0.35001300000000002
	.quad	0x3f9b9b0701fcda5c              # double 0.026958570000000001
	.quad	0x3ffc6b937c4926ba              # double 1.7762636999999999
	.quad	0x3fd65ab7dc7abfba              # double 0.34928700000000001
	.quad	0x3f9d081c2e33eff2              # double 0.028351250000000001
	.quad	0x3ffc7ca7bb9b4c21              # double 1.7804333999999999
	.quad	0x3fd6469d7342edbb              # double 0.34805999999999998
	.quad	0x3f9e83e425aee632              # double 0.0298
	.quad	0x3ffc858793dd97f6              # double 1.7826
	.quad	0x3fd62afaeaed4944              # double 0.3463733
	.quad	0x3fa007f91db8a29e              # double 0.031310829999999998
	.quad	0x3ffc8709a9cced84              # double 1.7829682
	.quad	0x3fd60865294f84a3              # double 0.34426240000000002
	.quad	0x3fa0d62134582154              # double 0.032883679999999998
	.quad	0x3ffc81d7a644a2c7              # double 1.7816997999999999
	.quad	0x3fd5e032045f0a52              # double 0.34180880000000002
	.quad	0x3fa1acc092d7b386              # double 0.034521120000000002
	.quad	0x3ffc77988821a211              # double 1.7791982
	.quad	0x3fd5b3b7bd710f37              # double 0.33909410000000001
	.quad	0x3fa28c2d1f72e1f5              # double 0.036225710000000001
	.quad	0x3ffc69f39ec8ad83              # double 1.7758670999999999
	.quad	0x3fd5844d013a92a3              # double 0.3362
	.quad	0x3fa374bc6a7ef9db              # double 0.037999999999999999
	.quad	0x3ffc5a9003eea20a              # double 1.7721100000000001
	.quad	0x3fd5531c72268e09              # double 0.33319769999999999
	.quad	0x3fa466c861024e64              # double 0.039846670000000001
	.quad	0x3ffc4ac9d825c663              # double 1.7682589
	.quad	0x3fd51f64b4b57ed2              # double 0.33004109999999998
	.quad	0x3fa5629d8409e55c              # double 0.041768
	.quad	0x3ffc3980f55de58e              # double 1.7640389999999999
	.quad	0x3fd4e7996c4d3034              # double 0.32663569999999997
	.quad	0x3fa6687f455a7d24              # double 0.043765999999999999
	.quad	0x3ffc24a24108080c              # double 1.7589437999999999
	.quad	0x3fd4aa2d6593d88f              # double 0.32288679999999997
	.quad	0x3fa778b0c0d29894              # double 0.045842670000000002
	.quad	0x3ffc0a1a1a5d7958              # double 1.7524663
	.quad	0x3fd46594af4f0d84              # double 0.31869999999999998
	.quad	0x3fa89374bc6a7efa              # double 0.048000000000000001
	.quad	0x3ffbe7d566cf41f2              # double 1.7441
	.quad	0x3fd418fcbba7e15b              # double 0.3140251
	.quad	0x3fa9b98a24dc834e              # double 0.050243679999999999
	.quad	0x3ffbbca8e2e2b8c7              # double 1.7335594999999999
	.quad	0x3fd3c4c165907d91              # double 0.30888399999999999
	.quad	0x3faaeada7ee710c6              # double 0.052573040000000001
	.quad	0x3ffb88a280c8e83c              # double 1.7208581000000001
	.quad	0x3fd3691c234c3563              # double 0.30329040000000002
	.quad	0x3fac2669763b45a6              # double 0.054980559999999998
	.quad	0x3ffb4b847da8a24b              # double 1.7059369
	.quad	0x3fd30645ffbe91a1              # double 0.29725790000000002
	.quad	0x3fad6b3ab68a4035              # double 0.057458719999999998
	.quad	0x3ffb05114c589e27              # double 1.6887372
	.quad	0x3fd29c779a6b50b1              # double 0.2908
	.quad	0x3faeb851eb851eb8              # double 0.059999999999999998
	.quad	0x3ffab50b0f27bb30              # double 1.6692
	.quad	0x3fd22c90ed22adaa              # double 0.2839701
	.quad	0x3fb006aec5d0af30              # double 0.062601970000000007
	.quad	0x3ffa5c470ddb8ad6              # double 1.6475287000000001
	.quad	0x3fd1b5cdacc69d08              # double 0.27672140000000001
	.quad	0x3fb0b6070d906162              # double 0.065277520000000006
	.quad	0x3ff9f97f986693b3              # double 1.6234127
	.quad	0x3fd135f30113fc36              # double 0.26891779999999998
	.quad	0x3fb16b34ac5a1098              # double 0.068042080000000005
	.quad	0x3ff9894eade2fcba              # double 1.5960223
	.quad	0x3fd0aac3f8e8b48a              # double 0.26042270000000001
	.quad	0x3fb2273aac79453b              # double 0.070911089999999996
	.quad	0x3ff9084e831ad213              # double 1.5645279999999999
	.quad	0x3fd01205bc01a36e              # double 0.25109999999999999
	.quad	0x3fb2eb1c432ca57a              # double 0.073899999999999993
	.quad	0x3ff87318fc504817              # double 1.5281
	.quad	0x3fced41743e963dc              # double 0.24084749999999999
	.quad	0x3fb3b7521144cbe2              # double 0.077016000000000001
	.quad	0x3ff7c71cbf536786              # double 1.4861114
	.quad	0x3fcd6bc39d79222b              # double 0.22985120000000001
	.quad	0x3fb48c56baf7b833              # double 0.080266400000000002
	.quad	0x3ff70847b24638c9              # double 1.4395214999999999
	.quad	0x3fcbf4c4629affcb              # double 0.2184072
	.quad	0x3fb56b2ff9c2cf1d              # double 0.0836668
	.quad	0x3ff63cf2b4bde24e              # double 1.3898798999999999
	.quad	0x3fca78cc9a77e5eb              # double 0.20681150000000001
	.quad	0x3fb654e387237550              # double 0.087232799999999999
	.quad	0x3ff56b76a64f8a82              # double 1.3387362
	.quad	0x3fc9018e757928e1              # double 0.19536000000000001
	.quad	0x3fb74a771c970f7c              # double 0.090980000000000005
	.quad	0x3ff49a2c669057d1              # double 1.2876399999999999
	.quad	0x3fc7944fadbd3d0d              # double 0.18421360000000001
	.quad	0x3fb84c843d110287              # double 0.094917550000000003
	.quad	0x3ff3cc7b535d7526              # double 1.2374223
	.quad	0x3fc62f96c6808271              # double 0.17332729999999999
	.quad	0x3fb95b11739ad75c              # double 0.099045839999999996
	.quad	0x3ff301540d9e4e34              # double 1.1878242999999999
	.quad	0x3fc4d2f6b2796470              # double 0.1626881
	.quad	0x3fba76493278f910              # double 0.1033674
	.quad	0x3ff2385d8f274fd0              # double 1.1387611
	.quad	0x3fc37e04e89d0cec              # double 0.15228330000000001
	.quad	0x3fbb9e533cbdf670              # double 0.1078846
	.quad	0x3ff1713f077ccc03              # double 1.0901479999999999
	.quad	0x3fc2305532617c1c              # double 0.1421
	.quad	0x3fbcd35a858793de              # double 0.11260000000000001
	.quad	0x3ff0ab9f559b3d08              # double 1.0419
	.quad	0x3fc0eb3a761d938f              # double 0.13217860000000001
	.quad	0x3fbe1693c03bc4d2              # double 0.117532
	.quad	0x3fefd0777c385fc3              # double 0.99419760000000001
	.quad	0x3fbf60b8a77bda6c              # double 0.1225696
	.quad	0x3fbf6796e80e71b3              # double 0.1226744
	.quad	0x3fee50ab48ee865b              # double 0.9473473
	.quad	0x3fbcff9a7f72a6e7              # double 0.11327520000000001
	.quad	0x3fc062116d0fcdd3              # double 0.12799279999999999
	.quad	0x3fecd8b42bec1715              # double 0.90145310000000001
	.quad	0x3fbab344658a9e54              # double 0.1042979
	.quad	0x3fc114fb39c7a1eb              # double 0.13345280000000001
	.quad	0x3feb696ce0d3eace              # double 0.85661929999999997
	.quad	0x3fb87bdcf0307f24              # double 0.095640000000000003
	.quad	0x3fc1cb6848beb5b3              # double 0.13902
	.quad	0x3fea03afed98f52f              # double 0.81295010000000001
	.quad	0x3fb6594368349cc0              # double 0.087299550000000004
	.quad	0x3fc284c19b4062c7              # double 0.14467640000000001
	.quad	0x3fe8a813e5901231              # double 0.77051729999999996
	.quad	0x3fb44d881e1c1fc6              # double 0.079308039999999996
	.quad	0x3fc34293f946a85b              # double 0.1504693
	.quad	0x3fe7579c9f0797a4              # double 0.7294448
	.quad	0x3fb25c1859be0c6b              # double 0.071717760000000005
	.quad	0x3fc406f18bc8f67e              # double 0.15646189999999999
	.quad	0x3fe613c5afa2199b              # double 0.68991360000000002
	.quad	0x3fb0886137fe491c              # double 0.064580990000000005
	.quad	0x3fc4d3eefffd7bc1              # double 0.16271769999999999
	.quad	0x3fe4de0b1861f695              # double 0.65210489999999999
	.quad	0x3fadab9fab817891              # double 0.057950010000000003
	.quad	0x3fc5ab9f559b3d08              # double 0.16930000000000001
	.quad	0x3fe3b7e90ff97247              # double 0.61619999999999997
	.quad	0x3faa8daba4b3fef6              # double 0.051862110000000003
	.quad	0x3fc68f224752a4e9              # double 0.17624310000000001
	.quad	0x3fe2a26f9690d09d              # double 0.58232859999999997
	.quad	0x3fa7b2361d9e4b85              # double 0.04628152
	.quad	0x3fc77ed4f2353c22              # double 0.1835581
	.quad	0x3fe19d026f4608f9              # double 0.55041620000000002
	.quad	0x3fa511ba679a6e00              # double 0.041150880000000001
	.quad	0x3fc87ba6698bb4d5              # double 0.19127350000000001
	.quad	0x3fe0a69b09dc21d4              # double 0.52033759999999996
	.quad	0x3fa2a4b3d4027627              # double 0.03641283
	.quad	0x3fc986876e1deacd              # double 0.19941800000000001
	.quad	0x3fdf7c646a0ce414              # double 0.4919673
	.quad	0x3fa0639d5e4a3832              # double 0.032009999999999997
	.quad	0x3fcaa0663c74fb55              # double 0.20802000000000001
	.quad	0x3fddc58255b035bd              # double 0.46517999999999998
	.quad	0x3f9c965393fbcae7              # double 0.0279172
	.quad	0x3fcbca95bae7c7fb              # double 0.2171199
	.quad	0x3fdc27b9826d2d2a              # double 0.4399246
	.quad	0x3f98b94f4186b30d              # double 0.0241444
	.quad	0x3fcd05a2d72ffd1e              # double 0.22673450000000001
	.quad	0x3fdaa2c089c86b3e              # double 0.41618359999999999
	.quad	0x3f952ef911cf355d              # double 0.020687000000000001
	.quad	0x3fce51555d29a6c2              # double 0.23685709999999999
	.quad	0x3fd9355dafde7f7d              # double 0.39388220000000002
	.quad	0x3f91f61c516f5e5d              # double 0.017540400000000001
	.quad	0x3fcfad76c62ffa9a              # double 0.24748120000000001
	.quad	0x3fd7de587aeb58a9              # double 0.3729459
	.quad	0x3f8e1b089a027525              # double 0.0147
	.quad	0x3fd08ce703afb7e9              # double 0.2586
	.quad	0x3fd69c779a6b50b1              # double 0.3533
	.quad	0x3f88e847d27c8f1d              # double 0.01216179
	.quad	0x3fd14ab59b57dfbb              # double 0.27018490000000001
	.quad	0x3fd56e4f68f3df60              # double 0.33485779999999998
	.quad	0x3f8450ea7e38951d              # double 0.0099199600000000002
	.quad	0x3fd2111a6f170f10              # double 0.28229389999999999
	.quad	0x3fd452c60b11abfa              # double 0.3175521
	.quad	0x3f805120d9ea41a8              # double 0.0079672400000000004
	.quad	0x3fd2e21b7e0ac7da              # double 0.29505049999999999
	.quad	0x3fd3491d14e3bcd3              # double 0.30133749999999998
	.quad	0x3f79ca32827803b7              # double 0.0062963460000000004
	.quad	0x3fd3bfbdf090f734              # double 0.30857800000000002
	.quad	0x3fd250961a891842              # double 0.2861686
	.quad	0x3f741205bc01a36e              # double 0.0048999999999999998
	.quad	0x3fd4ac083126e979              # double 0.32300000000000001
	.quad	0x3fd16872b020c49c              # double 0.27200000000000002
	.quad	0x3f6ef14e5033e3cc              # double 0.003777173
	.quad	0x3fd5a86148197445              # double 0.33840209999999998
	.quad	0x3fd09075990950e2              # double 0.25881710000000002
	.quad	0x3f6820c8a270adbd              # double 0.00294532
	.quad	0x3fd6b32c11d6c219              # double 0.3546858
	.quad	0x3fcf8cc7f9ff34ff              # double 0.2464838
	.quad	0x3f63dd57897ec456              # double 0.0024248799999999999
	.quad	0x3fd7c9e8ecbe03dc              # double 0.37169859999999999
	.quad	0x3fce0d009982f365              # double 0.2347718
	.quad	0x3f6251d8a993a67f              # double 0.0022362929999999999
	.quad	0x3fd8ea161e4f7660              # double 0.38928750000000001
	.quad	0x3fcc9a1e23d7759d              # double 0.22345329999999999
	.quad	0x3f63a92a30553261              # double 0.0023999999999999998
	.quad	0x3fda113404ea4a8c              # double 0.4073
	.quad	0x3fcb2ca57a786c22              # double 0.21229999999999999
	.quad	0x3f67f742972951de              # double 0.00292552
	.quad	0x3fdb3d85312cc8b6              # double 0.42562990000000001
	.quad	0x3fc9bfe98f7b32a6              # double 0.20116919999999999
	.quad	0x3f6f6dd97755211a              # double 0.0038365600000000001
	.quad	0x3fdc6f9188532039              # double 0.44430960000000003
	.quad	0x3fc855d6cc2a0f9e              # double 0.1901196
	.quad	0x3f75323688fe15f0              # double 0.00517484
	.quad	0x3fdda840fc49921a              # double 0.46339439999999998
	.quad	0x3fc6f0db9fce6701              # double 0.17922540000000001
	.quad	0x3f7c993dd420fefe              # double 0.0069820799999999999
	.quad	0x3fdee87b139c94f7              # double 0.48293950000000002
	.quad	0x3fc5936679b19cc6              # double 0.16856080000000001
	.quad	0x3f830be0ded288ce              # double 0.0092999999999999992
	.quad	0x3fe0189374bc6a7f              # double 0.503
	.quad	0x3fc43fe5c91d14e4              # double 0.15820000000000001
	.quad	0x3f88e1d4f1b462c9              # double 0.012149490000000001
	.quad	0x3fe0c1146796114f              # double 0.52356930000000002
	.quad	0x3fc2f63220e47c16              # double 0.1481383
	.quad	0x3f8fd146841ddc5f              # double 0.01553588
	.quad	0x3fe16ca46e08f217              # double 0.544512
	.quad	0x3fc1b64c57c76732              # double 0.13837579999999999
	.quad	0x3f93f1ea3da0f559              # double 0.019477520000000002
	.quad	0x3fe21a21ea359360              # double 0.56569000000000003
	.quad	0x3fc082e1c72fd4da              # double 0.1289942
	.quad	0x3f98918f89f63881              # double 0.02399277
	.quad	0x3fe2c86b73ec60e7              # double 0.58696530000000002
	.quad	0x3fbebd3de3905db1              # double 0.1200751
	.quad	0x3f9dcc63f141205c              # double 0.029100000000000001
	.quad	0x3fe3765fd8adab9f              # double 0.60819999999999996
	.quad	0x3fbc985f06f69446              # double 0.11169999999999999
	.quad	0x3fa1d34084548df7              # double 0.034814850000000001
	.quad	0x3fe42399623c353a              # double 0.62934559999999995
	.quad	0x3fba998145e5bd5f              # double 0.10390480000000001
	.quad	0x3fa50db39cd004e6              # double 0.041120160000000003
	.quad	0x3fe4cf5034cbb9a7              # double 0.65030679999999996
	.quad	0x3fb8bf33312fcdce              # double 0.09666748
	.quad	0x3fa8917ec2fe97cb              # double 0.04798504
	.quad	0x3fe577cf44765196              # double 0.6708752
	.quad	0x3fb7091b879ae97b              # double 0.089982720000000002
	.quad	0x3fac5a95cdb22501              # double 0.055378610000000002
	.quad	0x3fe61b61855615b6              # double 0.69084239999999997
	.quad	0x3fb576e2e05f7bbc              # double 0.083845310000000006
	.quad	0x3fb0327674d16335              # double 0.063270000000000007
	.quad	0x3fe6b851eb851eb8              # double 0.70999999999999996
	.quad	0x3fb40830fbf65b11              # double 0.078249990000000005
	.quad	0x3fb256ac0932d99c              # double 0.071635009999999999
	.quad	0x3fe74d4b0c6dcc8c              # double 0.72818519999999998
	.quad	0x3fb2bdd309d2bca6              # double 0.073208990000000002
	.quad	0x3fb4992c615ce737              # double 0.080462240000000004
	.quad	0x3fe7dad67acb7839              # double 0.7454636
	.quad	0x3fb194e4532642b5              # double 0.068678160000000002
	.quad	0x3fb6f932b1582733              # double 0.089739959999999994
	.quad	0x3fe8620da6b1b011              # double 0.76196940000000002
	.quad	0x3fb08784992c615d              # double 0.064567840000000001
	.quad	0x3fb975fa58205286              # double 0.099456450000000001
	.quad	0x3fe8e40a00340266              # double 0.77783679999999999
	.quad	0x3faf1fa68e74a269              # double 0.060788349999999998
	.quad	0x3fbc0ebedfa43fe6              # double 0.1096
	.quad	0x3fe961e4f765fd8b              # double 0.79320000000000002
	.quad	0x3fad4fdf914a95a5              # double 0.057250009999999997
	.quad	0x3fbec34a6d0b9c15              # double 0.12016739999999999
	.quad	0x3fe9dc0a5771d6dd              # double 0.80811040000000001
	.quad	0x3fab9959d8b96a19              # double 0.053904349999999997
	.quad	0x3fc0c85c24c404a7              # double 0.13111449999999999
	.quad	0x3fea51e38d02b262              # double 0.82249620000000001
	.quad	0x3fa9fb76ae5d2017              # double 0.050746640000000003
	.quad	0x3fc2391c81400680              # double 0.14236789999999999
	.quad	0x3feac3067a6d8468              # double 0.83630680000000002
	.quad	0x3fa8730cbcfccb17              # double 0.047752759999999998
	.quad	0x3fc3b17e92ad164e              # double 0.1538542
	.quad	0x3feb2f090207413d              # double 0.84949160000000001
	.quad	0x3fa6fcf2af5f7e96              # double 0.044898590000000002
	.quad	0x3fc52f1a9fbe76c9              # double 0.16550000000000001
	.quad	0x3feb95810624dd2f              # double 0.86199999999999999
	.quad	0x3fa595feda661284              # double 0.042160000000000003
	.quad	0x3fc6b05c53bded36              # double 0.1772571
	.quad	0x3febf642111c87f6              # double 0.8738108
	.quad	0x3fa43a4c571b9abb              # double 0.039507279999999999
	.quad	0x3fc835bd512ec6bd              # double 0.18914
	.quad	0x3fec519caac611c8              # double 0.88496240000000004
	.quad	0x3fa2e93a6bb6b259              # double 0.036935639999999999
	.quad	0x3fc9bfeb3cfa5c52              # double 0.2011694
	.quad	0x3feca7e231b8dfb0              # double 0.8954936
	.quad	0x3fa1a486b28c2ecd              # double 0.03445836
	.quad	0x3fcb4f920e8add3e              # double 0.21336579999999999
	.quad	0x3fecf964048c56bb              # double 0.9054432
	.quad	0x3fa06deec5f0e586              # double 0.032088720000000001
	.quad	0x3fcce55f6ac9a276              # double 0.2257499
	.quad	0x3fed4673b787c12a              # double 0.9148501
	.quad	0x3f9e8e60807357e6              # double 0.029839999999999998
	.quad	0x3fce814c9bba054a              # double 0.2383209
	.quad	0x3fed8f3c4885aacf              # double 0.92373479999999997
	.quad	0x3f9c607c16a6e07f              # double 0.02771181
	.quad	0x3fd0117a7bc720bb              # double 0.25106679999999998
	.quad	0x3fedd3b370db346f              # double 0.93209240000000004
	.quad	0x3f9a4fa4adf4c564              # double 0.025694439999999999
	.quad	0x3fd0e53f8a598ab6              # double 0.26399220000000001
	.quad	0x3fee13d88f78ae68              # double 0.93992260000000005
	.quad	0x3f985ba9490f1298              # double 0.023787160000000002
	.quad	0x3fd1bc08c4ca9fcc              # double 0.27710170000000001
	.quad	0x3fee4fab38fe4e4f              # double 0.94722519999999999
	.quad	0x3f96845996744b2b              # double 0.021989249999999998
	.quad	0x3fd295e9e1b089a0              # double 0.29039999999999999
	.quad	0x3fee872b020c49ba              # double 0.95399999999999996
	.quad	0x3f94c985f06f6944              # double 0.020299999999999999
	.quad	0x3fd372f41362b353              # double 0.30389119999999997
	.quad	0x3feeba6b00291aab              # double 0.96025609999999994
	.quad	0x3f932ad312612b94              # double 0.01871805
	.quad	0x3fd4531c06c6c39e              # double 0.31757259999999998
	.quad	0x3feee98859d6352b              # double 0.96600739999999996
	.quad	0x3f91a774f97c2d4d              # double 0.01724036
	.quad	0x3fd536496828de46              # double 0.33143840000000002
	.quad	0x3fef14911c1c9639              # double 0.97126060000000002
	.quad	0x3f903e8edbfb68ec              # double 0.015863639999999998
	.quad	0x3fd61c63e3d5270e              # double 0.34548279999999998
	.quad	0x3fef3b9389b52008              # double 0.97602250000000001
	.quad	0x3f8dde8937cca001              # double 0.01458461
	.quad	0x3fd705532617c1be              # double 0.35970000000000002
	.quad	0x3fef5e9e1b089a02              # double 0.98029999999999995
	.quad	0x3f8b71758e219653              # double 0.0134
	.quad	0x3fd7f0fd991d72d8              # double 0.37408390000000002
	.quad	0x3fef7daf5847bfb2              # double 0.98409239999999998
	.quad	0x3f89348872d5b57f              # double 0.012307230000000001
	.quad	0x3fd8df78a0fb8daa              # double 0.38863959999999997
	.quad	0x3fef98ee0d8f34bc              # double 0.98741820000000002
	.quad	0x3f872570a7ddd508              # double 0.01130188
	.quad	0x3fd9d0f3a2fa6b6c              # double 0.40337840000000003
	.quad	0x3fefb0a47819ed11              # double 0.99031279999999999
	.quad	0x3f854104d8010869              # double 0.010377920000000001
	.quad	0x3fdac59d99029ae5              # double 0.4183115
	.quad	0x3fefc51cd522dca4              # double 0.99281160000000001
	.quad	0x3f838419ccfd15b7              # double 0.0095293059999999995
	.quad	0x3fdbbda4a63d160b              # double 0.4334499
	.quad	0x3fefd6a19794dc9b              # double 0.99495009999999994
	.quad	0x3f81eb84fc5c3a1b              # double 0.0087499989999999996
	.quad	0x3fdcb90fec064df8              # double 0.44879530000000001
	.quad	0x3fefe50e0c323d6a              # double 0.99671080000000001
	.quad	0x3f8074c249bc0bb4              # double 0.0080351999999999993
	.quad	0x3fddb7ae5796bfcb              # double 0.46433600000000003
	.quad	0x3feff06bd8962eab              # double 0.99809829999999999
	.quad	0x3f7e3c2b2979760e              # double 0.0073816000000000003
	.quad	0x3fdeb95e5aff2a17              # double 0.48006399999999999
	.quad	0x3feff8b9baa1511e              # double 0.999112
	.quad	0x3f7bcb01f171c7c3              # double 0.0067853999999999996
	.quad	0x3fdfbdfe68504b72              # double 0.4959713
	.quad	0x3feffdefefe78408              # double 0.99974819999999997
	.quad	0x3f79920cdd5e1488              # double 0.0062427999999999997
	.quad	0x3fe062b6e42d3ba2              # double 0.51205009999999995
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3f778d4f9a8334ba              # double 0.0057499990000000004
	.quad	0x3fe0e7cccda38c62              # double 0.52829590000000004
	.quad	0x3feffed37a65f7ac              # double 0.99985670000000004
	.quad	0x3f75b93a48d12a2a              # double 0.0053036000000000003
	.quad	0x3fe16e1d140cfd3f              # double 0.54469160000000005
	.quad	0x3feffa4da3f7c16d              # double 0.99930459999999998
	.quad	0x3f7411d00c1c6df5              # double 0.0048998000000000002
	.quad	0x3fe1f56d6a66a627              # double 0.56120939999999997
	.quad	0x3feff24851a86940              # double 0.99832549999999997
	.quad	0x3f7292740b6a974e              # double 0.0045342000000000004
	.quad	0x3fe27d8383ad9f0a              # double 0.57782149999999999
	.quad	0x3fefe6981a3d98e8              # double 0.99689870000000002
	.quad	0x3f71368929090dc6              # double 0.0042024000000000002
	.quad	0x3fe30624dd2f1aa0              # double 0.59450000000000003
	.quad	0x3fefd70a3d70a3d7              # double 0.99499999999999999
	.quad	0x3f6ff2e48e8a71de              # double 0.0038999999999999998
	.quad	0x3fe38f1f220436c6              # double 0.61122089999999996
	.quad	0x3fefc3621fafc8b0              # double 0.9926005
	.quad	0x3f6dae66b0384190              # double 0.0036232
	.quad	0x3fe41860b475bdf2              # double 0.62797579999999997
	.quad	0x3fefabf8ac4ea804              # double 0.98974260000000002
	.quad	0x3f6b9ca918929dfd              # double 0.0033706000000000001
	.quad	0x3fe4a1e0249865bd              # double 0.64476020000000001
	.quad	0x3fef90f3d8aa50a1              # double 0.98644439999999999
	.quad	0x3f69bbfe486fdb5a              # double 0.0031413999999999999
	.quad	0x3fe52b943830c8f6              # double 0.66156970000000004
	.quad	0x3fef7279cfcfb68c              # double 0.98272409999999998
	.quad	0x3f680ab8c0a64ddd              # double 0.0029348
	.quad	0x3fe5b573eab367a1              # double 0.6784
	.quad	0x3fef50b0f27bb2ff              # double 0.97860000000000002
	.quad	0x3f66872a789bea79              # double 0.0027499989999999999
	.quad	0x3fe63f66475cb5e3              # double 0.69523919999999995
	.quad	0x3fef2bb194622234              # double 0.97408369999999999
	.quad	0x3f652d8eae840c6a              # double 0.0025852000000000002
	.quad	0x3fe6c92f1dfabcca              # double 0.71205859999999999
	.quad	0x3fef0373520733d1              # double 0.96917120000000001
	.quad	0x3f63fa1d67efd362              # double 0.0024386
	.quad	0x3fe7528fefccac16              # double 0.72882840000000004
	.quad	0x3feed7ea3740deed              # double 0.96385679999999995
	.quad	0x3f62eb29af25f2d9              # double 0.0023094000000000001
	.quad	0x3fe7db4a3e11b387              # double 0.74551880000000004
	.quad	0x3feea90a8594ffd7              # double 0.95813490000000001
	.quad	0x3f61ff0604fcbf03              # double 0.0021968000000000001
	.quad	0x3fe8631f8a0902de              # double 0.7621
	.quad	0x3fee76c8b4395810              # double 0.95199999999999996
	.quad	0x3f613404ea4a8c15              # double 0.0020999999999999999
	.quad	0x3fe8e9d36dd0bdf3              # double 0.77854319999999999
	.quad	0x3fee4121327faf0d              # double 0.94545040000000002
	.quad	0x3f60877e27e7ea4e              # double 0.0020177329999999999
	.quad	0x3fe96f3618c0c126              # double 0.79482560000000002
	.quad	0x3fee082f796a4f29              # double 0.93849919999999998
	.quad	0x3f5feb57d24eeccd              # double 0.0019482
	.quad	0x3fe9f31bebeed104              # double 0.81092640000000004
	.quad	0x3fedcc15eda80ea7              # double 0.93116279999999996
	.quad	0x3f5ef6654c8af30e              # double 0.0018898000000000001
	.quad	0x3fea75594870b21a              # double 0.82682480000000003
	.quad	0x3fed8cf6f3e7c3c9              # double 0.92345759999999999
	.quad	0x3f5e296ec1dd3832              # double 0.0018409329999999999
	.quad	0x3feaf5c28f5c28f6              # double 0.84250000000000003
	.quad	0x3fed4af4f0d844d0              # double 0.91539999999999999
	.quad	0x3f5d7dbf487fcb92              # double 0.0018
	.quad	0x3feb742edbb59ddc              # double 0.85793249999999998
	.quad	0x3fed0632492867fe              # double 0.90700639999999999
	.quad	0x3f5cf042c0107337              # double 0.001766267
	.quad	0x3febf048d2d7a8c9              # double 0.87308160000000001
	.quad	0x3fecbeafd397c229              # double 0.8982772
	.quad	0x3f5c78dc8aaff1cb              # double 0.0017378000000000001
	.quad	0x3fec69a18449a63c              # double 0.88789439999999997
	.quad	0x3fec745d9fee4771              # double 0.88920480000000002
	.quad	0x3f5c094b025cd192              # double 0.0017112
	.quad	0x3fecdfca3542d7ec              # double 0.90231810000000001
	.quad	0x3fec272bbdf3ebf6              # double 0.87978160000000005
	.quad	0x3f5b934b6e34de50              # double 0.0016830669999999999
	.quad	0x3fed525460aa64c3              # double 0.9163
	.quad	0x3febd70a3d70a3d7              # double 0.87
	.quad	0x3f5b089b1555e3c8              # double 0.0016500009999999999
	.quad	0x3fedc0eae18ac9f3              # double 0.9297995
	.quad	0x3feb83fbd85312cd              # double 0.85986130000000005
	.quad	0x3f5a616324f103c1              # double 0.0016101329999999999
	.quad	0x3fee2b678cd71378              # double 0.94279840000000003
	.quad	0x3feb2e3821af7d31              # double 0.84939200000000004
	.quad	0x3f59a191b59f899e              # double 0.0015644000000000001
	.quad	0x3fee91a254533e6b              # double 0.95527759999999995
	.quad	0x3fead5fdcdf69878              # double 0.83862199999999998
	.quad	0x3f58cc7f9ff34fee              # double 0.0015135999999999999
	.quad	0x3feef372f41362b3              # double 0.96721789999999996
	.quad	0x3fea7b8bc748ff4d              # double 0.82758129999999996
	.quad	0x3f57e587e23fae49              # double 0.0014585329999999999
	.quad	0x3fef50b0f27bb2ff              # double 0.97860000000000002
	.quad	0x3fea1f212d773190              # double 0.81630000000000003
	.quad	0x3f56f0068db8bac7              # double 0.0014
	.quad	0x3fefa90bfd64444d              # double 0.98938559999999997
	.quad	0x3fe9c0e0d08fcfec              # double 0.80479469999999997
	.quad	0x3f55e663433db9c1              # double 0.0013366669999999999
	.quad	0x3feffc4dc3d83185              # double 0.99954880000000001
	.quad	0x3fe960ed80a17b0f              # double 0.79308199999999995
	.quad	0x3f54cec41dd1a21f              # double 0.0012700000000000001
	.quad	0x3ff0253ab78bf2e8              # double 1.0090892
	.quad	0x3fe8ff865d7cb2d9              # double 0.781192
	.quad	0x3f53be22e5de15ca              # double 0.0012049999999999999
	.quad	0x3ff049c11431e62c              # double 1.0180064
	.quad	0x3fe89cea514211f3              # double 0.76915469999999997
	.quad	0x3f52c97850ebf82e              # double 0.0011466670000000001
	.quad	0x3ff06bb98c7e2824              # double 1.0263
	.quad	0x3fe8395810624dd3              # double 0.75700000000000001
	.quad	0x3f5205bc01a36e2f              # double 0.0011000000000000001
	.quad	0x3ff08b3171921393              # double 1.0339826999999999
	.quad	0x3fe7d5068ce1fb32              # double 0.74475409999999997
	.quad	0x3f5182df42f11658              # double 0.0010688
	.quad	0x3ff0a7e0ef99806f              # double 1.040986
	.quad	0x3fe7700119db7359              # double 0.73242240000000003
	.quad	0x3f513180ab8c0a65              # double 0.0010494
	.quad	0x3ff0c148344c37e7              # double 1.047188
	.quad	0x3fe70a44fd60128f              # double 0.72000359999999997
	.quad	0x3f50f79f086e638b              # double 0.0010356
	.quad	0x3ff0d6e7528a1090              # double 1.0524667000000001
	.quad	0x3fe6a3cfb3311a54              # double 0.70749649999999997
	.quad	0x3f50bb3926923b01              # double 0.0010212000000000001
	.quad	0x3ff0e83e425aee63              # double 1.0567
	.quad	0x3fe63c9eecbfb15b              # double 0.69489999999999996
	.quad	0x3f50624dd2f1a9fc              # double 0.001
	.quad	0x3ff0f4eaf907be3a              # double 1.0597943999999999
	.quad	0x3fe5d4bd5c16814c              # double 0.68221920000000003
	.quad	0x3f4fbd8a8f908142              # double 9.6864E-4
	.quad	0x3ff0fd21286eb413              # double 1.0617992000000001
	.quad	0x3fe56c4fb47339b3              # double 0.66947159999999994
	.quad	0x3f4e78bbfe7362f9              # double 9.2991999999999998E-4
	.quad	0x3ff10141b3ff766d              # double 1.0628067999999999
	.quad	0x3fe5037a0803da80              # double 0.65667439999999999
	.quad	0x3f4d0fb04c3892c4              # double 8.8688000000000005E-4
	.quad	0x3ff101ad7f29abcb              # double 1.0629096
	.quad	0x3fe49a6068f6639f              # double 0.64384479999999999
	.quad	0x3f4b9be7d28caa48              # double 8.4256000000000001E-4
	.quad	0x3ff0fec56d5cfaad              # double 1.0622
	.quad	0x3fe43126e978d4fe              # double 0.63100000000000001
	.quad	0x3f4a36e2eb1c432d              # double 8.0000000000000004E-4
	.quad	0x3ff0f8c5791b74d1              # double 1.0607352000000001
	.quad	0x3fe3c7ee0b0af5fd              # double 0.61815549999999997
	.quad	0x3f48ef652822ded2              # double 7.6095999999999998E-4
	.quad	0x3ff0ef628e6a916e              # double 1.0584435999999999
	.quad	0x3fe35ebc4df98817              # double 0.60531440000000003
	.quad	0x3f47b6aaf764fbd8              # double 7.2367999999999998E-4
	.quad	0x3ff0e232faff0f3f              # double 1.0552244
	.quad	0x3fe2f58f63b5b1fe              # double 0.59247559999999999
	.quad	0x3f4679e9fbdcafc4              # double 6.8592000000000002E-4
	.quad	0x3ff0d0cd0c8dacfc              # double 1.0509767999999999
	.quad	0x3fe28c64c800b532              # double 0.57963790000000004
	.quad	0x3f452657d884101a              # double 6.4543999999999995E-4
	.quad	0x3ff0bac710cb295f              # double 1.0456000000000001
	.quad	0x3fe22339c0ebedfa              # double 0.56679999999999997
	.quad	0x3f43a92a30553261              # double 5.9999999999999995E-4
	.quad	0x3ff09fe5280d6543              # double 1.0390368999999999
	.quad	0x3fe1ba0ca0f832ac              # double 0.55396109999999998
	.quad	0x3f41f3d6c78f85a0              # double 5.4786669999999996E-4
	.quad	0x3ff080742ea605b9              # double 1.0313608000000001
	.quad	0x3fe150fef614c4b3              # double 0.54113719999999998
	.quad	0x3f401bd6f61b7ab0              # double 4.9160000000000002E-4
	.quad	0x3ff05cd73bbb97f1              # double 1.0226662
	.quad	0x3fe0e8442198003c              # double 0.52835279999999996
	.quad	0x3f3c88ccc2bbd1d3              # double 4.3540000000000001E-4
	.quad	0x3ff03571814c9bba              # double 1.0130477
	.quad	0x3fe0800f4f285c40              # double 0.51563230000000004
	.quad	0x3f392180ef83cfe7              # double 3.8346670000000003E-4
	.quad	0x3ff00aa64c2f837b              # double 1.0025999999999999
	.quad	0x3fe0189374bc6a7f              # double 0.503
	.quad	0x3f364840e1719f80              # double 3.4000000000000002E-4
	.quad	0x3fefb94855da2728              # double 0.99136749999999995
	.quad	0x3fdf63d73fed55d9              # double 0.49046879999999998
	.quad	0x3f3422dae005c5af              # double 3.072533E-4
	.quad	0x3fef56aecdde44c4              # double 0.97933139999999996
	.quad	0x3fde980cd19f9a65              # double 0.47803040000000002
	.quad	0x3f328ea2f08563ad              # double 2.8316000000000002E-4
	.quad	0x3feeed7fcabb7a95              # double 0.9664916
	.quad	0x3fddcda96b9eb48c              # double 0.46567760000000002
	.quad	0x3f3165581e7a1397              # double 2.6543999999999998E-4
	.quad	0x3fee7dbae111fe2f              # double 0.95284789999999997
	.quad	0x3fdd048edaf9b63a              # double 0.45340320000000001
	.quad	0x3f3080b9e360eef5              # double 2.5181329999999998E-4
	.quad	0x3fee075f6fd21ff3              # double 0.93840000000000001
	.quad	0x3fdc3c9eecbfb15b              # double 0.44119999999999998
	.quad	0x3f2f75104d551d69              # double 2.4000000000000001E-4
	.quad	0x3fed8ace24bba12b              # double 0.92319399999999996
	.quad	0x3fdb760bf5d78812              # double 0.42908000000000002
	.quad	0x3f2e164f23890411              # double 2.2954670000000001E-4
	.quad	0x3fed082491afc04d              # double 0.90724400000000005
	.quad	0x3fdab0b7c3504c49              # double 0.41703600000000002
	.quad	0x3f2ceb732b1ae0d7              # double 2.2064E-4
	.quad	0x3fec7efe0ce0b913              # double 0.89050200000000002
	.quad	0x3fd9ec0b5675579b              # double 0.405032
	.quad	0x3f2bc832893f2e69              # double 2.1196E-4
	.quad	0x3febeef5ec80c73b              # double 0.87292000000000003
	.quad	0x3fd9276fb09203a3              # double 0.39303199999999999
	.quad	0x3f2a8042874368a6              # double 2.021867E-4
	.quad	0x3feb57a75112414b              # double 0.85444989999999998
	.quad	0x3fd8624dd2f1a9fc              # double 0.38100000000000001
	.quad	0x3f28e757928e0c9e              # double 1.9000000000000001E-4
	.quad	0x3feab90214ad362f              # double 0.83508400000000005
	.quad	0x3fd79c5bebb9211e              # double 0.36891839999999998
	.quad	0x3f26d5a0da205f80              # double 1.7421329999999999E-4
	.quad	0x3fea1409a2403148              # double 0.81494599999999995
	.quad	0x3fd6d641c094b026              # double 0.35682720000000001
	.quad	0x3f2466696b7e7e35              # double 1.5563999999999999E-4
	.quad	0x3fe969f8c21e1d21              # double 0.79418599999999995
	.quad	0x3fd610d2b61ad9a0              # double 0.34477679999999999
	.quad	0x3f21d20f81d3295d              # double 1.3595999999999999E-4
	.quad	0x3fe8bc0a06e9ff0d              # double 0.77295400000000003
	.quad	0x3fd54ce230e2201b              # double 0.33281759999999999
	.quad	0x3f1ea1e4686040d1              # double 1.1685329999999999E-4
	.quad	0x3fe80b780346dc5d              # double 0.75139999999999996
	.quad	0x3fd48b4395810625              # double 0.32100000000000001
	.quad	0x3f1a36e2eb1c432d              # double 1.0E-4
	.quad	0x3fe758bfb4b65592              # double 0.7295836
	.quad	0x3fd3cc3207ba08a5              # double 0.3093381
	.quad	0x3f16944f577f0b85              # double 8.6133330000000006E-5
	.quad	0x3fe6a49144608221              # double 0.70758880000000002
	.quad	0x3fd30ffb1fc66ee5              # double 0.29785040000000002
	.quad	0x3f138e523dba75b2              # double 7.4599999999999997E-5
	.quad	0x3fe5f074066219d1              # double 0.68560220000000005
	.quad	0x3fd2578caecf8bc4              # double 0.2865936
	.quad	0x3f110a137f38c543              # double 6.4999999999999994E-5
	.quad	0x3fe53def4ed7d468              # double 0.66381040000000002
	.quad	0x3fd1a3d4f15e7c8d              # double 0.27562449999999999
	.quad	0x3f0dd97652be7b12              # double 5.6933330000000001E-5
	.quad	0x3fe48e8a71de69ad              # double 0.64239999999999997
	.quad	0x3fd0f5c28f5c28f6              # double 0.26500000000000001
	.quad	0x3f0a36e2932643a7              # double 4.9999990000000002E-5
	.quad	0x3fe3e373372f4136              # double 0.62151489999999998
	.quad	0x3fd04e0a4f0e5b0d              # double 0.25476320000000002
	.quad	0x3f07270e0bdc572e              # double 4.4159999999999997E-5
	.quad	0x3fe33c53020593be              # double 0.60111380000000003
	.quad	0x3fcf588adb90b4ef              # double 0.24488960000000001
	.quad	0x3f04b2ea78844b29              # double 3.9480000000000001E-5
	.quad	0x3fe29869eeb12323              # double 0.58110519999999999
	.quad	0x3fce1f7007cfd81a              # double 0.2353344
	.quad	0x3f02ba41dac0d649              # double 3.5719999999999997E-5
	.quad	0x3fe1f6f84f31967b              # double 0.5613977
	.quad	0x3fccef4c5395a94a              # double 0.2260528
	.quad	0x3f011cdddc3eafbe              # double 3.2639999999999999E-5
	.quad	0x3fe1573eab367a10              # double 0.54190000000000005
	.quad	0x3fcbc6a7ef9db22d              # double 0.217
	.quad	0x3eff75104d551d69              # double 3.0000000000000001E-5
	.quad	0x3fe0b922962cfd8f              # double 0.52259949999999999
	.quad	0x3fcaa50a10243a72              # double 0.2081616
	.quad	0x3efcff225e1b8da9              # double 2.765333E-5
	.quad	0x3fe01d0d570097d5              # double 0.50354639999999995
	.quad	0x3fc98ad0a8fa5fad              # double 0.1995488
	.quad	0x3efacd35d34b9702              # double 2.5559999999999999E-5
	.quad	0x3fdf060a053c7fe3              # double 0.4847436
	.quad	0x3fc877c60a3aec65              # double 0.1911552
	.quad	0x3ef8c9d06e1709dd              # double 2.3640000000000001E-5
	.quad	0x3fddd61ef0860f79              # double 0.46619389999999999
	.quad	0x3fc76bb48400ab21              # double 0.18297440000000001
	.quad	0x3ef6df789f9bb5ac              # double 2.1813329999999999E-5
	.quad	0x3fdcaa64c2f837b5              # double 0.44790000000000002
	.quad	0x3fc6666666666666              # double 0.17499999999999999
	.quad	0x3ef4f8b588e368f1              # double 2.0000000000000002E-5
	.quad	0x3fdb82d8f8543a14              # double 0.4298613
	.quad	0x3fc5679463cfb331              # double 0.1672235
	.quad	0x3ef303a0f2f6fc7a              # double 1.813333E-5
	.quad	0x3fda5fd04a2fcefb              # double 0.41209800000000002
	.quad	0x3fc46f4b11764a09              # double 0.15964639999999999
	.quad	0x3ef0fca785eb66ec              # double 1.6200000000000001E-5
	.quad	0x3fd941d8e8640208              # double 0.39464399999999999
	.quad	0x3fc37dd517f4e94c              # double 0.15227760000000001
	.quad	0x3eedc79123a95274              # double 1.42E-5
	.quad	0x3fd829816e29a947              # double 0.37753330000000002
	.quad	0x3fc2937c4926ba7f              # double 0.1451259
	.quad	0x3ee972082d6586ca              # double 1.213333E-5
	.quad	0x3fd71758e219652c              # double 0.36080000000000001
	.quad	0x3fc1b089a0275254              # double 0.13819999999999999
	.quad	0x3ee4f8b588e368f1              # double 1.0000000000000001E-5
	.quad	0x3fd60b926fd9acaf              # double 0.34445629999999999
	.quad	0x3fc0d50077f50423              # double 0.13150029999999999
	.quad	0x3ee037cd31c24390              # double 7.7333329999999996E-6
	.quad	0x3fd5066b540bf0cf              # double 0.3285168
	.quad	0x3fc000d009982f36              # double 0.12502479999999999
	.quad	0x3ed6a634b28f33e5              # double 5.4E-6
	.quad	0x3fd40881aec1490b              # double 0.3130192
	.quad	0x3fbe68504b71ee5a              # double 0.1187792
	.quad	0x3ecad7f29abcaf48              # double 3.1999999999999999E-6
	.quad	0x3fd3127334ab0278              # double 0.29800110000000002
	.quad	0x3fbcde6f8c7fd5a3              # double 0.1127691
	.quad	0x3eb65e9f231f5f61              # double 1.3333330000000001E-6
	.quad	0x3fd224dd2f1a9fbe              # double 0.28349999999999997
	.quad	0x3fbb645a1cac0831              # double 0.107
	.quad	0x0000000000000000              # double 0
	.quad	0x3fd14038d533a39b              # double 0.26954479999999997
	.quad	0x3fb9fa58205285df              # double 0.1014762
	.quad	0x0000000000000000              # double 0
	.quad	0x3fd0643e6df9d89f              # double 0.25611840000000002
	.quad	0x3fb89fd1970bf5ad              # double 0.096188640000000006
	.quad	0x0000000000000000              # double 0
	.quad	0x3fcf20d6395d18e0              # double 0.24318960000000001
	.quad	0x3fb753d5951d5e0a              # double 0.091122960000000002
	.quad	0x0000000000000000              # double 0
	.quad	0x3fcd88780926196f              # double 0.23072719999999999
	.quad	0x3fb61574058b5a3c              # double 0.086264850000000004
	.quad	0x0000000000000000              # double 0
	.quad	0x3fcbfe5c91d14e3c              # double 0.21870000000000001
	.quad	0x3fb4e3bcd35a8588              # double 0.081600000000000006
	.quad	0x0000000000000000              # double 0
	.quad	0x3fca822863cc5833              # double 0.20709710000000001
	.quad	0x3fb3be2da2a586e3              # double 0.077120640000000004
	.quad	0x0000000000000000              # double 0
	.quad	0x3fc91402ec438a99              # double 0.19592319999999999
	.quad	0x3fb2a4b17ab6d56a              # double 0.072825520000000005
	.quad	0x0000000000000000              # double 0
	.quad	0x3fc7b3ad41164ac5              # double 0.1851708
	.quad	0x3fb196fbda816b50              # double 0.068710080000000007
	.quad	0x0000000000000000              # double 0
	.quad	0x3fc660e7a1646936              # double 0.1748323
	.quad	0x3fb094c040f842c7              # double 0.064769759999999996
	.quad	0x0000000000000000              # double 0
	.quad	0x3fc51b71758e2196              # double 0.16489999999999999
	.quad	0x3faf3b645a1cac08              # double 0.060999999999999999
	.quad	0x0000000000000000              # double 0
	.quad	0x3fc3e30e57b197bd              # double 0.1553667
	.quad	0x3fad630939ba8bd8              # double 0.057396210000000003
	.quad	0x0000000000000000              # double 0
	.quad	0x3fc2b7aa25d8d79d              # double 0.14623
	.quad	0x3fab9ffeb8823d07              # double 0.053955040000000003
	.quad	0x0000000000000000              # double 0
	.quad	0x3fc19945b6c3760c              # double 0.13749
	.quad	0x3fa9f1e93bee42be              # double 0.050673759999999998
	.quad	0x0000000000000000              # double 0
	.quad	0x3fc087e10a71730a              # double 0.1291467
	.quad	0x3fa8586d7f5f5bb0              # double 0.047549649999999999
	.quad	0x0000000000000000              # double 0
	.quad	0x3fbf06f694467382              # double 0.1212
	.quad	0x3fa6d330941c8217              # double 0.044580000000000002
	.quad	0x0000000000000000              # double 0
	.quad	0x3fbd177dcb06f9ef              # double 0.1136397
	.quad	0x3fa561662172159c              # double 0.041758719999999999
	.quad	0x0000000000000000              # double 0
	.quad	0x3fbb414a4d2b2bfe              # double 0.106465
	.quad	0x3fa402f1a1ee51d8              # double 0.039084960000000002
	.quad	0x0000000000000000              # double 0
	.quad	0x3fb985500b861b0d              # double 0.099690440000000005
	.quad	0x3fa2b87ee208484e              # double 0.03656384
	.quad	0x0000000000000000              # double 0
	.quad	0x3fb7e483cdaa6d51              # double 0.093330609999999994
	.quad	0x3fa182b9ae370a83              # double 0.034200479999999998
	.quad	0x0000000000000000              # double 0
	.quad	0x3fb65fd8adab9f56              # double 0.087400000000000005
	.quad	0x3fa0624dd2f1a9fc              # double 0.032000000000000001
	.quad	0x0000000000000000              # double 0
	.quad	0x3fb4f77618b6045e              # double 0.081900959999999994
	.quad	0x3f9eae84b83611e0              # double 0.029962610000000001
	.quad	0x0000000000000000              # double 0
	.quad	0x3fb3a971fecaf6b4              # double 0.076804280000000003
	.quad	0x3f9cc01f6a5385e4              # double 0.02807664
	.quad	0x0000000000000000              # double 0
	.quad	0x3fb273a569309b28              # double 0.072077119999999995
	.quad	0x3f9af615707f99e9              # double 0.02632936
	.quad	0x0000000000000000              # double 0
	.quad	0x3fb153e9612d168f              # double 0.067686640000000006
	.quad	0x3f994d112acaaee5              # double 0.024708049999999999
	.quad	0x0000000000000000              # double 0
	.quad	0x3fb04816f0068db9              # double 0.063600000000000004
	.quad	0x3f97c1bda5119ce0              # double 0.023199999999999998
	.quad	0x0000000000000000              # double 0
	.quad	0x3fae9f00e1a74f65              # double 0.059806850000000002
	.quad	0x3f9652f0e8b5e179              # double 0.021800770000000001
	.quad	0x0000000000000000              # double 0
	.quad	0x3facd103e918b2d4              # double 0.056282159999999998
	.quad	0x3f94fe3edfb9b975              # double 0.020501120000000001
	.quad	0x0000000000000000              # double 0
	.quad	0x3fab1f0528dec674              # double 0.052971039999999997
	.quad	0x3f93be6b6020512e              # double 0.019281079999999999
	.quad	0x0000000000000000              # double 0
	.quad	0x3fa981d3295d4682              # double 0.049818609999999999
	.quad	0x3f928e3aebb94c11              # double 0.018120689999999998
	.quad	0x0000000000000000              # double 0
	.quad	0x3fa7f23cc8de2ac3              # double 0.046769999999999999
	.quad	0x3f916872b020c49c              # double 0.017000000000000001
	.quad	0x0000000000000000              # double 0
	.quad	0x3fa66adcedac4065              # double 0.043784049999999998
	.quad	0x3f90491547bad4a8              # double 0.015903790000000001
	.quad	0x0000000000000000              # double 0
	.quad	0x3fa4ed9d7cd30f5c              # double 0.040875359999999999
	.quad	0x3f8e62f496eb3e7d              # double 0.01483718
	.quad	0x0000000000000000              # double 0
	.quad	0x3fa37e41cf584261              # double 0.038072639999999998
	.quad	0x3f8c48c6177bf295              # double 0.013810680000000001
	.quad	0x0000000000000000              # double 0
	.quad	0x3fa2208d9427bfb8              # double 0.035404610000000003
	.quad	0x3f8a491f02cf9326              # double 0.01283478
	.quad	0x0000000000000000              # double 0
	.quad	0x3fa0d844d013a92a              # double 0.032899999999999999
	.quad	0x3f8869835158b828              # double 0.01192
	.quad	0x0000000000000000              # double 0
	.quad	0x3f9f4c3811ea3843              # double 0.030564190000000001
	.quad	0x3f86aafb6bc6a291              # double 0.01106831
	.quad	0x0000000000000000              # double 0
	.quad	0x3f9d0fcb242b2d80              # double 0.028380559999999999
	.quad	0x3f850a37108d6be4              # double 0.01027339
	.quad	0x0000000000000000              # double 0
	.quad	0x3f9afa2448df97d6              # double 0.026344840000000001
	.quad	0x3f83863357bda386              # double 0.0095333109999999992
	.quad	0x0000000000000000              # double 0
	.quad	0x3f990a24463065f9              # double 0.024452749999999999
	.quad	0x3f821def18150e74              # double 0.0088461570000000003
	.quad	0x0000000000000000              # double 0
	.quad	0x3f973eab367a0f91              # double 0.022700000000000001
	.quad	0x3f80d0678c0053e3              # double 0.0082100000000000002
	.quad	0x0000000000000000              # double 0
	.quad	0x3f95971ec0099ade              # double 0.021084289999999999
	.quad	0x3f7f3a1d2111e244              # double 0.0076237809999999996
	.quad	0x0000000000000000              # double 0
	.quad	0x3f9411fdae6c0e9c              # double 0.01959988
	.quad	0x3f7d059b05bb91f8              # double 0.0070854239999999999
	.quad	0x0000000000000000              # double 0
	.quad	0x3f92accdd3dde320              # double 0.018237320000000001
	.quad	0x3f7affa9dda34d91              # double 0.0065914759999999998
	.quad	0x0000000000000000              # double 0
	.quad	0x3f916515ae6807d1              # double 0.016987169999999999
	.quad	0x3f7924ab0526db61              # double 0.0061384849999999999
	.quad	0x0000000000000000              # double 0
	.quad	0x3f90385c67dfe32a              # double 0.01584
	.quad	0x3f7771001d5c3159              # double 0.0057229999999999998
	.quad	0x0000000000000000              # double 0
	.quad	0x3f8e4a8e18b1fd94              # double 0.014790640000000001
	.quad	0x3f75e29a7aa64a93              # double 0.0053430589999999998
	.quad	0x0000000000000000              # double 0
	.quad	0x3f8c5398587bed0b              # double 0.013831319999999999
	.quad	0x3f747678c6fff304              # double 0.0049957960000000003
	.quad	0x0000000000000000              # double 0
	.quad	0x3f8a84d66902cde6              # double 0.012948680000000001
	.quad	0x3f732790a3e2d9e6              # double 0.0046764040000000003
	.quad	0x0000000000000000              # double 0
	.quad	0x3f88d731aa9cf71c              # double 0.0121292
	.quad	0x3f71f0d76e107ed3              # double 0.0043800749999999998
	.quad	0x0000000000000000              # double 0
	.quad	0x3f874378a5ae24ec              # double 0.01135916
	.quad	0x3f70cd423d9231c6              # double 0.0041019999999999997
	.quad	0x0000000000000000              # double 0
	.quad	0x3f85c4d735059b4a              # double 0.010629349999999999
	.quad	0x3f6f71d1c3457e53              # double 0.0038384529999999999
	.quad	0x0000000000000000              # double 0
	.quad	0x3f845ad1543d665f              # double 0.0099388459999999994
	.quad	0x3f6d66e2da77a7a4              # double 0.0035890990000000001
	.quad	0x0000000000000000              # double 0
	.quad	0x3f8305cee5c585f5              # double 0.0092884219999999993
	.quad	0x3f6b7a4e9d136e13              # double 0.0033542189999999999
	.quad	0x0000000000000000              # double 0
	.quad	0x3f81c63810c62978              # double 0.0086788539999999997
	.quad	0x3f69acab5e0100f6              # double 0.0031340930000000001
	.quad	0x0000000000000000              # double 0
	.quad	0x3f809c74b7af50b2              # double 0.0081109159999999993
	.quad	0x3f67fe8ee6b8305e              # double 0.0029290000000000002
	.quad	0x0000000000000000              # double 0
	.quad	0x3f7f0eb5c7c4f285              # double 0.0075823879999999998
	.quad	0x3f666e4b2e9ef13f              # double 0.0027381390000000001
	.quad	0x0000000000000000              # double 0
	.quad	0x3f7d0916c3d59c18              # double 0.0070887459999999999
	.quad	0x3f64f872f675455a              # double 0.002559876
	.quad	0x0000000000000000              # double 0
	.quad	0x3f7b253dc98693a5              # double 0.0066273130000000001
	.quad	0x3f639aff16c35d5a              # double 0.0023932440000000001
	.quad	0x0000000000000000              # double 0
	.quad	0x3f79605b2bed1031              # double 0.0061954080000000003
	.quad	0x3f6253e7dea10aa7              # double 0.0022372749999999999
	.quad	0x0000000000000000              # double 0
	.quad	0x3f77b79e2b3d8a3e              # double 0.005790346
	.quad	0x3f61212513b5bf6a              # double 0.002091
	.quad	0x0000000000000000              # double 0
	.quad	0x3f76289d1bf3eb39              # double 0.0054098260000000004
	.quad	0x3f6000f808cbe7b1              # double 0.0019535870000000001
	.quad	0x0000000000000000              # double 0
	.quad	0x3f74b2046becda81              # double 0.0050525830000000002
	.quad	0x3f5de4d7db73aea3              # double 0.0018245799999999999
	.quad	0x0000000000000000              # double 0
	.quad	0x3f7352ab7c22c3d8              # double 0.0047175120000000001
	.quad	0x3f5be95518b62f51              # double 0.0017035799999999999
	.quad	0x0000000000000000              # double 0
	.quad	0x3f72096968d7e35f              # double 0.0044035070000000001
	.quad	0x3f5a0dba4a35a5a1              # double 0.0015901870000000001
	.quad	0x0000000000000000              # double 0
	.quad	0x3f70d513f6b58714              # double 0.0041094570000000004
	.quad	0x3f585058dde7a744              # double 0.0014840000000000001
	.quad	0x0000000000000000              # double 0
	.quad	0x3f6f684c5e6c35cd              # double 0.003833913
	.quad	0x3f56aeff42a6ffc5              # double 0.001384496
	.quad	0x0000000000000000              # double 0
	.quad	0x3f6d4ae316ffe598              # double 0.0035757480000000001
	.quad	0x3f5527f87524cdc8              # double 0.0012912679999999999
	.quad	0x0000000000000000              # double 0
	.quad	0x3f6b509f3aff6b97              # double 0.0033343420000000001
	.quad	0x3f53ba53f0ba5f2e              # double 0.0012040919999999999
	.quad	0x0000000000000000              # double 0
	.quad	0x3f697833ee4415da              # double 0.0031090750000000002
	.quad	0x3f52652130c101d7              # double 0.001122744
	.quad	0x0000000000000000              # double 0
	.quad	0x3f67c05454a73270              # double 0.0028993270000000002
	.quad	0x3f51276fb09203a3              # double 0.001047
	.quad	0x0000000000000000              # double 0
	.quad	0x3f66276dc6f1b04b              # double 0.0027043480000000001
	.quad	0x3f50001d1930f79b              # double 9.7658959999999992E-4
	.quad	0x0000000000000000              # double 0
	.quad	0x3f64ab280c63909e              # double 0.00252302
	.quad	0x3f4ddaef3fe26fd7              # double 9.1110880000000004E-4
	.quad	0x0000000000000000              # double 0
	.quad	0x3f63490c52379f17              # double 0.0023541679999999998
	.quad	0x3f4bdb6f25477a4c              # double 8.5013319999999995E-4
	.quad	0x0000000000000000              # double 0
	.quad	0x3f61fea33c384824              # double 0.0021966160000000002
	.quad	0x3f49fe2a7e32ffbf              # double 7.9323839999999996E-4
	.quad	0x0000000000000000              # double 0
	.quad	0x3f60c9768110b6b2              # double 0.0020491900000000002
	.quad	0x3f483f91e646f156              # double 7.3999999999999999E-4
	.quad	0x0000000000000000              # double 0
	.quad	0x3f5f4f25ad0dbfb1              # double 0.00191096
	.quad	0x3f469cd55063769b              # double 6.9008269999999998E-4
	.quad	0x0000000000000000              # double 0
	.quad	0x3f5d2fe47cca5e91              # double 0.001781438
	.quad	0x3f451479b4a1ddb6              # double 6.4331000000000002E-4
	.quad	0x0000000000000000              # double 0
	.quad	0x3f5b33018a18c823              # double 0.00166011
	.quad	0x3f43a4efdb6710d3              # double 5.9949600000000003E-4
	.quad	0x0000000000000000              # double 0
	.quad	0x3f595651b5183f00              # double 0.001546459
	.quad	0x3f424ca8561e3a6b              # double 5.5845470000000003E-4
	.quad	0x0000000000000000              # double 0
	.quad	0x3f5797ad168a4148              # double 0.001439971
	.quad	0x3f410a137f38c543              # double 5.1999999999999995E-4
	.quad	0x0000000000000000              # double 0
	.quad	0x3f55f48b242d5342              # double 0.0013400420000000001
	.quad	0x3f3fb6b91609f83e              # double 4.8391359999999997E-4
	.quad	0x0000000000000000              # double 0
	.quad	0x3f546b41977a04a9              # double 0.001246275
	.quad	0x3f3d7ea20eb690c6              # double 4.500528E-4
	.quad	0x0000000000000000              # double 0
	.quad	0x3f52fafac3bc3e1a              # double 0.0011584709999999999
	.quad	0x3f3b6aaaf3d303c5              # double 4.1834519999999999E-4
	.quad	0x0000000000000000              # double 0
	.quad	0x3f51a2dfe95f29b1              # double 0.00107643
	.quad	0x3f39799cd0bb00e3              # double 3.887184E-4
	.quad	0x0000000000000000              # double 0
	.quad	0x3f50621762a2558e              # double 9.9994930000000008E-4
	.quad	0x3f37aa40b0ca37c7              # double 3.611E-4
	.quad	0x0000000000000000              # double 0
	.quad	0x3f4e6eccf19dad1e              # double 9.2873580000000003E-4
	.quad	0x3f35facd2a03a367              # double 3.3538349999999998E-4
	.quad	0x0000000000000000              # double 0
	.quad	0x3f4c429d31ca3f8e              # double 8.6243319999999997E-4
	.quad	0x3f34691a5528c1e4              # double 3.1144039999999999E-4
	.quad	0x0000000000000000              # double 0
	.quad	0x3f4a3d2e2ce5c681              # double 8.0075030000000002E-4
	.quad	0x3f32f364cb8d85db              # double 2.8916560000000002E-4
	.quad	0x0000000000000000              # double 0
	.quad	0x3f485c0ec10565bd              # double 7.4339600000000001E-4
	.quad	0x3f3197e8b8926281              # double 2.6845390000000002E-4
	.quad	0x0000000000000000              # double 0
	.quad	0x3f469ccc8263c2d4              # double 6.9007859999999999E-4
	.quad	0x3f3054e1d9a44ba4              # double 2.4919999999999999E-4
	.quad	0x0000000000000000              # double 0
	.quad	0x3f44fd08c6fc67eb              # double 6.4051560000000002E-4
	.quad	0x3f2e5134312742cf              # double 2.3130190000000001E-4
	.quad	0x0000000000000000              # double 0
	.quad	0x3f437b0b89d7f7d2              # double 5.9450210000000004E-4
	.quad	0x3f2c23a7430839f7              # double 2.1468560000000001E-4
	.quad	0x0000000000000000              # double 0
	.quad	0x3f421560345437be              # double 5.5186459999999999E-4
	.quad	0x3f2a1f0252296865              # double 1.9928839999999999E-4
	.quad	0x0000000000000000              # double 0
	.quad	0x3f40ca90e5f46eb0              # double 5.1242900000000001E-4
	.quad	0x3f284129ebe1baf1              # double 1.8504750000000001E-4
	.quad	0x0000000000000000              # double 0
	.quad	0x3f3f324fea6b46b5              # double 4.7602130000000002E-4
	.quad	0x3f268801c1a11fa0              # double 1.719E-4
	.quad	0x0000000000000000              # double 0
	.quad	0x3f3cff23bdf38bc0              # double 4.4245359999999997E-4
	.quad	0x3f24f1436da0bee8              # double 1.5977809999999999E-4
	.quad	0x0000000000000000              # double 0
	.quad	0x3f3af8054b1da997              # double 4.1151170000000001E-4
	.quad	0x3f237a56137a33b7              # double 1.4860439999999999E-4
	.quad	0x0000000000000000              # double 0
	.quad	0x3f39195c96859d4b              # double 3.8298139999999999E-4
	.quad	0x3f2220a1b2ae17ca              # double 1.383016E-4
	.quad	0x0000000000000000              # double 0
	.quad	0x3f375f94387c605d              # double 3.5664909999999999E-4
	.quad	0x3f20e18f26a403ab              # double 1.287925E-4
	.quad	0x0000000000000000              # double 0
	.quad	0x3f35c7165b5f6ce5              # double 3.323011E-4
	.quad	0x3f1f75104d551d69              # double 1.2E-4
	.quad	0x0000000000000000              # double 0
	.quad	0x3f344ce30e80ece8              # double 3.0975860000000003E-4
	.quad	0x3f1d52c393b57666              # double 1.118595E-4
	.quad	0x0000000000000000              # double 0
	.quad	0x3f32eeb8a590824b              # double 2.8888710000000002E-4
	.quad	0x3f1b58f52f599955              # double 1.043224E-4
	.quad	0x0000000000000000              # double 0
	.quad	0x3f31aa1ee8719aac              # double 2.6953939999999998E-4
	.quad	0x3f198414dffc788e              # double 9.7335600000000004E-5
	.quad	0x0000000000000000              # double 0
	.quad	0x3f307c9d31142443              # double 2.5156819999999999E-4
	.quad	0x3f17d090299a0981              # double 9.0845869999999995E-5
	.quad	0x0000000000000000              # double 0
	.quad	0x3f2ec774d6e91bbd              # double 2.348261E-4
	.quad	0x3f163ad4e8244128              # double 8.4800000000000001E-5
	.quad	0x0000000000000000              # double 0
	.quad	0x3f2cba288df14d68              # double 2.1917099999999999E-4
	.quad	0x3f14bf716fdbe766              # double 7.9146669999999997E-5
	.quad	0x0000000000000000              # double 0
	.quad	0x3f2acebf3e8f74e2              # double 2.045258E-4
	.quad	0x3f135c86c7379520              # double 7.3857999999999997E-5
	.quad	0x0000000000000000              # double 0
	.quad	0x3f29038b6999e65f              # double 1.9084049999999999E-4
	.quad	0x3f1210dfdd5bf75e              # double 6.8916000000000002E-5
	.quad	0x0000000000000000              # double 0
	.quad	0x3f2756e2239bf282              # double 1.7806540000000001E-4
	.quad	0x3f10db477572bb64              # double 6.4302670000000001E-5
	.quad	0x0000000000000000              # double 0
	.quad	0x3f25c715ed6bed7e              # double 1.6615050000000001E-4
	.quad	0x3f0f75104d551d69              # double 6.0000000000000002E-5
	.quad	0x0000000000000000              # double 0
	.quad	0x3f2451ba958f3440              # double 1.550236E-4
	.quad	0x3f0d59c26813c074              # double 5.5981869999999998E-5
	.quad	0x0000000000000000              # double 0
	.quad	0x3f22f4b4a95cb39f              # double 1.4462190000000001E-4
	.quad	0x3f0b6199f3bd99ac              # double 5.2225599999999997E-5
	.quad	0x0000000000000000              # double 0
	.quad	0x3f21aed25b9a141a              # double 1.3490980000000001E-4
	.quad	0x3f098adf7a4b0b1b              # double 4.8718399999999998E-5
	.quad	0x0000000000000000              # double 0
	.quad	0x3f207ee472c1fa9d              # double 1.25852E-4
	.quad	0x3f07d3db2dbe7745              # double 4.5447469999999999E-5
	.quad	0x0000000000000000              # double 0
	.quad	0x3f1ec773fb021cee              # double 1.17413E-4
	.quad	0x3f063ad4e8244128              # double 4.2400000000000001E-5
	.quad	0x0000000000000000              # double 0
	.quad	0x3f1cb7e0705c7840              # double 1.095515E-4
	.quad	0x3f04bdcafbe531d4              # double 3.9561039999999999E-5
	.quad	0x0000000000000000              # double 0
	.quad	0x3f1acc2b899308a8              # double 1.022245E-4
	.quad	0x3f035aa9dd722b28              # double 3.6915120000000003E-5
	.quad	0x0000000000000000              # double 0
	.quad	0x3f1901d02c004da9              # double 9.5394450000000006E-5
	.quad	0x3f020f9fa1c5b3e6              # double 3.444868E-5
	.quad	0x0000000000000000              # double 0
	.quad	0x3f17564af4ccc45f              # double 8.90239E-5
	.quad	0x3f00dada5dda52d4              # double 3.2148160000000002E-5
	.quad	0x0000000000000000              # double 0
	.quad	0x3f15c7164561ed04              # double 8.3075270000000005E-5
	.quad	0x3eff75104d551d69              # double 3.0000000000000001E-5
	.quad	0x0000000000000000              # double 0
	.quad	0x3f1451c9dfd21f06              # double 7.7512689999999993E-5
	.quad	0x3efd59d80d9da268              # double 2.7991250000000001E-5
	.quad	0x0000000000000000              # double 0
	.quad	0x3f12f4d8914781c7              # double 7.231304E-5
	.quad	0x3efb61ce2dcd512d              # double 2.6113560000000001E-5
	.quad	0x0000000000000000              # double 0
	.quad	0x3f11af03d5f9cf6b              # double 6.7457780000000002E-5
	.quad	0x3ef98b26f22aa7e6              # double 2.436024E-5
	.quad	0x0000000000000000              # double 0
	.quad	0x3f107f0e5dfdc06c              # double 6.2928439999999995E-5
	.quad	0x3ef7d4174ee823cd              # double 2.272461E-5
	.quad	0x0000000000000000              # double 0
	.quad	0x3f0ec774aaee1bfa              # double 5.8706519999999999E-5
	.quad	0x3ef63ad4e8244128              # double 2.12E-5
	.quad	0x0000000000000000              # double 0
	.quad	0x3f0cb7247dbb7d26              # double 5.4770279999999998E-5
	.quad	0x3ef4bd439b49edc1              # double 1.9778550000000001E-5
	.quad	0x0000000000000000              # double 0
	.quad	0x3f0aca6a74a3780d              # double 5.1099179999999999E-5
	.quad	0x3ef35966323fec75              # double 1.8452850000000001E-5
	.quad	0x0000000000000000              # double 0
	.quad	0x3f08ff0970d12843              # double 4.7676539999999999E-5
	.quad	0x3ef20d9e4c247c7c              # double 1.7216869999999999E-5
	.quad	0x0000000000000000              # double 0
	.quad	0x3f0752c3fb79a9d6              # double 4.4485669999999998E-5
	.quad	0x3ef0d84e3801dc1c              # double 1.6064590000000001E-5
	.quad	0x0000000000000000              # double 0
	.quad	0x3f05c35ead9615f9              # double 4.1509940000000003E-5
	.quad	0x3eef6fb1e99c9146              # double 1.499E-5
	.quad	0x0000000000000000              # double 0
	.quad	0x3f044eaffe176d0e              # double 3.873324E-5
	.quad	0x3eed555d2007da84              # double 1.3987279999999999E-5
	.quad	0x0000000000000000              # double 0
	.quad	0x3f02f2e6b1e434e7              # double 3.6142030000000003E-5
	.quad	0x3eeb5eff5f8936fd              # double 1.305155E-5
	.quad	0x0000000000000000              # double 0
	.quad	0x3f01ae4b52f4cf8c              # double 3.3723519999999998E-5
	.quad	0x3ee98a1c507c1a06              # double 1.217818E-5
	.quad	0x0000000000000000              # double 0
	.quad	0x3f007f24b373a16c              # double 3.1464870000000002E-5
	.quad	0x3ee7d4379b3bf6f7              # double 1.1362539999999999E-5
	.quad	0x0000000000000000              # double 0
	.quad	0x3efec774aaee1bfa              # double 2.935326E-5
	.quad	0x3ee63ad4e8244128              # double 1.06E-5
	.quad	0x0000000000000000              # double 0
	.quad	0x3efcb49dd742fecd              # double 2.7375730000000002E-5
	.quad	0x3ee4bb7096cadc72              # double 9.885877E-6
	.quad	0x0000000000000000              # double 0
	.quad	0x3efac3a29a04e1af              # double 2.5524330000000001E-5
	.quad	0x3ee354809d97856b              # double 9.2173039999999999E-6
	.quad	0x0000000000000000              # double 0
	.quad	0x3ef8f316bc9dbe36              # double 2.379376E-5
	.quad	0x3ee204fd3dbadd65              # double 8.5923620000000003E-6
	.quad	0x0000000000000000              # double 0
	.quad	0x3ef7418ca89f8fe1              # double 2.2178700000000002E-5
	.quad	0x3ee0cbdedb94b8b3              # double 8.0091329999999995E-6
	.quad	0x0000000000000000              # double 0
	.quad	0x3ef5ad96c79c522c              # double 2.0673830000000001E-5
	.quad	0x3edf503bfd683d5a              # double 7.4657000000000004E-6
	.quad	0x0000000000000000              # double 0
	.quad	0x3ef4355b9f6a965a              # double 1.9272259999999999E-5
	.quad	0x3edd30c735cf70a4              # double 6.959567E-6
	.quad	0x0000000000000000              # double 0
	.quad	0x3ef2d6d19b593075              # double 1.7966400000000001E-5
	.quad	0x3edb366e7c6186cd              # double 6.487995E-6
	.quad	0x0000000000000000              # double 0
	.quad	0x3ef190450cf27d46              # double 1.6749910000000001E-5
	.quad	0x3ed95ebdb889e7b9              # double 6.048699E-6
	.quad	0x0000000000000000              # double 0
	.quad	0x3ef060045584d6bc              # double 1.5616480000000001E-5
	.quad	0x3ed7a7415e70c756              # double 5.6393959999999996E-6
	.quad	0x0000000000000000              # double 0
	.quad	0x3eee88b78d353344              # double 1.455977E-5
	.quad	0x3ed60d850f232785              # double 5.2577999999999999E-6
	.quad	0x0000000000000000              # double 0
	.quad	0x3eec776a7cc3f37c              # double 1.357387E-5
	.quad	0x3ed48f3c8d8438d6              # double 4.9017710000000001E-6
	.quad	0x0000000000000000              # double 0
	.quad	0x3eea89c1fec93966              # double 1.2654359999999999E-5
	.quad	0x3ed32ab311a4c001              # double 4.5697200000000002E-6
	.quad	0x0000000000000000              # double 0
	.quad	0x3ee8bd96f1f00211              # double 1.179723E-5
	.quad	0x3ed1de5935bbb43f              # double 4.2601939999999997E-6
	.quad	0x0000000000000000              # double 0
	.quad	0x3ee710be155b5043              # double 1.0998440000000001E-5
	.quad	0x3ed0a89f4da1a6c6              # double 3.9717389999999996E-6
	.quad	0x0000000000000000              # double 0
	.quad	0x3ee5811047b62109              # double 1.0253980000000001E-5
	.quad	0x3ecf0feacda1858d              # double 3.7029000000000002E-6
	.quad	0x0000000000000000              # double 0
	.quad	0x3ee40c4bbde6c9a7              # double 9.5596459999999999E-6
	.quad	0x3eccf576ae0360b2              # double 3.4521630000000002E-6
	.quad	0x0000000000000000              # double 0
	.quad	0x3ee2b09e002b04d9              # double 8.9120440000000008E-6
	.quad	0x3ecaff403c3fb9cc              # double 3.2183019999999998E-6
	.quad	0x0000000000000000              # double 0
	.quad	0x3ee16c840751b8ab              # double 8.308358E-6
	.quad	0x3ec92b185e4fff62              # double 3.0002999999999999E-6
	.quad	0x0000000000000000              # double 0
	.quad	0x3ee03e7a629c3225              # double 7.7457689999999998E-6
	.quad	0x3ec776cf6d70d3ee              # double 2.7971389999999999E-6
	.quad	0x0000000000000000              # double 0
	.quad	0x3ede49fab5dab092              # double 7.2214559999999999E-6
	.quad	0x3ec5e03536220de2              # double 2.6077999999999998E-6
	.quad	0x0000000000000000              # double 0
	.quad	0x3edc3cf0a2f51fee              # double 6.7324750000000003E-6
	.quad	0x3ec4650154707211              # double 2.4312199999999998E-6
	.quad	0x0000000000000000              # double 0
	.quad	0x3eda534204701415              # double 6.2764230000000002E-6
	.quad	0x3ec303569838307e              # double 2.266531E-6
	.quad	0x0000000000000000              # double 0
	.quad	0x3ed88aca32482040              # double 5.8513040000000003E-6
	.quad	0x3ec1b9a92e7b6e9f              # double 2.1130130000000001E-6
	.quad	0x0000000000000000              # double 0
	.quad	0x3ed6e1636b003f93              # double 5.4551179999999997E-6
	.quad	0x3ec0866b9e05edcf              # double 1.9699430000000001E-6
	.quad	0x0000000000000000              # double 0
	.quad	0x3ed554e8c0369f43              # double 5.0858679999999998E-6
	.quad	0x3ebed0230e3a0ef6              # double 1.8365999999999999E-6
	.quad	0x0000000000000000              # double 0
	.quad	0x3ed3e31c3ffb28d5              # double 4.7414659999999997E-6
	.quad	0x3ebcb9f8cb5f8fb5              # double 1.7122300000000001E-6
	.quad	0x0000000000000000              # double 0
	.quad	0x3ed28a313849f567              # double 4.4202359999999998E-6
	.quad	0x3ebac7bf3f1ff940              # double 1.596228E-6
	.quad	0x0000000000000000              # double 0
	.quad	0x3ed148a834bd1944              # double 4.1207829999999997E-6
	.quad	0x3eb8f74c4217e672              # double 1.4880899999999999E-6
	.quad	0x0000000000000000              # double 0
	.quad	0x3ed01d02da6840ca              # double 3.8417159999999996E-6
	.quad	0x3eb74677dfd7224b              # double 1.387314E-6
	.quad	0x0000000000000000              # double 0
	.quad	0x3ece0b8a02a490fb              # double 3.5816519999999999E-6
	.quad	0x3eb5b31c56e0a7ef              # double 1.2934E-6
	.quad	0x0000000000000000              # double 0
	.quad	0x3ecc02b87b478ac7              # double 3.339127E-6
	.quad	0x3eb43af51c6ad074              # double 1.2058200000000001E-6
	.quad	0x0000000000000000              # double 0
	.quad	0x3eca1d01cfa3630a              # double 3.1129490000000002E-6
	.quad	0x3eb2dc284cbe9414              # double 1.1241430000000001E-6
	.quad	0x0000000000000000              # double 0
	.quad	0x3ec85841e4717905              # double 2.9021210000000001E-6
	.quad	0x3eb1952a14de1846              # double 1.048009E-6
	.quad	0x0000000000000000              # double 0
	.quad	0x3ec6b25411ae5ff1              # double 2.7056450000000002E-6
	.quad	0x3eb0646ea1cb8282              # double 9.7705800000000004E-7
	.quad	0x0000000000000000              # double 0
	.quad	0x3ec52914c8d04318              # double 2.522525E-6
	.quad	0x3eae90d44111f07c              # double 9.1093000000000002E-7
	.quad	0x0000000000000000              # double 0
	.quad	0x3ec3ba4b0a8a3856              # double 2.3517260000000002E-6
	.quad	0x3eac7f02b2e49bd2              # double 8.4925099999999998E-7
	.quad	0x0000000000000000              # double 0
	.quad	0x3ec2642ce48854f7              # double 2.1924150000000002E-6
	.quad	0x3eaa90d4e4129acd              # double 7.9172100000000003E-7
	.quad	0x0000000000000000              # double 0
	.quad	0x3ec1253f01eca78d              # double 2.0439020000000001E-6
	.quad	0x3ea8c425131ee891              # double 7.3809000000000001E-7
	.quad	0x0000000000000000              # double 0
	.quad	0x3ebff80c1bb27d54              # double 1.9054969999999999E-6
	.quad	0x3ea716d1e472e08f              # double 6.8810999999999999E-7
	.quad	0x0000000000000000              # double 0
	.quad	0x3ebdce0c4d66b9af              # double 1.7765090000000001E-6
	.quad	0x3ea586b3639e4dc7              # double 6.4153E-7
	.quad	0x0000000000000000              # double 0
	.quad	0x3ebbc963a68d86dd              # double 1.6562149999999999E-6
	.quad	0x3ea4118b9eb119be              # double 5.9808899999999995E-7
	.quad	0x0000000000000000              # double 0
	.quad	0x3eb9e786247da12b              # double 1.5440219999999999E-6
	.quad	0x3ea2b58864476535              # double 5.5757500000000001E-7
	.quad	0x0000000000000000              # double 0
	.quad	0x3eb826590479f47a              # double 1.43944E-6
	.quad	0x3ea1711de16355a1              # double 5.1980799999999999E-7
	.quad	0x0000000000000000              # double 0
	.quad	0x3eb683bf50d23c86              # double 1.341977E-6
	.quad	0x3ea042c90ed3d111              # double 4.84612E-7
	.quad	0x0000000000000000              # double 0
	.quad	0x3eb4fd9c13d6350b              # double 1.251141E-6
	.quad	0x3e9e520964e91ada              # double 4.5181000000000002E-7
	.quad	0x0000000000000000              # double 0
	.size	cie_1931_2deg_1nm, 11304

	.type	.L.str.2,@object                # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"\033[48;2;%d;%d;%dm#%2x%2x%2x"
	.size	.L.str.2, 27

	.type	.L__const.main.handler,@object  # @__const.main.handler
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L__const.main.handler:
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	color_printer
	.long	32                              # 0x20
	.zero	4
	.size	.L__const.main.handler, 56

	.type	.Lstr,@object                   # @str
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr:
	.asciz	"[color.h] handler index too high, specify lower index"
	.size	.Lstr, 54

	.type	.Lstr.4,@object                 # @str.4
.Lstr.4:
	.asciz	"[color.h] handler index does not exist"
	.size	.Lstr.4, 39

	.type	.Lstr.5,@object                 # @str.5
.Lstr.5:
	.asciz	"\033[0m"
	.size	.Lstr.5, 5

	.ident	"clang version 21.1.8"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym color_printer
