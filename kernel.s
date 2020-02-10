	.file	"kernel.c"
	.intel_syntax noprefix
# GNU C11 (Debian 6.3.0-5) version 6.3.0 20170124 (i686-linux-gnu)
#	compiled by GNU C version 6.3.0 20170124, GMP version 6.1.2, MPFR version 3.1.5, MPC version 1.0.3, isl version 0.15
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -nostdinc -imultiarch i386-linux-gnu kernel.c -m32
# -masm=intel -mtune=generic -march=i686 -g -Wall -fno-stack-protector
# -fverbose-asm
# options enabled:  -fPIC -fPIE -faggressive-loop-optimizations
# -fasynchronous-unwind-tables -fauto-inc-dec -fchkp-check-incomplete-type
# -fchkp-check-read -fchkp-check-write -fchkp-instrument-calls
# -fchkp-narrow-bounds -fchkp-optimize -fchkp-store-bounds
# -fchkp-use-static-bounds -fchkp-use-static-const-bounds
# -fchkp-use-wrappers -fcommon -fdelete-null-pointer-checks
# -fdwarf2-cfi-asm -fearly-inlining -feliminate-unused-debug-types
# -ffunction-cse -fgcse-lm -fgnu-runtime -fgnu-unique -fident
# -finline-atomics -fira-hoist-pressure -fira-share-save-slots
# -fira-share-spill-slots -fivopts -fkeep-static-consts
# -fleading-underscore -flifetime-dse -flto-odr-type-merging -fmath-errno
# -fmerge-debug-strings -fpcc-struct-return -fpeephole -fplt
# -fprefetch-loop-arrays -fsched-critical-path-heuristic
# -fsched-dep-count-heuristic -fsched-group-heuristic -fsched-interblock
# -fsched-last-insn-heuristic -fsched-rank-heuristic -fsched-spec
# -fsched-spec-insn-heuristic -fsched-stalled-insns-dep -fschedule-fusion
# -fsemantic-interposition -fshow-column -fsigned-zeros
# -fsplit-ivs-in-unroller -fssa-backprop -fstdarg-opt
# -fstrict-volatile-bitfields -fsync-libcalls -ftrapping-math -ftree-cselim
# -ftree-forwprop -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
# -ftree-loop-optimize -ftree-parallelize-loops= -ftree-phiprop
# -ftree-reassoc -ftree-scev-cprop -funit-at-a-time -funwind-tables
# -fverbose-asm -fzero-initialized-in-bss -m32 -m80387 -m96bit-long-double
# -malign-stringops -mavx256-split-unaligned-load
# -mavx256-split-unaligned-store -mfancy-math-387 -mfp-ret-in-387 -mglibc
# -mieee-fp -mlong-double-80 -mno-red-zone -mno-sse4 -mpush-args -msahf
# -mstv -mtls-direct-seg-refs -mvzeroupper

	.text
.Ltext0:
	.comm	vga_buffer,4,4
	.globl	vga_pos_x
	.bss
	.align 4
	.type	vga_pos_x, @object
	.size	vga_pos_x, 4
vga_pos_x:
	.zero	4
	.globl	vga_pos_y
	.align 4
	.type	vga_pos_y, @object
	.size	vga_pos_y, 4
vga_pos_y:
	.zero	4
	.globl	vga_width
	.data
	.align 4
	.type	vga_width, @object
	.size	vga_width, 4
vga_width:
	.long	80
	.globl	vga_height
	.align 4
	.type	vga_height, @object
	.size	vga_height, 4
vga_height:
	.long	25
	.comm	vga_index,4,4
	.globl	VGA_ADDRESS
	.align 4
	.type	VGA_ADDRESS, @object
	.size	VGA_ADDRESS, 4
VGA_ADDRESS:
	.long	753664
	.globl	vga16tty_color_fg
	.type	vga16tty_color_fg, @object
	.size	vga16tty_color_fg, 1
vga16tty_color_fg:
	.byte	7
	.globl	vga16tty_color_bg
	.bss
	.type	vga16tty_color_bg, @object
	.size	vga16tty_color_bg, 1
vga16tty_color_bg:
	.zero	1
	.text
	.globl	vga16tty_cursor_get_x
	.type	vga16tty_cursor_get_x, @function
vga16tty_cursor_get_x:
.LFB0:
	.file 1 "kernel.c"
	.loc 1 14 0
	.cfi_startproc
	push	ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp	#,
	.cfi_def_cfa_register 5
	push	ebx	#
	sub	esp, 20	#,
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx	#
	add	ebx, OFFSET FLAT:_GLOBAL_OFFSET_TABLE_	# tmp87,
	.loc 1 15 0
	sub	esp, 8	#,
	push	14	#
	push	980	#
	call	port_byte_out@PLT	#
	add	esp, 16	#,
	.loc 1 16 0
	sub	esp, 12	#,
	push	981	#
	call	port_byte_in@PLT	#
	add	esp, 16	#,
	movzx	eax, al	# _5, _4
	sal	eax, 8	# tmp95,
	mov	DWORD PTR -12[ebp], eax	# offset, tmp95
	.loc 1 17 0
	sub	esp, 8	#,
	push	15	#
	push	980	#
	call	port_byte_out@PLT	#
	add	esp, 16	#,
	.loc 1 18 0
	sub	esp, 12	#,
	push	981	#
	call	port_byte_in@PLT	#
	add	esp, 16	#,
	movzx	eax, al	# _10, _9
	add	DWORD PTR -12[ebp], eax	# offset, _10
	.loc 1 20 0
	mov	ecx, DWORD PTR -12[ebp]	# tmp96, offset
	mov	edx, 1717986919	# tmp98,
	mov	eax, ecx	# tmp104, tmp96
	imul	edx	# tmp98
	sar	edx, 5	# tmp99,
	mov	eax, ecx	# tmp100, tmp96
	sar	eax, 31	# tmp100,
	sub	edx, eax	# _12, tmp100
	mov	eax, edx	# tmp101, _12
	sal	eax, 2	# tmp101,
	add	eax, edx	# tmp101, _12
	sal	eax, 4	# tmp102,
	sub	ecx, eax	# tmp96, tmp101
	mov	edx, ecx	# _12, tmp96
	mov	eax, edx	# _13, _12
	.loc 1 21 0
	mov	ebx, DWORD PTR -4[ebp]	#,
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	vga16tty_cursor_get_x, .-vga16tty_cursor_get_x
	.globl	vga16tty_cursor_get_y
	.type	vga16tty_cursor_get_y, @function
vga16tty_cursor_get_y:
.LFB1:
	.loc 1 23 0
	.cfi_startproc
	push	ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp	#,
	.cfi_def_cfa_register 5
	push	ebx	#
	sub	esp, 20	#,
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx	#
	add	ebx, OFFSET FLAT:_GLOBAL_OFFSET_TABLE_	# tmp87,
	.loc 1 24 0
	sub	esp, 8	#,
	push	14	#
	push	980	#
	call	port_byte_out@PLT	#
	add	esp, 16	#,
	.loc 1 25 0
	sub	esp, 12	#,
	push	981	#
	call	port_byte_in@PLT	#
	add	esp, 16	#,
	movzx	eax, al	# _5, _4
	sal	eax, 8	# tmp95,
	mov	DWORD PTR -12[ebp], eax	# offset, tmp95
	.loc 1 26 0
	sub	esp, 8	#,
	push	15	#
	push	980	#
	call	port_byte_out@PLT	#
	add	esp, 16	#,
	.loc 1 27 0
	sub	esp, 12	#,
	push	981	#
	call	port_byte_in@PLT	#
	add	esp, 16	#,
	movzx	eax, al	# _10, _9
	add	DWORD PTR -12[ebp], eax	# offset, _10
	.loc 1 29 0
	mov	ecx, DWORD PTR -12[ebp]	# tmp96, offset
	mov	edx, 1717986919	# tmp98,
	mov	eax, ecx	# tmp102, tmp96
	imul	edx	# tmp98
	sar	edx, 5	# tmp99,
	mov	eax, ecx	# tmp96, tmp96
	sar	eax, 31	# tmp96,
	sub	edx, eax	# tmp99, tmp100
	mov	eax, edx	# _12, tmp99
	.loc 1 30 0
	mov	ebx, DWORD PTR -4[ebp]	#,
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1:
	.size	vga16tty_cursor_get_y, .-vga16tty_cursor_get_y
	.globl	vga16tty_cursor_set
	.type	vga16tty_cursor_set, @function
vga16tty_cursor_set:
.LFB2:
	.loc 1 32 0
	.cfi_startproc
	push	ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp	#,
	.cfi_def_cfa_register 5
	push	ebx	#
	sub	esp, 36	#,
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx	#
	add	ebx, OFFSET FLAT:_GLOBAL_OFFSET_TABLE_	# tmp87,
	mov	edx, DWORD PTR 8[ebp]	# tmp96, x
	mov	eax, DWORD PTR 12[ebp]	# tmp97, y
	mov	BYTE PTR -28[ebp], dl	# x, tmp96
	mov	BYTE PTR -32[ebp], al	# y, tmp97
	.loc 1 33 0
	movzx	ecx, BYTE PTR -28[ebp]	# _2, x
	movzx	edx, BYTE PTR -32[ebp]	# _4, y
	mov	eax, edx	# tmp98, _4
	sal	eax, 2	# tmp98,
	add	eax, edx	# tmp98, _4
	sal	eax, 4	# tmp99,
	add	eax, ecx	# tmp100, _2
	mov	DWORD PTR -12[ebp], eax	# offset, tmp100
	.loc 1 34 0
	sub	esp, 8	#,
	push	14	#
	push	980	#
	call	port_byte_out@PLT	#
	add	esp, 16	#,
	.loc 1 35 0
	mov	eax, DWORD PTR -12[ebp]	# tmp101, offset
	sar	eax, 8	# _9,
	movzx	eax, al	# _11, _10
	sub	esp, 8	#,
	push	eax	# _11
	push	981	#
	call	port_byte_out@PLT	#
	add	esp, 16	#,
	.loc 1 36 0
	sub	esp, 8	#,
	push	15	#
	push	980	#
	call	port_byte_out@PLT	#
	add	esp, 16	#,
	.loc 1 37 0
	mov	eax, DWORD PTR -12[ebp]	# tmp102, offset
	movzx	eax, al	# _15, _14
	sub	esp, 8	#,
	push	eax	# _15
	push	981	#
	call	port_byte_out@PLT	#
	add	esp, 16	#,
	.loc 1 38 0
	nop
	mov	ebx, DWORD PTR -4[ebp]	#,
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2:
	.size	vga16tty_cursor_set, .-vga16tty_cursor_set
	.globl	vga16tty_cursor_mode
	.type	vga16tty_cursor_mode, @function
vga16tty_cursor_mode:
.LFB3:
	.loc 1 45 0
	.cfi_startproc
	push	ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp	#,
	.cfi_def_cfa_register 5
	push	ebx	#
	sub	esp, 20	#,
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx	#
	add	ebx, OFFSET FLAT:_GLOBAL_OFFSET_TABLE_	# tmp87,
	mov	ecx, DWORD PTR 8[ebp]	# tmp97, offset
	mov	edx, DWORD PTR 12[ebp]	# tmp98, size
	mov	eax, DWORD PTR 16[ebp]	# tmp99, mode
	mov	BYTE PTR -12[ebp], cl	# offset, tmp97
	mov	BYTE PTR -16[ebp], dl	# size, tmp98
	mov	BYTE PTR -20[ebp], al	# mode, tmp99
	.loc 1 46 0
	and	BYTE PTR -20[ebp], 7	# mode,
	.loc 1 47 0
	and	BYTE PTR -12[ebp], 31	# offset,
	.loc 1 48 0
	movzx	eax, BYTE PTR -16[ebp]	# tmp100, size
	cmp	al, BYTE PTR -12[ebp]	# tmp100, offset
	jbe	.L7	#,
	.loc 1 48 0 is_stmt 0 discriminator 1
	movzx	eax, BYTE PTR -12[ebp]	# tmp101, offset
	mov	BYTE PTR -16[ebp], al	# size, tmp101
.L7:
	.loc 1 49 0 is_stmt 1
	sub	esp, 8	#,
	push	10	#
	push	980	#
	call	port_byte_out@PLT	#
	add	esp, 16	#,
	.loc 1 50 0
	movzx	eax, BYTE PTR -12[ebp]	# tmp102, offset
	sub	al, BYTE PTR -16[ebp]	# _10, size
	mov	edx, eax	# _11, _10
	movzx	eax, BYTE PTR -20[ebp]	# _12, mode
	sal	eax, 5	# _13,
	or	eax, edx	# _15, _11
	movzx	eax, al	# _17, _16
	sub	esp, 8	#,
	push	eax	# _17
	push	981	#
	call	port_byte_out@PLT	#
	add	esp, 16	#,
	.loc 1 51 0
	sub	esp, 8	#,
	push	11	#
	push	980	#
	call	port_byte_out@PLT	#
	add	esp, 16	#,
	.loc 1 52 0
	movzx	eax, BYTE PTR -12[ebp]	# _20, offset
	sub	esp, 8	#,
	push	eax	# _20
	push	981	#
	call	port_byte_out@PLT	#
	add	esp, 16	#,
	.loc 1 53 0
	nop
	mov	ebx, DWORD PTR -4[ebp]	#,
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE3:
	.size	vga16tty_cursor_mode, .-vga16tty_cursor_mode
	.globl	vga16tty_init
	.type	vga16tty_init, @function
vga16tty_init:
.LFB4:
	.loc 1 55 0
	.cfi_startproc
	push	ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp	#,
	.cfi_def_cfa_register 5
	push	ebx	#
	sub	esp, 20	#,
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx	#
	add	ebx, OFFSET FLAT:_GLOBAL_OFFSET_TABLE_	# tmp87,
	.loc 1 56 0
	sub	esp, 8	#,
	push	14	#
	push	980	#
	call	port_byte_out@PLT	#
	add	esp, 16	#,
	.loc 1 57 0
	sub	esp, 12	#,
	push	981	#
	call	port_byte_in@PLT	#
	add	esp, 16	#,
	movzx	eax, al	# _5, _4
	sal	eax, 8	# tmp94,
	mov	DWORD PTR -12[ebp], eax	# offset, tmp94
	.loc 1 58 0
	sub	esp, 8	#,
	push	15	#
	push	980	#
	call	port_byte_out@PLT	#
	add	esp, 16	#,
	.loc 1 59 0
	sub	esp, 12	#,
	push	981	#
	call	port_byte_in@PLT	#
	add	esp, 16	#,
	movzx	eax, al	# _10, _9
	add	DWORD PTR -12[ebp], eax	# offset, _10
	.loc 1 61 0
	mov	ecx, DWORD PTR -12[ebp]	# tmp95, offset
	mov	edx, 1717986919	# tmp97,
	mov	eax, ecx	# tmp107, tmp95
	imul	edx	# tmp97
	sar	edx, 5	# tmp98,
	mov	eax, ecx	# tmp99, tmp95
	sar	eax, 31	# tmp99,
	sub	edx, eax	# _12, tmp99
	mov	eax, edx	# tmp100, _12
	sal	eax, 2	# tmp100,
	add	eax, edx	# tmp100, _12
	sal	eax, 4	# tmp101,
	sub	ecx, eax	# tmp95, tmp100
	mov	edx, ecx	# _12, tmp95
	mov	DWORD PTR vga_pos_x@GOTOFF[ebx], edx	# vga_pos_x, _12
	.loc 1 62 0
	mov	ecx, DWORD PTR -12[ebp]	# tmp102, offset
	mov	edx, 1717986919	# tmp104,
	mov	eax, ecx	# tmp108, tmp102
	imul	edx	# tmp104
	sar	edx, 5	# tmp105,
	mov	eax, ecx	# tmp102, tmp102
	sar	eax, 31	# tmp102,
	sub	edx, eax	# tmp105, tmp106
	mov	eax, edx	# _14, tmp105
	mov	DWORD PTR vga_pos_y@GOTOFF[ebx], eax	# vga_pos_y, _14
	.loc 1 63 0
	nop
	mov	ebx, DWORD PTR -4[ebp]	#,
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE4:
	.size	vga16tty_init, .-vga16tty_init
	.globl	vga_putchar_mode
	.bss
	.type	vga_putchar_mode, @object
	.size	vga_putchar_mode, 1
vga_putchar_mode:
	.zero	1
	.globl	vga_putchar_parameter
	.type	vga_putchar_parameter, @object
	.size	vga_putchar_parameter, 1
vga_putchar_parameter:
	.zero	1
	.comm	vga_putchar_parameters,32,32
	.globl	vga_pos_x2
	.align 4
	.type	vga_pos_x2, @object
	.size	vga_pos_x2, 4
vga_pos_x2:
	.zero	4
	.globl	vga_pos_y2
	.align 4
	.type	vga_pos_y2, @object
	.size	vga_pos_y2, 4
vga_pos_y2:
	.zero	4
	.text
	.globl	vga16tty_putchar
	.type	vga16tty_putchar, @function
vga16tty_putchar:
.LFB5:
	.loc 1 77 0
	.cfi_startproc
	push	ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp	#,
	.cfi_def_cfa_register 5
	push	ebx	#
	sub	esp, 116	#,
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.ax	#
	add	eax, OFFSET FLAT:_GLOBAL_OFFSET_TABLE_	# tmp87,
	mov	edx, DWORD PTR 8[ebp]	# tmp464, c
	mov	BYTE PTR -108[ebp], dl	# c, tmp464
	.loc 1 78 0
	mov	edx, DWORD PTR VGA_ADDRESS@GOTOFF[eax]	# VGA_ADDRESS.0_37, VGA_ADDRESS
	mov	ecx, edx	# VGA_ADDRESS.1_38, VGA_ADDRESS.0_37
	mov	edx, DWORD PTR vga_buffer@GOT[eax]	# tmp465,
	mov	DWORD PTR [edx], ecx	# vga_buffer, VGA_ADDRESS.1_38
	.loc 1 79 0
	movzx	edx, BYTE PTR vga_putchar_mode@GOTOFF[eax]	# vga_putchar_mode.2_40, vga_putchar_mode
	movzx	edx, dl	# _41, vga_putchar_mode.2_40
	cmp	edx, 1	# _41,
	je	.L11	#,
	cmp	edx, 2	# _41,
	je	.L12	#,
	test	edx, edx	# _41
	jne	.L115	#,
	.loc 1 81 0
	movzx	edx, BYTE PTR -108[ebp]	# _43, c
	cmp	edx, 14	# _43,
	je	.L15	#,
	cmp	edx, 14	# _43,
	jg	.L16	#,
	cmp	edx, 9	# _43,
	je	.L17	#,
	cmp	edx, 9	# _43,
	jg	.L18	#,
	cmp	edx, 7	# _43,
	jg	.L19	#,
	cmp	edx, 1	# _43,
	jge	.L117	#,
	test	edx, edx	# _43
	je	.L118	#,
	jmp	.L14	#
.L18:
	cmp	edx, 11	# _43,
	je	.L119	#,
	cmp	edx, 11	# _43,
	jl	.L23	#,
	cmp	edx, 12	# _43,
	je	.L120	#,
	cmp	edx, 13	# _43,
	je	.L25	#,
	jmp	.L14	#
.L16:
	cmp	edx, 31	# _43,
	jg	.L26	#,
	cmp	edx, 28	# _43,
	jge	.L121	#,
	cmp	edx, 26	# _43,
	jg	.L28	#,
	cmp	edx, 16	# _43,
	jge	.L122	#,
	jmp	.L116	#
.L26:
	cmp	edx, 159	# _43,
	jg	.L31	#,
	cmp	edx, 128	# _43,
	jge	.L123	#,
	cmp	edx, 127	# _43,
	je	.L124	#,
	jmp	.L14	#
.L31:
	cmp	edx, 255	# _43,
	je	.L125	#,
	jmp	.L14	#
.L19:
	.loc 1 84 0
	mov	edx, DWORD PTR vga_pos_x@GOTOFF[eax]	# vga_pos_x.3_44, vga_pos_x
	sub	edx, 1	# _45,
	mov	DWORD PTR vga_pos_x@GOTOFF[eax], edx	# vga_pos_x, _45
	jmp	.L35	#
.L17:
	.loc 1 86 0
	mov	edx, DWORD PTR vga_pos_x@GOTOFF[eax]	# vga_pos_x.4_47, vga_pos_x
	or	edx, 7	# _48,
	mov	DWORD PTR vga_pos_x@GOTOFF[eax], edx	# vga_pos_x, _48
	.loc 1 87 0
	mov	edx, DWORD PTR vga_pos_x@GOTOFF[eax]	# vga_pos_x.5_50, vga_pos_x
	add	edx, 1	# _51,
	mov	DWORD PTR vga_pos_x@GOTOFF[eax], edx	# vga_pos_x, _51
	.loc 1 88 0
	jmp	.L35	#
.L23:
	.loc 1 90 0
	mov	DWORD PTR vga_pos_x@GOTOFF[eax], 0	# vga_pos_x,
	.loc 1 91 0
	mov	edx, DWORD PTR vga_pos_y@GOTOFF[eax]	# vga_pos_y.6_54, vga_pos_y
	add	edx, 1	# _55,
	mov	DWORD PTR vga_pos_y@GOTOFF[eax], edx	# vga_pos_y, _55
	.loc 1 92 0
	jmp	.L35	#
.L25:
	.loc 1 95 0
	mov	DWORD PTR vga_pos_x@GOTOFF[eax], 0	# vga_pos_x,
	jmp	.L35	#
.L15:
	.loc 1 96 0
	movzx	edx, BYTE PTR vga16tty_color_fg@GOTOFF[eax]	# vga16tty_color_fg.7_58, vga16tty_color_fg
	or	edx, 8	# _59,
	mov	BYTE PTR vga16tty_color_fg@GOTOFF[eax], dl	# vga16tty_color_fg, _59
	jmp	.L35	#
.L116:
	.loc 1 97 0
	movzx	edx, BYTE PTR vga16tty_color_fg@GOTOFF[eax]	# vga16tty_color_fg.8_61, vga16tty_color_fg
	and	edx, 7	# _62,
	mov	BYTE PTR vga16tty_color_fg@GOTOFF[eax], dl	# vga16tty_color_fg, _62
	jmp	.L35	#
.L28:
.LBB2:
	.loc 1 100 0
	mov	DWORD PTR -12[ebp], 0	# i,
	jmp	.L36	#
.L37:
	.loc 1 100 0 is_stmt 0 discriminator 3
	mov	ecx, DWORD PTR vga_putchar_parameters@GOT[eax]	# tmp466,
	mov	edx, DWORD PTR -12[ebp]	# tmp467, i
	add	edx, ecx	# tmp468, tmp466
	mov	BYTE PTR [edx], 0	# vga_putchar_parameters,
	add	DWORD PTR -12[ebp], 1	# i,
.L36:
	.loc 1 100 0 discriminator 1
	cmp	DWORD PTR -12[ebp], 31	# i,
	jle	.L37	#,
.LBE2:
	.loc 1 101 0 is_stmt 1
	mov	BYTE PTR vga_putchar_parameter@GOTOFF[eax], 0	# vga_putchar_parameter,
	.loc 1 102 0
	mov	BYTE PTR vga_putchar_mode@GOTOFF[eax], 1	# vga_putchar_mode,
	.loc 1 103 0
	jmp	.L35	#
.L14:
.LBB3:
	.loc 1 109 0
	mov	edx, DWORD PTR vga_pos_y@GOTOFF[eax]	# vga_pos_y.9_69, vga_pos_y
	mov	ecx, edx	# _70, vga_pos_y.9_69
	mov	edx, DWORD PTR vga_width@GOTOFF[eax]	# vga_width.10_71, vga_width
	imul	edx, ecx	# _73, _70
	mov	ecx, DWORD PTR vga_pos_x@GOTOFF[eax]	# vga_pos_x.11_74, vga_pos_x
	add	edx, ecx	# tmp469, _75
	mov	WORD PTR -58[ebp], dx	# vga_index, tmp469
	.loc 1 110 0
	mov	edx, DWORD PTR vga_buffer@GOT[eax]	# tmp470,
	mov	edx, DWORD PTR [edx]	# vga_buffer.12_77, vga_buffer
	movzx	ecx, WORD PTR -58[ebp]	# _78, vga_index
	add	ecx, ecx	# _79
	add	edx, ecx	# _80, _79
	movzx	ecx, BYTE PTR -108[ebp]	# _81, c
	movzx	ebx, BYTE PTR vga16tty_color_fg@GOTOFF[eax]	# vga16tty_color_fg.13_82, vga16tty_color_fg
	movzx	ebx, bl	# _83, vga16tty_color_fg.13_82
	sal	ebx, 8	# _84,
	and	bx, 3840	# _86,
	or	ebx, ecx	# _87, _81
	movzx	ecx, BYTE PTR vga16tty_color_bg@GOTOFF[eax]	# vga16tty_color_bg.14_88, vga16tty_color_bg
	movzx	ecx, cl	# _89, vga16tty_color_bg.14_88
	sal	ecx, 12	# _90,
	or	ecx, ebx	# _92, _87
	mov	WORD PTR [edx], cx	# *_80, _93
	.loc 1 111 0
	mov	edx, DWORD PTR vga_pos_x@GOTOFF[eax]	# vga_pos_x.15_95, vga_pos_x
	add	edx, 1	# _96,
	mov	DWORD PTR vga_pos_x@GOTOFF[eax], edx	# vga_pos_x, _96
.LBE3:
	.loc 1 112 0
	jmp	.L35	#
.L117:
	.loc 1 83 0
	nop
	jmp	.L38	#
.L118:
	.loc 1 82 0
	nop
	jmp	.L38	#
.L119:
	.loc 1 93 0
	nop
	jmp	.L38	#
.L120:
	.loc 1 94 0
	nop
	jmp	.L38	#
.L121:
	.loc 1 104 0
	nop
	jmp	.L38	#
.L122:
	.loc 1 98 0
	nop
	jmp	.L38	#
.L123:
	.loc 1 106 0
	nop
	jmp	.L38	#
.L124:
	.loc 1 105 0
	nop
	jmp	.L38	#
.L125:
	.loc 1 107 0
	nop
.L35:
	.loc 1 114 0 discriminator 1
	jmp	.L38	#
.L11:
	.loc 1 116 0
	movzx	edx, BYTE PTR -108[ebp]	# _98, c
	sub	edx, 55	# tmp471,
	cmp	edx, 36	# tmp471,
	ja	.L39	#,
	sal	edx, 2	# tmp472,
	mov	edx, DWORD PTR .L41@GOTOFF[edx+eax]	# tmp473,
	add	edx, eax	# tmp474, tmp87
	jmp	edx	# tmp474
	.section	.rodata
	.align 4
	.align 4
.L41:
	.long	.L40@GOTOFF
	.long	.L42@GOTOFF
	.long	.L39@GOTOFF
	.long	.L39@GOTOFF
	.long	.L39@GOTOFF
	.long	.L39@GOTOFF
	.long	.L39@GOTOFF
	.long	.L39@GOTOFF
	.long	.L39@GOTOFF
	.long	.L39@GOTOFF
	.long	.L43@GOTOFF
	.long	.L44@GOTOFF
	.long	.L45@GOTOFF
	.long	.L46@GOTOFF
	.long	.L39@GOTOFF
	.long	.L39@GOTOFF
	.long	.L39@GOTOFF
	.long	.L39@GOTOFF
	.long	.L39@GOTOFF
	.long	.L47@GOTOFF
	.long	.L48@GOTOFF
	.long	.L39@GOTOFF
	.long	.L39@GOTOFF
	.long	.L39@GOTOFF
	.long	.L39@GOTOFF
	.long	.L39@GOTOFF
	.long	.L39@GOTOFF
	.long	.L39@GOTOFF
	.long	.L39@GOTOFF
	.long	.L39@GOTOFF
	.long	.L39@GOTOFF
	.long	.L39@GOTOFF
	.long	.L39@GOTOFF
	.long	.L39@GOTOFF
	.long	.L39@GOTOFF
	.long	.L39@GOTOFF
	.long	.L49@GOTOFF
	.text
.L43:
	.loc 1 117 0
	mov	edx, DWORD PTR vga_pos_y@GOTOFF[eax]	# vga_pos_y.16_99, vga_pos_y
	sub	edx, 1	# _100,
	mov	DWORD PTR vga_pos_y@GOTOFF[eax], edx	# vga_pos_y, _100
	mov	BYTE PTR vga_putchar_mode@GOTOFF[eax], 0	# vga_putchar_mode,
	jmp	.L50	#
.L44:
	.loc 1 118 0
	mov	edx, DWORD PTR vga_pos_y@GOTOFF[eax]	# vga_pos_y.17_103, vga_pos_y
	add	edx, 1	# _104,
	mov	DWORD PTR vga_pos_y@GOTOFF[eax], edx	# vga_pos_y, _104
	mov	BYTE PTR vga_putchar_mode@GOTOFF[eax], 0	# vga_putchar_mode,
	jmp	.L50	#
.L45:
	.loc 1 119 0
	mov	edx, DWORD PTR vga_pos_x@GOTOFF[eax]	# vga_pos_x.18_107, vga_pos_x
	add	edx, 1	# _108,
	mov	DWORD PTR vga_pos_x@GOTOFF[eax], edx	# vga_pos_x, _108
	mov	BYTE PTR vga_putchar_mode@GOTOFF[eax], 0	# vga_putchar_mode,
	jmp	.L50	#
.L46:
	.loc 1 120 0
	mov	edx, DWORD PTR vga_pos_x@GOTOFF[eax]	# vga_pos_x.19_111, vga_pos_x
	sub	edx, 1	# _112,
	mov	DWORD PTR vga_pos_x@GOTOFF[eax], edx	# vga_pos_x, _112
	mov	BYTE PTR vga_putchar_mode@GOTOFF[eax], 0	# vga_putchar_mode,
	jmp	.L50	#
.L40:
	.loc 1 122 0
	mov	edx, DWORD PTR vga_pos_x@GOTOFF[eax]	# vga_pos_x.20_115, vga_pos_x
	mov	DWORD PTR vga_pos_x2@GOTOFF[eax], edx	# vga_pos_x2, vga_pos_x.20_115
	.loc 1 123 0
	mov	edx, DWORD PTR vga_pos_y@GOTOFF[eax]	# vga_pos_y.21_117, vga_pos_y
	mov	DWORD PTR vga_pos_y2@GOTOFF[eax], edx	# vga_pos_y2, vga_pos_y.21_117
	.loc 1 124 0
	mov	BYTE PTR vga_putchar_mode@GOTOFF[eax], 0	# vga_putchar_mode,
	.loc 1 125 0
	jmp	.L50	#
.L42:
	.loc 1 127 0
	mov	edx, DWORD PTR vga_pos_x2@GOTOFF[eax]	# vga_pos_x2.22_120, vga_pos_x2
	mov	DWORD PTR vga_pos_x@GOTOFF[eax], edx	# vga_pos_x, vga_pos_x2.22_120
	.loc 1 128 0
	mov	edx, DWORD PTR vga_pos_y2@GOTOFF[eax]	# vga_pos_y2.23_122, vga_pos_y2
	mov	DWORD PTR vga_pos_y@GOTOFF[eax], edx	# vga_pos_y, vga_pos_y2.23_122
	.loc 1 129 0
	mov	BYTE PTR vga_putchar_mode@GOTOFF[eax], 0	# vga_putchar_mode,
	.loc 1 130 0
	jmp	.L50	#
.L48:
.LBB4:
	.loc 1 132 0
	mov	edx, DWORD PTR vga_pos_y@GOTOFF[eax]	# vga_pos_y.24_125, vga_pos_y
	mov	ecx, edx	# _126, vga_pos_y.24_125
	mov	edx, DWORD PTR vga_width@GOTOFF[eax]	# vga_width.25_127, vga_width
	imul	edx, ecx	# _129, _126
	mov	ecx, DWORD PTR vga_pos_x@GOTOFF[eax]	# vga_pos_x.26_130, vga_pos_x
	add	edx, ecx	# tmp475, _131
	mov	WORD PTR -60[ebp], dx	# start, tmp475
	.loc 1 133 0
	mov	edx, DWORD PTR vga_pos_y@GOTOFF[eax]	# vga_pos_y.27_133, vga_pos_y
	mov	ecx, edx	# _134, vga_pos_y.27_133
	mov	edx, DWORD PTR vga_width@GOTOFF[eax]	# vga_width.28_135, vga_width
	imul	edx, ecx	# _137, _134
	add	edx, 79	# tmp476,
	mov	WORD PTR -62[ebp], dx	# stop, tmp476
.LBB5:
	.loc 1 134 0
	movzx	edx, WORD PTR -60[ebp]	# tmp477, start
	mov	DWORD PTR -16[ebp], edx	# i, tmp477
	jmp	.L51	#
.L52:
	.loc 1 134 0 is_stmt 0 discriminator 3
	mov	edx, DWORD PTR vga_buffer@GOT[eax]	# tmp478,
	mov	edx, DWORD PTR [edx]	# vga_buffer.29_141, vga_buffer
	mov	ecx, DWORD PTR -16[ebp]	# i.30_142, i
	add	ecx, ecx	# _143
	add	edx, ecx	# _144, _143
	movzx	ecx, BYTE PTR vga16tty_color_fg@GOTOFF[eax]	# vga16tty_color_fg.31_145, vga16tty_color_fg
	movzx	ecx, cl	# _146, vga16tty_color_fg.31_145
	sal	ecx, 8	# _147,
	mov	ebx, ecx	# _148, _148
	and	bx, 3840	# _148,
	movzx	ecx, BYTE PTR vga16tty_color_bg@GOTOFF[eax]	# vga16tty_color_bg.32_150, vga16tty_color_bg
	movzx	ecx, cl	# _151, vga16tty_color_bg.32_150
	sal	ecx, 12	# _152,
	or	ecx, ebx	# _154, _149
	mov	WORD PTR [edx], cx	# *_144, _155
	add	DWORD PTR -16[ebp], 1	# i,
.L51:
	.loc 1 134 0 discriminator 1
	movzx	edx, WORD PTR -62[ebp]	# _140, stop
	cmp	edx, DWORD PTR -16[ebp]	# _140, i
	jge	.L52	#,
.LBE5:
	.loc 1 135 0 is_stmt 1
	mov	BYTE PTR vga_putchar_mode@GOTOFF[eax], 0	# vga_putchar_mode,
.LBE4:
	.loc 1 136 0
	jmp	.L50	#
.L47:
.LBB6:
	.loc 1 138 0
	mov	edx, DWORD PTR vga_pos_y@GOTOFF[eax]	# vga_pos_y.33_159, vga_pos_y
	mov	ecx, edx	# _160, vga_pos_y.33_159
	mov	edx, DWORD PTR vga_width@GOTOFF[eax]	# vga_width.34_161, vga_width
	imul	edx, ecx	# _163, _160
	mov	ecx, DWORD PTR vga_pos_x@GOTOFF[eax]	# vga_pos_x.35_164, vga_pos_x
	add	edx, ecx	# tmp479, _165
	mov	WORD PTR -64[ebp], dx	# start, tmp479
	.loc 1 139 0
	mov	edx, DWORD PTR vga_height@GOTOFF[eax]	# vga_height.36_167, vga_height
	mov	ecx, edx	# _168, vga_height.36_167
	mov	edx, DWORD PTR vga_width@GOTOFF[eax]	# vga_width.37_169, vga_width
	imul	edx, ecx	# _171, _168
	sub	edx, 1	# tmp480,
	mov	WORD PTR -66[ebp], dx	# stop, tmp480
.LBB7:
	.loc 1 140 0
	movzx	edx, WORD PTR -64[ebp]	# tmp481, start
	mov	DWORD PTR -20[ebp], edx	# i, tmp481
	jmp	.L53	#
.L54:
	.loc 1 140 0 is_stmt 0 discriminator 3
	mov	edx, DWORD PTR vga_buffer@GOT[eax]	# tmp482,
	mov	edx, DWORD PTR [edx]	# vga_buffer.38_175, vga_buffer
	mov	ecx, DWORD PTR -20[ebp]	# i.39_176, i
	add	ecx, ecx	# _177
	add	edx, ecx	# _178, _177
	movzx	ecx, BYTE PTR vga16tty_color_fg@GOTOFF[eax]	# vga16tty_color_fg.40_179, vga16tty_color_fg
	movzx	ecx, cl	# _180, vga16tty_color_fg.40_179
	sal	ecx, 8	# _181,
	mov	ebx, ecx	# _182, _182
	and	bx, 3840	# _182,
	movzx	ecx, BYTE PTR vga16tty_color_bg@GOTOFF[eax]	# vga16tty_color_bg.41_184, vga16tty_color_bg
	movzx	ecx, cl	# _185, vga16tty_color_bg.41_184
	sal	ecx, 12	# _186,
	or	ecx, ebx	# _188, _183
	mov	WORD PTR [edx], cx	# *_178, _189
	add	DWORD PTR -20[ebp], 1	# i,
.L53:
	.loc 1 140 0 discriminator 1
	movzx	edx, WORD PTR -66[ebp]	# _174, stop
	cmp	edx, DWORD PTR -20[ebp]	# _174, i
	jge	.L54	#,
.LBE7:
	.loc 1 141 0 is_stmt 1
	mov	BYTE PTR vga_putchar_mode@GOTOFF[eax], 0	# vga_putchar_mode,
.LBE6:
	.loc 1 142 0
	jmp	.L50	#
.L49:
	.loc 1 143 0
	mov	BYTE PTR vga_putchar_mode@GOTOFF[eax], 2	# vga_putchar_mode,
	jmp	.L50	#
.L39:
	.loc 1 144 0
	mov	BYTE PTR vga_putchar_mode@GOTOFF[eax], 0	# vga_putchar_mode,
	nop
.L50:
	.loc 1 146 0
	jmp	.L38	#
.L12:
	.loc 1 148 0
	movzx	edx, BYTE PTR -108[ebp]	# _195, c
	sub	edx, 48	# tmp483,
	cmp	edx, 69	# tmp483,
	ja	.L55	#,
	sal	edx, 2	# tmp484,
	mov	edx, DWORD PTR .L57@GOTOFF[edx+eax]	# tmp485,
	add	edx, eax	# tmp486, tmp87
	jmp	edx	# tmp486
	.section	.rodata
	.align 4
	.align 4
.L57:
	.long	.L56@GOTOFF
	.long	.L56@GOTOFF
	.long	.L56@GOTOFF
	.long	.L56@GOTOFF
	.long	.L56@GOTOFF
	.long	.L56@GOTOFF
	.long	.L56@GOTOFF
	.long	.L56@GOTOFF
	.long	.L56@GOTOFF
	.long	.L56@GOTOFF
	.long	.L58@GOTOFF
	.long	.L59@GOTOFF
	.long	.L55@GOTOFF
	.long	.L55@GOTOFF
	.long	.L55@GOTOFF
	.long	.L55@GOTOFF
	.long	.L55@GOTOFF
	.long	.L60@GOTOFF
	.long	.L61@GOTOFF
	.long	.L62@GOTOFF
	.long	.L63@GOTOFF
	.long	.L55@GOTOFF
	.long	.L55@GOTOFF
	.long	.L55@GOTOFF
	.long	.L64@GOTOFF
	.long	.L55@GOTOFF
	.long	.L65@GOTOFF
	.long	.L66@GOTOFF
	.long	.L55@GOTOFF
	.long	.L55@GOTOFF
	.long	.L55@GOTOFF
	.long	.L55@GOTOFF
	.long	.L55@GOTOFF
	.long	.L55@GOTOFF
	.long	.L55@GOTOFF
	.long	.L55@GOTOFF
	.long	.L55@GOTOFF
	.long	.L55@GOTOFF
	.long	.L55@GOTOFF
	.long	.L55@GOTOFF
	.long	.L55@GOTOFF
	.long	.L55@GOTOFF
	.long	.L55@GOTOFF
	.long	.L55@GOTOFF
	.long	.L55@GOTOFF
	.long	.L55@GOTOFF
	.long	.L55@GOTOFF
	.long	.L55@GOTOFF
	.long	.L55@GOTOFF
	.long	.L55@GOTOFF
	.long	.L55@GOTOFF
	.long	.L55@GOTOFF
	.long	.L55@GOTOFF
	.long	.L55@GOTOFF
	.long	.L67@GOTOFF
	.long	.L55@GOTOFF
	.long	.L55@GOTOFF
	.long	.L55@GOTOFF
	.long	.L55@GOTOFF
	.long	.L55@GOTOFF
	.long	.L55@GOTOFF
	.long	.L68@GOTOFF
	.long	.L55@GOTOFF
	.long	.L55@GOTOFF
	.long	.L55@GOTOFF
	.long	.L55@GOTOFF
	.long	.L55@GOTOFF
	.long	.L69@GOTOFF
	.long	.L55@GOTOFF
	.long	.L70@GOTOFF
	.text
.L56:
	.loc 1 150 0
	movzx	edx, BYTE PTR vga_putchar_parameter@GOTOFF[eax]	# vga_putchar_parameter.42_196, vga_putchar_parameter
	movzx	ebx, dl	# _197, vga_putchar_parameter.42_196
	movzx	edx, BYTE PTR vga_putchar_parameter@GOTOFF[eax]	# vga_putchar_parameter.43_198, vga_putchar_parameter
	movzx	edx, dl	# _199, vga_putchar_parameter.43_198
	mov	ecx, DWORD PTR vga_putchar_parameters@GOT[eax]	# tmp487,
	movzx	ecx, BYTE PTR [ecx+edx]	# _200, vga_putchar_parameters
	mov	edx, ecx	# tmp488, _200
	sal	edx, 2	# tmp488,
	add	edx, ecx	# tmp488, _200
	add	edx, edx	# tmp489
	mov	ecx, edx	# _201, tmp488
	mov	edx, DWORD PTR vga_putchar_parameters@GOT[eax]	# tmp490,
	mov	BYTE PTR [edx+ebx], cl	# vga_putchar_parameters, _201
	.loc 1 151 0
	movzx	edx, BYTE PTR vga_putchar_parameter@GOTOFF[eax]	# vga_putchar_parameter.44_203, vga_putchar_parameter
	movzx	edx, dl	# _204, vga_putchar_parameter.44_203
	movzx	ecx, BYTE PTR vga_putchar_parameter@GOTOFF[eax]	# vga_putchar_parameter.45_205, vga_putchar_parameter
	movzx	ecx, cl	# _206, vga_putchar_parameter.45_205
	mov	ebx, DWORD PTR vga_putchar_parameters@GOT[eax]	# tmp491,
	movzx	ebx, BYTE PTR [ebx+ecx]	# _207, vga_putchar_parameters
	movzx	ecx, BYTE PTR -108[ebp]	# tmp492, c
	add	ecx, ebx	# _208, _207
	lea	ebx, -48[ecx]	# _209,
	mov	ecx, DWORD PTR vga_putchar_parameters@GOT[eax]	# tmp493,
	mov	BYTE PTR [ecx+edx], bl	# vga_putchar_parameters, _209
	.loc 1 152 0
	jmp	.L71	#
.L58:
	.loc 1 153 0
	movzx	edx, BYTE PTR vga_putchar_parameter@GOTOFF[eax]	# vga_putchar_parameter.46_211, vga_putchar_parameter
	add	edx, 1	# _213,
	mov	BYTE PTR vga_putchar_parameter@GOTOFF[eax], dl	# vga_putchar_parameter, _213
	jmp	.L71	#
.L59:
	.loc 1 154 0
	movzx	edx, BYTE PTR vga_putchar_parameter@GOTOFF[eax]	# vga_putchar_parameter.48_215, vga_putchar_parameter
	add	edx, 1	# _217,
	mov	BYTE PTR vga_putchar_parameter@GOTOFF[eax], dl	# vga_putchar_parameter, _217
	jmp	.L71	#
.L64:
	.loc 1 156 0
	mov	edx, DWORD PTR vga_putchar_parameters@GOT[eax]	# tmp494,
	movzx	edx, BYTE PTR 1[edx]	# _219, vga_putchar_parameters
	movzx	edx, dl	# _220, _219
	mov	DWORD PTR vga_pos_x@GOTOFF[eax], edx	# vga_pos_x, _220
	.loc 1 157 0
	mov	edx, DWORD PTR vga_putchar_parameters@GOT[eax]	# tmp495,
	movzx	edx, BYTE PTR [edx]	# _222, vga_putchar_parameters
	movzx	edx, dl	# _223, _222
	mov	DWORD PTR vga_pos_y@GOTOFF[eax], edx	# vga_pos_y, _223
	.loc 1 158 0
	mov	BYTE PTR vga_putchar_mode@GOTOFF[eax], 0	# vga_putchar_mode,
	.loc 1 159 0
	jmp	.L71	#
.L67:
	.loc 1 161 0
	mov	edx, DWORD PTR vga_putchar_parameters@GOT[eax]	# tmp496,
	movzx	edx, BYTE PTR 1[edx]	# _226, vga_putchar_parameters
	movzx	edx, dl	# _227, _226
	mov	DWORD PTR vga_pos_x@GOTOFF[eax], edx	# vga_pos_x, _227
	.loc 1 162 0
	mov	edx, DWORD PTR vga_putchar_parameters@GOT[eax]	# tmp497,
	movzx	edx, BYTE PTR [edx]	# _229, vga_putchar_parameters
	movzx	edx, dl	# _230, _229
	mov	DWORD PTR vga_pos_y@GOTOFF[eax], edx	# vga_pos_y, _230
	.loc 1 163 0
	mov	BYTE PTR vga_putchar_mode@GOTOFF[eax], 0	# vga_putchar_mode,
	.loc 1 164 0
	jmp	.L71	#
.L60:
	.loc 1 165 0
	mov	ecx, DWORD PTR vga_pos_y@GOTOFF[eax]	# vga_pos_y.50_233, vga_pos_y
	mov	edx, DWORD PTR vga_putchar_parameters@GOT[eax]	# tmp498,
	movzx	edx, BYTE PTR [edx]	# _234, vga_putchar_parameters
	movzx	edx, dl	# _235, _234
	sub	ecx, edx	# vga_pos_y.50_233, _235
	mov	edx, ecx	# _236, vga_pos_y.50_233
	mov	DWORD PTR vga_pos_y@GOTOFF[eax], edx	# vga_pos_y, _236
	mov	BYTE PTR vga_putchar_mode@GOTOFF[eax], 0	# vga_putchar_mode,
	jmp	.L71	#
.L61:
	.loc 1 166 0
	mov	edx, DWORD PTR vga_putchar_parameters@GOT[eax]	# tmp499,
	movzx	edx, BYTE PTR [edx]	# _239, vga_putchar_parameters
	movzx	ecx, dl	# _240, _239
	mov	edx, DWORD PTR vga_pos_y@GOTOFF[eax]	# vga_pos_y.51_241, vga_pos_y
	add	edx, ecx	# _242, _240
	mov	DWORD PTR vga_pos_y@GOTOFF[eax], edx	# vga_pos_y, _242
	mov	BYTE PTR vga_putchar_mode@GOTOFF[eax], 0	# vga_putchar_mode,
	jmp	.L71	#
.L62:
	.loc 1 167 0
	mov	edx, DWORD PTR vga_putchar_parameters@GOT[eax]	# tmp500,
	movzx	edx, BYTE PTR [edx]	# _245, vga_putchar_parameters
	movzx	ecx, dl	# _246, _245
	mov	edx, DWORD PTR vga_pos_x@GOTOFF[eax]	# vga_pos_x.52_247, vga_pos_x
	add	edx, ecx	# _248, _246
	mov	DWORD PTR vga_pos_x@GOTOFF[eax], edx	# vga_pos_x, _248
	mov	BYTE PTR vga_putchar_mode@GOTOFF[eax], 0	# vga_putchar_mode,
	jmp	.L71	#
.L63:
	.loc 1 168 0
	mov	ecx, DWORD PTR vga_pos_x@GOTOFF[eax]	# vga_pos_x.53_251, vga_pos_x
	mov	edx, DWORD PTR vga_putchar_parameters@GOT[eax]	# tmp501,
	movzx	edx, BYTE PTR [edx]	# _252, vga_putchar_parameters
	movzx	edx, dl	# _253, _252
	sub	ecx, edx	# vga_pos_x.53_251, _253
	mov	edx, ecx	# _254, vga_pos_x.53_251
	mov	DWORD PTR vga_pos_x@GOTOFF[eax], edx	# vga_pos_x, _254
	mov	BYTE PTR vga_putchar_mode@GOTOFF[eax], 0	# vga_putchar_mode,
	jmp	.L71	#
.L69:
	.loc 1 170 0
	mov	edx, DWORD PTR vga_pos_x@GOTOFF[eax]	# vga_pos_x.54_257, vga_pos_x
	mov	DWORD PTR vga_pos_x2@GOTOFF[eax], edx	# vga_pos_x2, vga_pos_x.54_257
	.loc 1 171 0
	mov	edx, DWORD PTR vga_pos_y@GOTOFF[eax]	# vga_pos_y.55_259, vga_pos_y
	mov	DWORD PTR vga_pos_y2@GOTOFF[eax], edx	# vga_pos_y2, vga_pos_y.55_259
	.loc 1 172 0
	mov	BYTE PTR vga_putchar_mode@GOTOFF[eax], 0	# vga_putchar_mode,
	.loc 1 173 0
	jmp	.L71	#
.L70:
	.loc 1 175 0
	mov	edx, DWORD PTR vga_pos_x2@GOTOFF[eax]	# vga_pos_x2.56_262, vga_pos_x2
	mov	DWORD PTR vga_pos_x@GOTOFF[eax], edx	# vga_pos_x, vga_pos_x2.56_262
	.loc 1 176 0
	mov	edx, DWORD PTR vga_pos_y2@GOTOFF[eax]	# vga_pos_y2.57_264, vga_pos_y2
	mov	DWORD PTR vga_pos_y@GOTOFF[eax], edx	# vga_pos_y, vga_pos_y2.57_264
	.loc 1 177 0
	mov	BYTE PTR vga_putchar_mode@GOTOFF[eax], 0	# vga_putchar_mode,
	.loc 1 178 0
	jmp	.L71	#
.L66:
	.loc 1 180 0
	mov	edx, DWORD PTR vga_putchar_parameters@GOT[eax]	# tmp502,
	movzx	edx, BYTE PTR [edx]	# _267, vga_putchar_parameters
	movzx	edx, dl	# _268, _267
	cmp	edx, 1	# _268,
	je	.L73	#,
	cmp	edx, 2	# _268,
	je	.L74	#,
	test	edx, edx	# _268
	je	.L75	#,
	.loc 1 199 0
	jmp	.L78	#
.L75:
.LBB8:
	.loc 1 182 0
	mov	edx, DWORD PTR vga_pos_y@GOTOFF[eax]	# vga_pos_y.58_269, vga_pos_y
	mov	ecx, edx	# _270, vga_pos_y.58_269
	mov	edx, DWORD PTR vga_width@GOTOFF[eax]	# vga_width.59_271, vga_width
	imul	edx, ecx	# _273, _270
	mov	ecx, DWORD PTR vga_pos_x@GOTOFF[eax]	# vga_pos_x.60_274, vga_pos_x
	add	edx, ecx	# tmp503, _275
	mov	WORD PTR -68[ebp], dx	# start, tmp503
	.loc 1 183 0
	mov	edx, DWORD PTR vga_pos_y@GOTOFF[eax]	# vga_pos_y.61_277, vga_pos_y
	mov	ecx, edx	# _278, vga_pos_y.61_277
	mov	edx, DWORD PTR vga_width@GOTOFF[eax]	# vga_width.62_279, vga_width
	imul	edx, ecx	# _281, _278
	add	edx, 79	# tmp504,
	mov	WORD PTR -70[ebp], dx	# stop, tmp504
.LBB9:
	.loc 1 184 0
	movzx	edx, WORD PTR -68[ebp]	# tmp505, start
	mov	DWORD PTR -24[ebp], edx	# i, tmp505
	jmp	.L76	#
.L77:
	.loc 1 184 0 is_stmt 0 discriminator 3
	mov	edx, DWORD PTR vga_buffer@GOT[eax]	# tmp506,
	mov	edx, DWORD PTR [edx]	# vga_buffer.63_285, vga_buffer
	mov	ecx, DWORD PTR -24[ebp]	# i.64_286, i
	add	ecx, ecx	# _287
	add	edx, ecx	# _288, _287
	movzx	ecx, BYTE PTR vga16tty_color_fg@GOTOFF[eax]	# vga16tty_color_fg.65_289, vga16tty_color_fg
	movzx	ecx, cl	# _290, vga16tty_color_fg.65_289
	sal	ecx, 8	# _291,
	mov	ebx, ecx	# _292, _292
	and	bx, 3840	# _292,
	movzx	ecx, BYTE PTR vga16tty_color_bg@GOTOFF[eax]	# vga16tty_color_bg.66_294, vga16tty_color_bg
	movzx	ecx, cl	# _295, vga16tty_color_bg.66_294
	sal	ecx, 12	# _296,
	or	ecx, ebx	# _298, _293
	mov	WORD PTR [edx], cx	# *_288, _299
	add	DWORD PTR -24[ebp], 1	# i,
.L76:
	.loc 1 184 0 discriminator 1
	movzx	edx, WORD PTR -70[ebp]	# _284, stop
	cmp	edx, DWORD PTR -24[ebp]	# _284, i
	jge	.L77	#,
.LBE9:
	.loc 1 185 0 is_stmt 1
	mov	BYTE PTR vga_putchar_mode@GOTOFF[eax], 0	# vga_putchar_mode,
.LBE8:
	.loc 1 186 0
	jmp	.L78	#
.L73:
.LBB10:
	.loc 1 188 0
	mov	edx, DWORD PTR vga_pos_y@GOTOFF[eax]	# vga_pos_y.67_303, vga_pos_y
	mov	ecx, edx	# _304, vga_pos_y.67_303
	mov	edx, DWORD PTR vga_width@GOTOFF[eax]	# vga_width.68_305, vga_width
	imul	edx, ecx	# tmp507, _304
	mov	WORD PTR -72[ebp], dx	# start, tmp507
	.loc 1 189 0
	mov	edx, DWORD PTR vga_pos_y@GOTOFF[eax]	# vga_pos_y.69_308, vga_pos_y
	mov	ecx, edx	# _309, vga_pos_y.69_308
	mov	edx, DWORD PTR vga_width@GOTOFF[eax]	# vga_width.70_310, vga_width
	imul	edx, ecx	# _312, _309
	mov	ecx, DWORD PTR vga_pos_x@GOTOFF[eax]	# vga_pos_x.71_313, vga_pos_x
	add	edx, ecx	# tmp508, _314
	mov	WORD PTR -74[ebp], dx	# stop, tmp508
.LBB11:
	.loc 1 190 0
	movzx	edx, WORD PTR -72[ebp]	# tmp509, start
	mov	DWORD PTR -28[ebp], edx	# i, tmp509
	jmp	.L79	#
.L80:
	.loc 1 190 0 is_stmt 0 discriminator 3
	mov	edx, DWORD PTR vga_buffer@GOT[eax]	# tmp510,
	mov	edx, DWORD PTR [edx]	# vga_buffer.72_318, vga_buffer
	mov	ecx, DWORD PTR -28[ebp]	# i.73_319, i
	add	ecx, ecx	# _320
	add	edx, ecx	# _321, _320
	movzx	ecx, BYTE PTR vga16tty_color_fg@GOTOFF[eax]	# vga16tty_color_fg.74_322, vga16tty_color_fg
	movzx	ecx, cl	# _323, vga16tty_color_fg.74_322
	sal	ecx, 8	# _324,
	mov	ebx, ecx	# _325, _325
	and	bx, 3840	# _325,
	movzx	ecx, BYTE PTR vga16tty_color_bg@GOTOFF[eax]	# vga16tty_color_bg.75_327, vga16tty_color_bg
	movzx	ecx, cl	# _328, vga16tty_color_bg.75_327
	sal	ecx, 12	# _329,
	or	ecx, ebx	# _331, _326
	mov	WORD PTR [edx], cx	# *_321, _332
	add	DWORD PTR -28[ebp], 1	# i,
.L79:
	.loc 1 190 0 discriminator 1
	movzx	edx, WORD PTR -74[ebp]	# _317, stop
	cmp	edx, DWORD PTR -28[ebp]	# _317, i
	jge	.L80	#,
.LBE11:
	.loc 1 191 0 is_stmt 1
	mov	BYTE PTR vga_putchar_mode@GOTOFF[eax], 0	# vga_putchar_mode,
.LBE10:
	.loc 1 192 0
	jmp	.L78	#
.L74:
.LBB12:
	.loc 1 194 0
	mov	edx, DWORD PTR vga_pos_y@GOTOFF[eax]	# vga_pos_y.76_336, vga_pos_y
	mov	ecx, edx	# _337, vga_pos_y.76_336
	mov	edx, DWORD PTR vga_width@GOTOFF[eax]	# vga_width.77_338, vga_width
	imul	edx, ecx	# tmp511, _337
	mov	WORD PTR -76[ebp], dx	# start, tmp511
	.loc 1 195 0
	mov	edx, DWORD PTR vga_pos_y@GOTOFF[eax]	# vga_pos_y.78_341, vga_pos_y
	mov	ecx, edx	# _342, vga_pos_y.78_341
	mov	edx, DWORD PTR vga_width@GOTOFF[eax]	# vga_width.79_343, vga_width
	imul	edx, ecx	# _345, _342
	add	edx, 79	# tmp512,
	mov	WORD PTR -78[ebp], dx	# stop, tmp512
.LBB13:
	.loc 1 196 0
	movzx	edx, WORD PTR -76[ebp]	# tmp513, start
	mov	DWORD PTR -32[ebp], edx	# i, tmp513
	jmp	.L81	#
.L82:
	.loc 1 196 0 is_stmt 0 discriminator 3
	mov	edx, DWORD PTR vga_buffer@GOT[eax]	# tmp514,
	mov	edx, DWORD PTR [edx]	# vga_buffer.80_349, vga_buffer
	mov	ecx, DWORD PTR -32[ebp]	# i.81_350, i
	add	ecx, ecx	# _351
	add	edx, ecx	# _352, _351
	movzx	ecx, BYTE PTR vga16tty_color_fg@GOTOFF[eax]	# vga16tty_color_fg.82_353, vga16tty_color_fg
	movzx	ecx, cl	# _354, vga16tty_color_fg.82_353
	sal	ecx, 8	# _355,
	mov	ebx, ecx	# _356, _356
	and	bx, 3840	# _356,
	movzx	ecx, BYTE PTR vga16tty_color_bg@GOTOFF[eax]	# vga16tty_color_bg.83_358, vga16tty_color_bg
	movzx	ecx, cl	# _359, vga16tty_color_bg.83_358
	sal	ecx, 12	# _360,
	or	ecx, ebx	# _362, _357
	mov	WORD PTR [edx], cx	# *_352, _363
	add	DWORD PTR -32[ebp], 1	# i,
.L81:
	.loc 1 196 0 discriminator 1
	movzx	edx, WORD PTR -78[ebp]	# _348, stop
	cmp	edx, DWORD PTR -32[ebp]	# _348, i
	jge	.L82	#,
.LBE13:
	.loc 1 197 0 is_stmt 1
	mov	BYTE PTR vga_putchar_mode@GOTOFF[eax], 0	# vga_putchar_mode,
.LBE12:
	.loc 1 198 0
	nop
.L78:
	.loc 1 200 0 discriminator 10
	jmp	.L71	#
.L65:
	.loc 1 203 0
	mov	edx, DWORD PTR vga_putchar_parameters@GOT[eax]	# tmp515,
	movzx	edx, BYTE PTR [edx]	# _367, vga_putchar_parameters
	movzx	edx, dl	# _368, _367
	cmp	edx, 1	# _368,
	je	.L84	#,
	cmp	edx, 2	# _368,
	je	.L85	#,
	test	edx, edx	# _368
	je	.L86	#,
	.loc 1 222 0
	jmp	.L89	#
.L86:
.LBB14:
	.loc 1 205 0
	mov	edx, DWORD PTR vga_pos_y@GOTOFF[eax]	# vga_pos_y.84_369, vga_pos_y
	mov	ecx, edx	# _370, vga_pos_y.84_369
	mov	edx, DWORD PTR vga_width@GOTOFF[eax]	# vga_width.85_371, vga_width
	imul	edx, ecx	# _373, _370
	mov	ecx, DWORD PTR vga_pos_x@GOTOFF[eax]	# vga_pos_x.86_374, vga_pos_x
	add	edx, ecx	# tmp516, _375
	mov	WORD PTR -80[ebp], dx	# start, tmp516
	.loc 1 206 0
	mov	edx, DWORD PTR vga_height@GOTOFF[eax]	# vga_height.87_377, vga_height
	mov	ecx, edx	# _378, vga_height.87_377
	mov	edx, DWORD PTR vga_width@GOTOFF[eax]	# vga_width.88_379, vga_width
	imul	edx, ecx	# _381, _378
	sub	edx, 1	# tmp517,
	mov	WORD PTR -82[ebp], dx	# stop, tmp517
.LBB15:
	.loc 1 207 0
	movzx	edx, WORD PTR -80[ebp]	# tmp518, start
	mov	DWORD PTR -36[ebp], edx	# i, tmp518
	jmp	.L87	#
.L88:
	.loc 1 207 0 is_stmt 0 discriminator 3
	mov	edx, DWORD PTR vga_buffer@GOT[eax]	# tmp519,
	mov	edx, DWORD PTR [edx]	# vga_buffer.89_385, vga_buffer
	mov	ecx, DWORD PTR -36[ebp]	# i.90_386, i
	add	ecx, ecx	# _387
	add	edx, ecx	# _388, _387
	movzx	ecx, BYTE PTR vga16tty_color_fg@GOTOFF[eax]	# vga16tty_color_fg.91_389, vga16tty_color_fg
	movzx	ecx, cl	# _390, vga16tty_color_fg.91_389
	sal	ecx, 8	# _391,
	mov	ebx, ecx	# _392, _392
	and	bx, 3840	# _392,
	movzx	ecx, BYTE PTR vga16tty_color_bg@GOTOFF[eax]	# vga16tty_color_bg.92_394, vga16tty_color_bg
	movzx	ecx, cl	# _395, vga16tty_color_bg.92_394
	sal	ecx, 12	# _396,
	or	ecx, ebx	# _398, _393
	mov	WORD PTR [edx], cx	# *_388, _399
	add	DWORD PTR -36[ebp], 1	# i,
.L87:
	.loc 1 207 0 discriminator 1
	movzx	edx, WORD PTR -82[ebp]	# _384, stop
	cmp	edx, DWORD PTR -36[ebp]	# _384, i
	jge	.L88	#,
.LBE15:
	.loc 1 208 0 is_stmt 1
	mov	BYTE PTR vga_putchar_mode@GOTOFF[eax], 0	# vga_putchar_mode,
.LBE14:
	.loc 1 209 0
	jmp	.L89	#
.L84:
.LBB16:
	.loc 1 211 0
	mov	WORD PTR -84[ebp], 0	# start,
	.loc 1 212 0
	mov	edx, DWORD PTR vga_pos_y@GOTOFF[eax]	# vga_pos_y.93_404, vga_pos_y
	mov	ecx, edx	# _405, vga_pos_y.93_404
	mov	edx, DWORD PTR vga_width@GOTOFF[eax]	# vga_width.94_406, vga_width
	imul	edx, ecx	# _408, _405
	mov	ecx, DWORD PTR vga_pos_x@GOTOFF[eax]	# vga_pos_x.95_409, vga_pos_x
	add	edx, ecx	# tmp520, _410
	mov	WORD PTR -86[ebp], dx	# stop, tmp520
.LBB17:
	.loc 1 213 0
	movzx	edx, WORD PTR -84[ebp]	# tmp521, start
	mov	DWORD PTR -40[ebp], edx	# i, tmp521
	jmp	.L90	#
.L91:
	.loc 1 213 0 is_stmt 0 discriminator 3
	mov	edx, DWORD PTR vga_buffer@GOT[eax]	# tmp522,
	mov	edx, DWORD PTR [edx]	# vga_buffer.96_414, vga_buffer
	mov	ecx, DWORD PTR -40[ebp]	# i.97_415, i
	add	ecx, ecx	# _416
	add	edx, ecx	# _417, _416
	movzx	ecx, BYTE PTR vga16tty_color_fg@GOTOFF[eax]	# vga16tty_color_fg.98_418, vga16tty_color_fg
	movzx	ecx, cl	# _419, vga16tty_color_fg.98_418
	sal	ecx, 8	# _420,
	mov	ebx, ecx	# _421, _421
	and	bx, 3840	# _421,
	movzx	ecx, BYTE PTR vga16tty_color_bg@GOTOFF[eax]	# vga16tty_color_bg.99_423, vga16tty_color_bg
	movzx	ecx, cl	# _424, vga16tty_color_bg.99_423
	sal	ecx, 12	# _425,
	or	ecx, ebx	# _427, _422
	mov	WORD PTR [edx], cx	# *_417, _428
	add	DWORD PTR -40[ebp], 1	# i,
.L90:
	.loc 1 213 0 discriminator 1
	movzx	edx, WORD PTR -86[ebp]	# _413, stop
	cmp	edx, DWORD PTR -40[ebp]	# _413, i
	jge	.L91	#,
.LBE17:
	.loc 1 214 0 is_stmt 1
	mov	BYTE PTR vga_putchar_mode@GOTOFF[eax], 0	# vga_putchar_mode,
.LBE16:
	.loc 1 215 0
	jmp	.L89	#
.L85:
.LBB18:
	.loc 1 217 0
	mov	WORD PTR -88[ebp], 0	# start,
	.loc 1 218 0
	mov	edx, DWORD PTR vga_height@GOTOFF[eax]	# vga_height.100_433, vga_height
	mov	ecx, edx	# _434, vga_height.100_433
	mov	edx, DWORD PTR vga_width@GOTOFF[eax]	# vga_width.101_435, vga_width
	imul	edx, ecx	# _437, _434
	sub	edx, 1	# tmp523,
	mov	WORD PTR -90[ebp], dx	# stop, tmp523
.LBB19:
	.loc 1 219 0
	movzx	edx, WORD PTR -88[ebp]	# tmp524, start
	mov	DWORD PTR -44[ebp], edx	# i, tmp524
	jmp	.L92	#
.L93:
	.loc 1 219 0 is_stmt 0 discriminator 3
	mov	edx, DWORD PTR vga_buffer@GOT[eax]	# tmp525,
	mov	edx, DWORD PTR [edx]	# vga_buffer.102_441, vga_buffer
	mov	ecx, DWORD PTR -44[ebp]	# i.103_442, i
	add	ecx, ecx	# _443
	add	edx, ecx	# _444, _443
	movzx	ecx, BYTE PTR vga16tty_color_fg@GOTOFF[eax]	# vga16tty_color_fg.104_445, vga16tty_color_fg
	movzx	ecx, cl	# _446, vga16tty_color_fg.104_445
	sal	ecx, 8	# _447,
	mov	ebx, ecx	# _448, _448
	and	bx, 3840	# _448,
	movzx	ecx, BYTE PTR vga16tty_color_bg@GOTOFF[eax]	# vga16tty_color_bg.105_450, vga16tty_color_bg
	movzx	ecx, cl	# _451, vga16tty_color_bg.105_450
	sal	ecx, 12	# _452,
	or	ecx, ebx	# _454, _449
	mov	WORD PTR [edx], cx	# *_444, _455
	add	DWORD PTR -44[ebp], 1	# i,
.L92:
	.loc 1 219 0 discriminator 1
	movzx	edx, WORD PTR -90[ebp]	# _440, stop
	cmp	edx, DWORD PTR -44[ebp]	# _440, i
	jge	.L93	#,
.LBE19:
	.loc 1 220 0 is_stmt 1
	mov	BYTE PTR vga_putchar_mode@GOTOFF[eax], 0	# vga_putchar_mode,
.LBE18:
	.loc 1 221 0
	nop
.L89:
	.loc 1 223 0 discriminator 12
	jmp	.L71	#
.L68:
.LBB20:
	.loc 1 226 0
	mov	DWORD PTR -48[ebp], 0	# i,
	jmp	.L94	#
.L105:
	.loc 1 227 0
	mov	ecx, DWORD PTR vga_putchar_parameters@GOT[eax]	# tmp526,
	mov	edx, DWORD PTR -48[ebp]	# tmp527, i
	add	edx, ecx	# tmp528, tmp526
	movzx	edx, BYTE PTR [edx]	# _462, vga_putchar_parameters
	movzx	edx, dl	# _463, _462
	cmp	edx, 107	# _463,
	ja	.L126	#,
	sal	edx, 2	# tmp529,
	mov	edx, DWORD PTR .L97@GOTOFF[edx+eax]	# tmp530,
	add	edx, eax	# tmp531, tmp87
	jmp	edx	# tmp531
	.section	.rodata
	.align 4
	.align 4
.L97:
	.long	.L96@GOTOFF
	.long	.L126@GOTOFF
	.long	.L126@GOTOFF
	.long	.L126@GOTOFF
	.long	.L126@GOTOFF
	.long	.L126@GOTOFF
	.long	.L126@GOTOFF
	.long	.L126@GOTOFF
	.long	.L126@GOTOFF
	.long	.L126@GOTOFF
	.long	.L126@GOTOFF
	.long	.L126@GOTOFF
	.long	.L126@GOTOFF
	.long	.L126@GOTOFF
	.long	.L126@GOTOFF
	.long	.L126@GOTOFF
	.long	.L126@GOTOFF
	.long	.L126@GOTOFF
	.long	.L126@GOTOFF
	.long	.L126@GOTOFF
	.long	.L126@GOTOFF
	.long	.L126@GOTOFF
	.long	.L126@GOTOFF
	.long	.L126@GOTOFF
	.long	.L126@GOTOFF
	.long	.L126@GOTOFF
	.long	.L126@GOTOFF
	.long	.L126@GOTOFF
	.long	.L126@GOTOFF
	.long	.L126@GOTOFF
	.long	.L98@GOTOFF
	.long	.L98@GOTOFF
	.long	.L98@GOTOFF
	.long	.L98@GOTOFF
	.long	.L98@GOTOFF
	.long	.L98@GOTOFF
	.long	.L98@GOTOFF
	.long	.L98@GOTOFF
	.long	.L99@GOTOFF
	.long	.L126@GOTOFF
	.long	.L100@GOTOFF
	.long	.L100@GOTOFF
	.long	.L100@GOTOFF
	.long	.L100@GOTOFF
	.long	.L100@GOTOFF
	.long	.L100@GOTOFF
	.long	.L100@GOTOFF
	.long	.L100@GOTOFF
	.long	.L101@GOTOFF
	.long	.L126@GOTOFF
	.long	.L126@GOTOFF
	.long	.L126@GOTOFF
	.long	.L126@GOTOFF
	.long	.L126@GOTOFF
	.long	.L126@GOTOFF
	.long	.L126@GOTOFF
	.long	.L126@GOTOFF
	.long	.L126@GOTOFF
	.long	.L126@GOTOFF
	.long	.L126@GOTOFF
	.long	.L126@GOTOFF
	.long	.L126@GOTOFF
	.long	.L126@GOTOFF
	.long	.L126@GOTOFF
	.long	.L126@GOTOFF
	.long	.L126@GOTOFF
	.long	.L126@GOTOFF
	.long	.L126@GOTOFF
	.long	.L126@GOTOFF
	.long	.L126@GOTOFF
	.long	.L126@GOTOFF
	.long	.L126@GOTOFF
	.long	.L126@GOTOFF
	.long	.L126@GOTOFF
	.long	.L126@GOTOFF
	.long	.L126@GOTOFF
	.long	.L126@GOTOFF
	.long	.L126@GOTOFF
	.long	.L126@GOTOFF
	.long	.L126@GOTOFF
	.long	.L126@GOTOFF
	.long	.L126@GOTOFF
	.long	.L126@GOTOFF
	.long	.L126@GOTOFF
	.long	.L126@GOTOFF
	.long	.L126@GOTOFF
	.long	.L126@GOTOFF
	.long	.L126@GOTOFF
	.long	.L126@GOTOFF
	.long	.L126@GOTOFF
	.long	.L102@GOTOFF
	.long	.L102@GOTOFF
	.long	.L102@GOTOFF
	.long	.L102@GOTOFF
	.long	.L102@GOTOFF
	.long	.L102@GOTOFF
	.long	.L102@GOTOFF
	.long	.L102@GOTOFF
	.long	.L126@GOTOFF
	.long	.L126@GOTOFF
	.long	.L103@GOTOFF
	.long	.L103@GOTOFF
	.long	.L103@GOTOFF
	.long	.L103@GOTOFF
	.long	.L103@GOTOFF
	.long	.L103@GOTOFF
	.long	.L103@GOTOFF
	.long	.L103@GOTOFF
	.text
.L96:
	.loc 1 228 0
	mov	BYTE PTR vga16tty_color_fg@GOTOFF[eax], 7	# vga16tty_color_fg,
	mov	BYTE PTR vga16tty_color_bg@GOTOFF[eax], 0	# vga16tty_color_bg,
	jmp	.L104	#
.L98:
	.loc 1 229 0
	mov	ecx, DWORD PTR vga_putchar_parameters@GOT[eax]	# tmp532,
	mov	edx, DWORD PTR -48[ebp]	# tmp533, i
	add	edx, ecx	# tmp534, tmp532
	movzx	edx, BYTE PTR [edx]	# _466, vga_putchar_parameters
	sub	edx, 30	# _467,
	mov	BYTE PTR vga16tty_color_fg@GOTOFF[eax], dl	# vga16tty_color_fg, _467
	jmp	.L104	#
.L99:
	.loc 1 230 0
	mov	BYTE PTR vga16tty_color_fg@GOTOFF[eax], 7	# vga16tty_color_fg,
	jmp	.L104	#
.L100:
	.loc 1 231 0
	mov	ecx, DWORD PTR vga_putchar_parameters@GOT[eax]	# tmp535,
	mov	edx, DWORD PTR -48[ebp]	# tmp536, i
	add	edx, ecx	# tmp537, tmp535
	movzx	edx, BYTE PTR [edx]	# _470, vga_putchar_parameters
	sub	edx, 40	# _471,
	mov	BYTE PTR vga16tty_color_bg@GOTOFF[eax], dl	# vga16tty_color_bg, _471
	jmp	.L104	#
.L101:
	.loc 1 232 0
	mov	BYTE PTR vga16tty_color_bg@GOTOFF[eax], 0	# vga16tty_color_bg,
	jmp	.L104	#
.L102:
	.loc 1 233 0
	mov	ecx, DWORD PTR vga_putchar_parameters@GOT[eax]	# tmp538,
	mov	edx, DWORD PTR -48[ebp]	# tmp539, i
	add	edx, ecx	# tmp540, tmp538
	movzx	edx, BYTE PTR [edx]	# _474, vga_putchar_parameters
	sub	edx, 82	# _475,
	mov	BYTE PTR vga16tty_color_fg@GOTOFF[eax], dl	# vga16tty_color_fg, _475
	jmp	.L104	#
.L103:
	.loc 1 234 0
	mov	ecx, DWORD PTR vga_putchar_parameters@GOT[eax]	# tmp541,
	mov	edx, DWORD PTR -48[ebp]	# tmp542, i
	add	edx, ecx	# tmp543, tmp541
	movzx	edx, BYTE PTR [edx]	# _477, vga_putchar_parameters
	sub	edx, 92	# _478,
	mov	BYTE PTR vga16tty_color_bg@GOTOFF[eax], dl	# vga16tty_color_bg, _478
	jmp	.L104	#
.L126:
	.loc 1 235 0
	nop
.L104:
	.loc 1 226 0 discriminator 2
	add	DWORD PTR -48[ebp], 1	# i,
.L94:
	.loc 1 226 0 is_stmt 0 discriminator 1
	movzx	edx, BYTE PTR vga_putchar_parameter@GOTOFF[eax]	# vga_putchar_parameter.106_460, vga_putchar_parameter
	movzx	edx, dl	# _461, vga_putchar_parameter.106_460
	cmp	edx, DWORD PTR -48[ebp]	# _461, i
	jge	.L105	#,
.LBE20:
	.loc 1 238 0 is_stmt 1
	mov	BYTE PTR vga_putchar_mode@GOTOFF[eax], 0	# vga_putchar_mode,
	.loc 1 239 0
	jmp	.L71	#
.L55:
	.loc 1 240 0
	mov	BYTE PTR vga_putchar_mode@GOTOFF[eax], 0	# vga_putchar_mode,
	nop
.L71:
	.loc 1 242 0 discriminator 13
	jmp	.L38	#
.L115:
	.loc 1 243 0
	mov	BYTE PTR vga_putchar_mode@GOTOFF[eax], 0	# vga_putchar_mode,
	nop
.L38:
	.loc 1 248 0
	mov	edx, DWORD PTR vga_pos_x@GOTOFF[eax]	# vga_pos_x.107_484, vga_pos_x
	test	edx, edx	# vga_pos_x.107_484
	jns	.L106	#,
	.loc 1 248 0 is_stmt 0 discriminator 1
	mov	DWORD PTR vga_pos_x@GOTOFF[eax], 0	# vga_pos_x,
.L106:
	.loc 1 249 0 is_stmt 1
	mov	edx, DWORD PTR vga_pos_y@GOTOFF[eax]	# vga_pos_y.108_486, vga_pos_y
	test	edx, edx	# vga_pos_y.108_486
	jns	.L107	#,
	.loc 1 249 0 is_stmt 0 discriminator 1
	mov	DWORD PTR vga_pos_y@GOTOFF[eax], 0	# vga_pos_y,
.L107:
	.loc 1 250 0 is_stmt 1
	mov	ecx, DWORD PTR vga_pos_x@GOTOFF[eax]	# vga_pos_x.109_488, vga_pos_x
	mov	edx, DWORD PTR vga_width@GOTOFF[eax]	# vga_width.110_489, vga_width
	cmp	ecx, edx	# vga_pos_x.109_488, vga_width.110_489
	jl	.L109	#,
	.loc 1 251 0
	mov	DWORD PTR vga_pos_x@GOTOFF[eax], 0	# vga_pos_x,
	.loc 1 252 0
	mov	edx, DWORD PTR vga_pos_y@GOTOFF[eax]	# vga_pos_y.111_491, vga_pos_y
	add	edx, 1	# _492,
	mov	DWORD PTR vga_pos_y@GOTOFF[eax], edx	# vga_pos_y, _492
	.loc 1 254 0
	jmp	.L109	#
.L114:
.LBB21:
	.loc 1 255 0
	mov	edx, DWORD PTR vga_width@GOTOFF[eax]	# tmp544, vga_width
	mov	DWORD PTR -52[ebp], edx	# isource, tmp544
	jmp	.L110	#
.L111:
.LBB22:
	.loc 1 256 0 discriminator 3
	mov	edx, DWORD PTR vga_width@GOTOFF[eax]	# vga_width.112_500, vga_width
	mov	ecx, DWORD PTR -52[ebp]	# tmp548, isource
	sub	ecx, edx	# tmp548, vga_width.112_500
	mov	edx, ecx	# tmp547, tmp548
	mov	DWORD PTR -96[ebp], edx	# idest, tmp547
	.loc 1 257 0 discriminator 3
	mov	edx, DWORD PTR vga_buffer@GOT[eax]	# tmp549,
	mov	edx, DWORD PTR [edx]	# vga_buffer.113_502, vga_buffer
	mov	ecx, DWORD PTR -96[ebp]	# idest.114_503, idest
	add	ecx, ecx	# _504
	add	ecx, edx	# _505, vga_buffer.113_502
	mov	edx, DWORD PTR vga_buffer@GOT[eax]	# tmp550,
	mov	edx, DWORD PTR [edx]	# vga_buffer.115_506, vga_buffer
	mov	ebx, DWORD PTR -52[ebp]	# isource.116_507, isource
	add	ebx, ebx	# _508
	add	edx, ebx	# _509, _508
	movzx	edx, WORD PTR [edx]	# _510, *_509
	mov	WORD PTR [ecx], dx	# *_505, _510
.LBE22:
	.loc 1 255 0 discriminator 3
	add	DWORD PTR -52[ebp], 1	# isource,
.L110:
	.loc 1 255 0 is_stmt 0 discriminator 1
	mov	ecx, DWORD PTR vga_width@GOTOFF[eax]	# vga_width.117_497, vga_width
	mov	edx, DWORD PTR vga_height@GOTOFF[eax]	# vga_height.118_498, vga_height
	imul	edx, ecx	# _499, vga_width.117_497
	cmp	edx, DWORD PTR -52[ebp]	# _499, isource
	jg	.L111	#,
.LBE21:
.LBB23:
	.loc 1 259 0 is_stmt 1
	mov	edx, DWORD PTR vga_height@GOTOFF[eax]	# vga_height.119_513, vga_height
	lea	ecx, -1[edx]	# _514,
	mov	edx, DWORD PTR vga_width@GOTOFF[eax]	# vga_width.120_515, vga_width
	imul	edx, ecx	# tmp551, _514
	mov	DWORD PTR -56[ebp], edx	# idest, tmp551
	jmp	.L112	#
.L113:
	.loc 1 260 0 discriminator 3
	mov	edx, DWORD PTR vga_buffer@GOT[eax]	# tmp552,
	mov	edx, DWORD PTR [edx]	# vga_buffer.121_520, vga_buffer
	mov	ecx, DWORD PTR -56[ebp]	# idest.122_521, idest
	add	ecx, ecx	# _522
	add	edx, ecx	# _523, _522
	movzx	ecx, BYTE PTR vga16tty_color_fg@GOTOFF[eax]	# vga16tty_color_fg.123_524, vga16tty_color_fg
	movzx	ecx, cl	# _525, vga16tty_color_fg.123_524
	sal	ecx, 8	# _526,
	mov	ebx, ecx	# _527, _527
	and	bx, 3840	# _527,
	movzx	ecx, BYTE PTR vga16tty_color_bg@GOTOFF[eax]	# vga16tty_color_bg.124_529, vga16tty_color_bg
	movzx	ecx, cl	# _530, vga16tty_color_bg.124_529
	sal	ecx, 12	# _531,
	or	ecx, ebx	# _533, _528
	mov	WORD PTR [edx], cx	# *_523, _534
	.loc 1 259 0 discriminator 3
	add	DWORD PTR -56[ebp], 1	# idest,
.L112:
	.loc 1 259 0 is_stmt 0 discriminator 1
	mov	ecx, DWORD PTR vga_width@GOTOFF[eax]	# vga_width.125_517, vga_width
	mov	edx, DWORD PTR vga_height@GOTOFF[eax]	# vga_height.126_518, vga_height
	imul	edx, ecx	# _519, vga_width.125_517
	cmp	edx, DWORD PTR -56[ebp]	# _519, idest
	jg	.L113	#,
.LBE23:
	.loc 1 262 0 is_stmt 1
	mov	edx, DWORD PTR vga_pos_y@GOTOFF[eax]	# vga_pos_y.127_537, vga_pos_y
	sub	edx, 1	# _538,
	mov	DWORD PTR vga_pos_y@GOTOFF[eax], edx	# vga_pos_y, _538
.L109:
	.loc 1 254 0
	mov	ecx, DWORD PTR vga_pos_y@GOTOFF[eax]	# vga_pos_y.128_494, vga_pos_y
	mov	edx, DWORD PTR vga_height@GOTOFF[eax]	# vga_height.129_495, vga_height
	cmp	ecx, edx	# vga_pos_y.128_494, vga_height.129_495
	jge	.L114	#,
	.loc 1 267 0
	mov	edx, DWORD PTR vga_pos_y@GOTOFF[eax]	# vga_pos_y.130_540, vga_pos_y
	movzx	edx, dl	# _542, _541
	mov	eax, DWORD PTR vga_pos_x@GOTOFF[eax]	# vga_pos_x.131_543, vga_pos_x
	movzx	eax, al	# _545, _544
	sub	esp, 8	#,
	push	edx	# _542
	push	eax	# _545
	call	vga16tty_cursor_set	#
	add	esp, 16	#,
	.loc 1 268 0
	nop
	mov	ebx, DWORD PTR -4[ebp]	#,
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE5:
	.size	vga16tty_putchar, .-vga16tty_putchar
	.globl	lenH
	.type	lenH, @function
lenH:
.LFB6:
	.loc 1 272 0
	.cfi_startproc
	push	ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp	#,
	.cfi_def_cfa_register 5
	sub	esp, 16	#,
	call	__x86.get_pc_thunk.ax	#
	add	eax, OFFSET FLAT:_GLOBAL_OFFSET_TABLE_	# tmp87,
	.loc 1 273 0
	mov	BYTE PTR -1[ebp], 0	# len,
	.loc 1 274 0
	jmp	.L128	#
.L129:
	.loc 1 275 0
	movzx	eax, BYTE PTR -1[ebp]	# len.132_6, len
	add	eax, 1	# tmp91,
	mov	BYTE PTR -1[ebp], al	# len, tmp91
	.loc 1 276 0
	mov	eax, DWORD PTR 8[ebp]	# tmp93, val
	shr	eax, 4	# tmp92,
	mov	DWORD PTR 8[ebp], eax	# val, tmp92
.L128:
	.loc 1 274 0
	cmp	DWORD PTR 8[ebp], 0	# val,
	jne	.L129	#,
	.loc 1 278 0
	cmp	BYTE PTR -1[ebp], 0	# len,
	jne	.L130	#,
	.loc 1 278 0 is_stmt 0 discriminator 1
	mov	eax, 1	# _3,
	jmp	.L131	#
.L130:
	.loc 1 279 0 is_stmt 1
	movzx	eax, BYTE PTR -1[ebp]	# _3, len
.L131:
	.loc 1 280 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE6:
	.size	lenH, .-lenH
	.globl	strH
	.type	strH, @function
strH:
.LFB7:
	.loc 1 282 0
	.cfi_startproc
	push	ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp	#,
	.cfi_def_cfa_register 5
	sub	esp, 4	#,
	call	__x86.get_pc_thunk.ax	#
	add	eax, OFFSET FLAT:_GLOBAL_OFFSET_TABLE_	# tmp87,
	mov	eax, DWORD PTR 16[ebp]	# tmp104, len
	mov	BYTE PTR -4[ebp], al	# len, tmp104
	.loc 1 283 0
	jmp	.L133	#
.L136:
	.loc 1 284 0
	mov	eax, DWORD PTR 8[ebp]	# tmp105, val
	and	eax, 15	# _8,
	cmp	eax, 9	# _8,
	jbe	.L134	#,
	.loc 1 285 0
	movzx	eax, BYTE PTR -4[ebp]	# _9, len
	lea	edx, -1[eax]	# _10,
	mov	eax, DWORD PTR 12[ebp]	# tmp106, buf
	add	eax, edx	# _12, _10
	mov	edx, DWORD PTR 8[ebp]	# tmp107, val
	and	edx, 15	# _14,
	add	edx, 55	# _15,
	mov	BYTE PTR [eax], dl	# *_12, _16
	jmp	.L135	#
.L134:
	.loc 1 287 0
	movzx	eax, BYTE PTR -4[ebp]	# _18, len
	lea	edx, -1[eax]	# _19,
	mov	eax, DWORD PTR 12[ebp]	# tmp108, buf
	add	eax, edx	# _20, _19
	mov	edx, DWORD PTR 8[ebp]	# tmp109, val
	and	edx, 15	# _22,
	add	edx, 48	# _23,
	mov	BYTE PTR [eax], dl	# *_20, _24
.L135:
	.loc 1 289 0
	mov	eax, DWORD PTR 8[ebp]	# tmp111, val
	shr	eax, 4	# tmp110,
	mov	DWORD PTR 8[ebp], eax	# val, tmp110
	.loc 1 290 0
	movzx	eax, BYTE PTR -4[ebp]	# len.133_27, len
	sub	eax, 1	# tmp112,
	mov	BYTE PTR -4[ebp], al	# len, tmp112
.L133:
	.loc 1 283 0
	cmp	BYTE PTR -4[ebp], 0	# len,
	jne	.L136	#,
	.loc 1 292 0
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE7:
	.size	strH, .-strH
	.globl	printHfs
	.type	printHfs, @function
printHfs:
.LFB8:
	.loc 1 294 0
	.cfi_startproc
	push	ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp	#,
	.cfi_def_cfa_register 5
	push	esi	#
	push	ebx	#
	sub	esp, 32	#,
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	call	__x86.get_pc_thunk.ax	#
	add	eax, OFFSET FLAT:_GLOBAL_OFFSET_TABLE_	# tmp87,
	mov	edx, DWORD PTR 12[ebp]	# tmp111, len
	mov	eax, DWORD PTR 16[ebp]	# tmp112, space
	mov	BYTE PTR -28[ebp], dl	# len, tmp111
	mov	BYTE PTR -32[ebp], al	# space, tmp112
	.loc 1 294 0
	mov	eax, esp	# tmp113,
	mov	esi, eax	# saved_stack.138_5, tmp113
	.loc 1 295 0
	movzx	eax, BYTE PTR -28[ebp]	# _7, len
	add	eax, 1	# _8,
	lea	edx, -1[eax]	# _9,
	mov	DWORD PTR -16[ebp], edx	# D.2384, _9
	mov	edx, eax	# _18, _8
	mov	eax, 16	# tmp128,
	sub	eax, 1	# tmp114,
	add	eax, edx	# tmp115, _18
	mov	ebx, 16	# tmp129,
	mov	edx, 0	# tmp118,
	div	ebx	# tmp129
	imul	eax, eax, 16	# tmp119, tmp117,
	sub	esp, eax	#, tmp119
	mov	eax, esp	# tmp120,
	add	eax, 0	# tmp121,
	mov	DWORD PTR -20[ebp], eax	# buf.134, tmp121
.LBB24:
	.loc 1 296 0
	mov	BYTE PTR -9[ebp], 0	# i,
	jmp	.L138	#
.L139:
	.loc 1 296 0 is_stmt 0 discriminator 3
	movzx	eax, BYTE PTR -9[ebp]	# _22, i
	mov	edx, DWORD PTR -20[ebp]	# tmp122, buf.134
	movzx	ecx, BYTE PTR -32[ebp]	# tmp123, space
	mov	BYTE PTR [edx+eax], cl	# *buf.134_20, tmp123
	movzx	eax, BYTE PTR -9[ebp]	# i.135_25, i
	add	eax, 1	# tmp124,
	mov	BYTE PTR -9[ebp], al	# i, tmp124
.L138:
	.loc 1 296 0 discriminator 1
	movzx	eax, BYTE PTR -9[ebp]	# tmp125, i
	cmp	al, BYTE PTR -28[ebp]	# tmp125, len
	jb	.L139	#,
.LBE24:
	.loc 1 297 0 is_stmt 1
	sub	esp, 12	#,
	push	DWORD PTR 8[ebp]	# val
	call	lenH	#
	add	esp, 16	#,
	mov	BYTE PTR -21[ebp], al	# size, tmp126
	.loc 1 298 0
	movzx	eax, BYTE PTR -21[ebp]	# _30, size
	mov	edx, DWORD PTR -20[ebp]	# buf.136_31, buf.134
	movzx	ebx, BYTE PTR -28[ebp]	# _32, len
	movzx	ecx, BYTE PTR -21[ebp]	# _33, size
	sub	ebx, ecx	# _32, _33
	mov	ecx, ebx	# _34, _32
	add	edx, ecx	# _36, _35
	sub	esp, 4	#,
	push	eax	# _30
	push	edx	# _36
	push	DWORD PTR 8[ebp]	# val
	call	strH	#
	add	esp, 16	#,
	.loc 1 299 0
	movzx	eax, BYTE PTR -28[ebp]	# _38, len
	mov	edx, DWORD PTR -20[ebp]	# tmp127, buf.134
	mov	BYTE PTR [edx+eax], 0	# *buf.134_20,
	.loc 1 300 0
	mov	eax, DWORD PTR -20[ebp]	# buf.137_40, buf.134
	sub	esp, 12	#,
	push	eax	# buf.137_40
	call	kprintf	#
	add	esp, 16	#,
	mov	esp, esi	#, saved_stack.138_5
	.loc 1 301 0
	nop
	lea	esp, -8[ebp]	#,
	pop	ebx	#
	.cfi_restore 3
	pop	esi	#
	.cfi_restore 6
	pop	ebp	#
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE8:
	.size	printHfs, .-printHfs
	.globl	printHf
	.type	printHf, @function
printHf:
.LFB9:
	.loc 1 303 0
	.cfi_startproc
	push	ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp	#,
	.cfi_def_cfa_register 5
	push	ebx	#
	sub	esp, 36	#,
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.ax	#
	add	eax, OFFSET FLAT:_GLOBAL_OFFSET_TABLE_	# tmp87,
	mov	eax, DWORD PTR 12[ebp]	# tmp104, len
	mov	BYTE PTR -28[ebp], al	# len, tmp104
	.loc 1 303 0
	mov	eax, esp	# tmp105,
	mov	ebx, eax	# saved_stack.142_3, tmp105
	.loc 1 304 0
	movzx	eax, BYTE PTR -28[ebp]	# _5, len
	add	eax, 1	# _6,
	lea	edx, -1[eax]	# _7,
	mov	DWORD PTR -12[ebp], edx	# D.2409, _7
	mov	edx, eax	# _16, _6
	mov	eax, 16	# tmp115,
	sub	eax, 1	# tmp106,
	add	eax, edx	# tmp107, _16
	mov	ecx, 16	# tmp116,
	mov	edx, 0	# tmp110,
	div	ecx	# tmp116
	imul	eax, eax, 16	# tmp111, tmp109,
	sub	esp, eax	#, tmp111
	mov	eax, esp	# tmp112,
	add	eax, 0	# tmp113,
	mov	DWORD PTR -16[ebp], eax	# buf.139, tmp113
	.loc 1 305 0
	movzx	edx, BYTE PTR -28[ebp]	# _19, len
	mov	eax, DWORD PTR -16[ebp]	# buf.140_20, buf.139
	sub	esp, 4	#,
	push	edx	# _19
	push	eax	# buf.140_20
	push	DWORD PTR 8[ebp]	# val
	call	strH	#
	add	esp, 16	#,
	.loc 1 306 0
	movzx	eax, BYTE PTR -28[ebp]	# _23, len
	mov	edx, DWORD PTR -16[ebp]	# tmp114, buf.139
	mov	BYTE PTR [edx+eax], 0	# *buf.139_18,
	.loc 1 307 0
	mov	eax, DWORD PTR -16[ebp]	# buf.141_25, buf.139
	sub	esp, 12	#,
	push	eax	# buf.141_25
	call	kprintf	#
	add	esp, 16	#,
	mov	esp, ebx	#, saved_stack.142_3
	.loc 1 308 0
	nop
	mov	ebx, DWORD PTR -4[ebp]	#,
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE9:
	.size	printHf, .-printHf
	.globl	printH
	.type	printH, @function
printH:
.LFB10:
	.loc 1 310 0
	.cfi_startproc
	push	ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp	#,
	.cfi_def_cfa_register 5
	push	ebx	#
	sub	esp, 20	#,
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.ax	#
	add	eax, OFFSET FLAT:_GLOBAL_OFFSET_TABLE_	# tmp87,
	.loc 1 310 0
	mov	eax, esp	# tmp104,
	mov	ebx, eax	# saved_stack.146_3, tmp104
	.loc 1 311 0
	push	DWORD PTR 8[ebp]	# val
	call	lenH	#
	add	esp, 4	#,
	mov	BYTE PTR -9[ebp], al	# len, tmp105
	.loc 1 312 0
	movzx	eax, BYTE PTR -9[ebp]	# _7, len
	add	eax, 1	# _8,
	lea	edx, -1[eax]	# _9,
	mov	DWORD PTR -16[ebp], edx	# D.2427, _9
	mov	edx, eax	# _18, _8
	mov	eax, 16	# tmp115,
	sub	eax, 1	# tmp106,
	add	eax, edx	# tmp107, _18
	mov	ecx, 16	# tmp116,
	mov	edx, 0	# tmp110,
	div	ecx	# tmp116
	imul	eax, eax, 16	# tmp111, tmp109,
	sub	esp, eax	#, tmp111
	mov	eax, esp	# tmp112,
	add	eax, 0	# tmp113,
	mov	DWORD PTR -20[ebp], eax	# buf.143, tmp113
	.loc 1 313 0
	movzx	edx, BYTE PTR -9[ebp]	# _21, len
	mov	eax, DWORD PTR -20[ebp]	# buf.144_22, buf.143
	sub	esp, 4	#,
	push	edx	# _21
	push	eax	# buf.144_22
	push	DWORD PTR 8[ebp]	# val
	call	strH	#
	add	esp, 16	#,
	.loc 1 314 0
	movzx	eax, BYTE PTR -9[ebp]	# _24, len
	mov	edx, DWORD PTR -20[ebp]	# tmp114, buf.143
	mov	BYTE PTR [edx+eax], 0	# *buf.143_20,
	.loc 1 315 0
	mov	eax, DWORD PTR -20[ebp]	# buf.145_26, buf.143
	sub	esp, 12	#,
	push	eax	# buf.145_26
	call	kprintf	#
	add	esp, 16	#,
	mov	esp, ebx	#, saved_stack.146_3
	.loc 1 316 0
	nop
	mov	ebx, DWORD PTR -4[ebp]	#,
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE10:
	.size	printH, .-printH
	.globl	lenD
	.type	lenD, @function
lenD:
.LFB11:
	.loc 1 318 0
	.cfi_startproc
	push	ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp	#,
	.cfi_def_cfa_register 5
	sub	esp, 16	#,
	call	__x86.get_pc_thunk.ax	#
	add	eax, OFFSET FLAT:_GLOBAL_OFFSET_TABLE_	# tmp87,
	.loc 1 319 0
	mov	BYTE PTR -1[ebp], 0	# len,
	.loc 1 320 0
	jmp	.L143	#
.L144:
	.loc 1 321 0
	movzx	eax, BYTE PTR -1[ebp]	# len.147_6, len
	add	eax, 1	# tmp91,
	mov	BYTE PTR -1[ebp], al	# len, tmp91
	.loc 1 322 0
	mov	eax, DWORD PTR 8[ebp]	# tmp93, val
	mov	edx, -858993459	# tmp95,
	mul	edx	# tmp95
	mov	eax, edx	# tmp94, tmp94
	shr	eax, 3	# tmp94,
	mov	DWORD PTR 8[ebp], eax	# val, tmp92
.L143:
	.loc 1 320 0
	cmp	DWORD PTR 8[ebp], 0	# val,
	jne	.L144	#,
	.loc 1 324 0
	cmp	BYTE PTR -1[ebp], 0	# len,
	jne	.L145	#,
	.loc 1 324 0 is_stmt 0 discriminator 1
	mov	eax, 1	# _3,
	jmp	.L146	#
.L145:
	.loc 1 325 0 is_stmt 1
	movzx	eax, BYTE PTR -1[ebp]	# _3, len
.L146:
	.loc 1 326 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE11:
	.size	lenD, .-lenD
	.globl	strD
	.type	strD, @function
strD:
.LFB12:
	.loc 1 328 0
	.cfi_startproc
	push	ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp	#,
	.cfi_def_cfa_register 5
	push	ebx	#
	sub	esp, 4	#,
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.ax	#
	add	eax, OFFSET FLAT:_GLOBAL_OFFSET_TABLE_	# tmp87,
	mov	eax, DWORD PTR 16[ebp]	# tmp96, len
	mov	BYTE PTR -8[ebp], al	# len, tmp96
	.loc 1 329 0
	jmp	.L148	#
.L149:
	.loc 1 330 0
	movzx	eax, BYTE PTR -8[ebp]	# _7, len
	lea	edx, -1[eax]	# _8,
	mov	eax, DWORD PTR 12[ebp]	# tmp97, buf
	lea	ebx, [edx+eax]	# _10,
	mov	ecx, DWORD PTR 8[ebp]	# tmp98, val
	mov	edx, -858993459	# tmp100,
	mov	eax, ecx	# tmp108, tmp98
	mul	edx	# tmp100
	shr	edx, 3	# _11,
	mov	eax, edx	# tmp101, _11
	sal	eax, 2	# tmp101,
	add	eax, edx	# tmp101, _11
	add	eax, eax	# tmp102
	sub	ecx, eax	# tmp98, tmp101
	mov	edx, ecx	# _11, tmp98
	mov	eax, edx	# _12, _11
	add	eax, 48	# _13,
	mov	BYTE PTR [ebx], al	# *_10, _14
	.loc 1 331 0
	mov	eax, DWORD PTR 8[ebp]	# tmp104, val
	mov	edx, -858993459	# tmp106,
	mul	edx	# tmp106
	mov	eax, edx	# tmp105, tmp105
	shr	eax, 3	# tmp105,
	mov	DWORD PTR 8[ebp], eax	# val, tmp103
	.loc 1 332 0
	movzx	eax, BYTE PTR -8[ebp]	# len.148_17, len
	sub	eax, 1	# tmp107,
	mov	BYTE PTR -8[ebp], al	# len, tmp107
.L148:
	.loc 1 329 0
	cmp	BYTE PTR -8[ebp], 0	# len,
	jne	.L149	#,
	.loc 1 334 0
	nop
	add	esp, 4	#,
	pop	ebx	#
	.cfi_restore 3
	pop	ebp	#
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE12:
	.size	strD, .-strD
	.globl	printDfs
	.type	printDfs, @function
printDfs:
.LFB13:
	.loc 1 336 0
	.cfi_startproc
	push	ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp	#,
	.cfi_def_cfa_register 5
	push	esi	#
	push	ebx	#
	sub	esp, 32	#,
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	call	__x86.get_pc_thunk.ax	#
	add	eax, OFFSET FLAT:_GLOBAL_OFFSET_TABLE_	# tmp87,
	mov	edx, DWORD PTR 12[ebp]	# tmp111, len
	mov	eax, DWORD PTR 16[ebp]	# tmp112, space
	mov	BYTE PTR -28[ebp], dl	# len, tmp111
	mov	BYTE PTR -32[ebp], al	# space, tmp112
	.loc 1 336 0
	mov	eax, esp	# tmp113,
	mov	esi, eax	# saved_stack.153_5, tmp113
	.loc 1 337 0
	movzx	eax, BYTE PTR -28[ebp]	# _7, len
	add	eax, 1	# _8,
	lea	edx, -1[eax]	# _9,
	mov	DWORD PTR -16[ebp], edx	# D.2458, _9
	mov	edx, eax	# _18, _8
	mov	eax, 16	# tmp128,
	sub	eax, 1	# tmp114,
	add	eax, edx	# tmp115, _18
	mov	ebx, 16	# tmp129,
	mov	edx, 0	# tmp118,
	div	ebx	# tmp129
	imul	eax, eax, 16	# tmp119, tmp117,
	sub	esp, eax	#, tmp119
	mov	eax, esp	# tmp120,
	add	eax, 0	# tmp121,
	mov	DWORD PTR -20[ebp], eax	# buf.149, tmp121
.LBB25:
	.loc 1 338 0
	mov	BYTE PTR -9[ebp], 0	# i,
	jmp	.L151	#
.L152:
	.loc 1 338 0 is_stmt 0 discriminator 3
	movzx	eax, BYTE PTR -9[ebp]	# _22, i
	mov	edx, DWORD PTR -20[ebp]	# tmp122, buf.149
	movzx	ecx, BYTE PTR -32[ebp]	# tmp123, space
	mov	BYTE PTR [edx+eax], cl	# *buf.149_20, tmp123
	movzx	eax, BYTE PTR -9[ebp]	# i.150_25, i
	add	eax, 1	# tmp124,
	mov	BYTE PTR -9[ebp], al	# i, tmp124
.L151:
	.loc 1 338 0 discriminator 1
	movzx	eax, BYTE PTR -9[ebp]	# tmp125, i
	cmp	al, BYTE PTR -28[ebp]	# tmp125, len
	jb	.L152	#,
.LBE25:
	.loc 1 339 0 is_stmt 1
	sub	esp, 12	#,
	push	DWORD PTR 8[ebp]	# val
	call	lenD	#
	add	esp, 16	#,
	mov	BYTE PTR -21[ebp], al	# size, tmp126
	.loc 1 340 0
	movzx	eax, BYTE PTR -21[ebp]	# _30, size
	mov	edx, DWORD PTR -20[ebp]	# buf.151_31, buf.149
	movzx	ebx, BYTE PTR -28[ebp]	# _32, len
	movzx	ecx, BYTE PTR -21[ebp]	# _33, size
	sub	ebx, ecx	# _32, _33
	mov	ecx, ebx	# _34, _32
	add	edx, ecx	# _36, _35
	sub	esp, 4	#,
	push	eax	# _30
	push	edx	# _36
	push	DWORD PTR 8[ebp]	# val
	call	strD	#
	add	esp, 16	#,
	.loc 1 341 0
	movzx	eax, BYTE PTR -28[ebp]	# _38, len
	mov	edx, DWORD PTR -20[ebp]	# tmp127, buf.149
	mov	BYTE PTR [edx+eax], 0	# *buf.149_20,
	.loc 1 342 0
	mov	eax, DWORD PTR -20[ebp]	# buf.152_40, buf.149
	sub	esp, 12	#,
	push	eax	# buf.152_40
	call	kprintf	#
	add	esp, 16	#,
	mov	esp, esi	#, saved_stack.153_5
	.loc 1 343 0
	nop
	lea	esp, -8[ebp]	#,
	pop	ebx	#
	.cfi_restore 3
	pop	esi	#
	.cfi_restore 6
	pop	ebp	#
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE13:
	.size	printDfs, .-printDfs
	.globl	printDf
	.type	printDf, @function
printDf:
.LFB14:
	.loc 1 345 0
	.cfi_startproc
	push	ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp	#,
	.cfi_def_cfa_register 5
	push	ebx	#
	sub	esp, 36	#,
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.ax	#
	add	eax, OFFSET FLAT:_GLOBAL_OFFSET_TABLE_	# tmp87,
	mov	eax, DWORD PTR 12[ebp]	# tmp104, len
	mov	BYTE PTR -28[ebp], al	# len, tmp104
	.loc 1 345 0
	mov	eax, esp	# tmp105,
	mov	ebx, eax	# saved_stack.157_3, tmp105
	.loc 1 346 0
	movzx	eax, BYTE PTR -28[ebp]	# _5, len
	add	eax, 1	# _6,
	lea	edx, -1[eax]	# _7,
	mov	DWORD PTR -12[ebp], edx	# D.2483, _7
	mov	edx, eax	# _16, _6
	mov	eax, 16	# tmp115,
	sub	eax, 1	# tmp106,
	add	eax, edx	# tmp107, _16
	mov	ecx, 16	# tmp116,
	mov	edx, 0	# tmp110,
	div	ecx	# tmp116
	imul	eax, eax, 16	# tmp111, tmp109,
	sub	esp, eax	#, tmp111
	mov	eax, esp	# tmp112,
	add	eax, 0	# tmp113,
	mov	DWORD PTR -16[ebp], eax	# buf.154, tmp113
	.loc 1 347 0
	movzx	edx, BYTE PTR -28[ebp]	# _19, len
	mov	eax, DWORD PTR -16[ebp]	# buf.155_20, buf.154
	sub	esp, 4	#,
	push	edx	# _19
	push	eax	# buf.155_20
	push	DWORD PTR 8[ebp]	# val
	call	strD	#
	add	esp, 16	#,
	.loc 1 348 0
	movzx	eax, BYTE PTR -28[ebp]	# _23, len
	mov	edx, DWORD PTR -16[ebp]	# tmp114, buf.154
	mov	BYTE PTR [edx+eax], 0	# *buf.154_18,
	.loc 1 349 0
	mov	eax, DWORD PTR -16[ebp]	# buf.156_25, buf.154
	sub	esp, 12	#,
	push	eax	# buf.156_25
	call	kprintf	#
	add	esp, 16	#,
	mov	esp, ebx	#, saved_stack.157_3
	.loc 1 350 0
	nop
	mov	ebx, DWORD PTR -4[ebp]	#,
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE14:
	.size	printDf, .-printDf
	.globl	printD
	.type	printD, @function
printD:
.LFB15:
	.loc 1 352 0
	.cfi_startproc
	push	ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp	#,
	.cfi_def_cfa_register 5
	push	ebx	#
	sub	esp, 20	#,
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.ax	#
	add	eax, OFFSET FLAT:_GLOBAL_OFFSET_TABLE_	# tmp87,
	.loc 1 352 0
	mov	eax, esp	# tmp104,
	mov	ebx, eax	# saved_stack.161_3, tmp104
	.loc 1 353 0
	push	DWORD PTR 8[ebp]	# val
	call	lenD	#
	add	esp, 4	#,
	mov	BYTE PTR -9[ebp], al	# len, tmp105
	.loc 1 354 0
	movzx	eax, BYTE PTR -9[ebp]	# _7, len
	add	eax, 1	# _8,
	lea	edx, -1[eax]	# _9,
	mov	DWORD PTR -16[ebp], edx	# D.2501, _9
	mov	edx, eax	# _18, _8
	mov	eax, 16	# tmp115,
	sub	eax, 1	# tmp106,
	add	eax, edx	# tmp107, _18
	mov	ecx, 16	# tmp116,
	mov	edx, 0	# tmp110,
	div	ecx	# tmp116
	imul	eax, eax, 16	# tmp111, tmp109,
	sub	esp, eax	#, tmp111
	mov	eax, esp	# tmp112,
	add	eax, 0	# tmp113,
	mov	DWORD PTR -20[ebp], eax	# buf.158, tmp113
	.loc 1 355 0
	movzx	edx, BYTE PTR -9[ebp]	# _21, len
	mov	eax, DWORD PTR -20[ebp]	# buf.159_22, buf.158
	sub	esp, 4	#,
	push	edx	# _21
	push	eax	# buf.159_22
	push	DWORD PTR 8[ebp]	# val
	call	strD	#
	add	esp, 16	#,
	.loc 1 356 0
	movzx	eax, BYTE PTR -9[ebp]	# _24, len
	mov	edx, DWORD PTR -20[ebp]	# tmp114, buf.158
	mov	BYTE PTR [edx+eax], 0	# *buf.158_20,
	.loc 1 357 0
	mov	eax, DWORD PTR -20[ebp]	# buf.160_26, buf.158
	sub	esp, 12	#,
	push	eax	# buf.160_26
	call	kprintf	#
	add	esp, 16	#,
	mov	esp, ebx	#, saved_stack.161_3
	.loc 1 358 0
	nop
	mov	ebx, DWORD PTR -4[ebp]	#,
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE15:
	.size	printD, .-printD
	.globl	lenO
	.type	lenO, @function
lenO:
.LFB16:
	.loc 1 360 0
	.cfi_startproc
	push	ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp	#,
	.cfi_def_cfa_register 5
	sub	esp, 16	#,
	call	__x86.get_pc_thunk.ax	#
	add	eax, OFFSET FLAT:_GLOBAL_OFFSET_TABLE_	# tmp87,
	.loc 1 361 0
	mov	BYTE PTR -1[ebp], 0	# len,
	.loc 1 362 0
	jmp	.L156	#
.L157:
	.loc 1 363 0
	movzx	eax, BYTE PTR -1[ebp]	# len.162_6, len
	add	eax, 1	# tmp91,
	mov	BYTE PTR -1[ebp], al	# len, tmp91
	.loc 1 364 0
	mov	eax, DWORD PTR 8[ebp]	# tmp93, val
	shr	eax, 3	# tmp92,
	mov	DWORD PTR 8[ebp], eax	# val, tmp92
.L156:
	.loc 1 362 0
	cmp	DWORD PTR 8[ebp], 0	# val,
	jne	.L157	#,
	.loc 1 366 0
	cmp	BYTE PTR -1[ebp], 0	# len,
	jne	.L158	#,
	.loc 1 366 0 is_stmt 0 discriminator 1
	mov	eax, 1	# _3,
	jmp	.L159	#
.L158:
	.loc 1 367 0 is_stmt 1
	movzx	eax, BYTE PTR -1[ebp]	# _3, len
.L159:
	.loc 1 368 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE16:
	.size	lenO, .-lenO
	.globl	strO
	.type	strO, @function
strO:
.LFB17:
	.loc 1 370 0
	.cfi_startproc
	push	ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp	#,
	.cfi_def_cfa_register 5
	sub	esp, 4	#,
	call	__x86.get_pc_thunk.ax	#
	add	eax, OFFSET FLAT:_GLOBAL_OFFSET_TABLE_	# tmp87,
	mov	eax, DWORD PTR 16[ebp]	# tmp96, len
	mov	BYTE PTR -4[ebp], al	# len, tmp96
	.loc 1 371 0
	jmp	.L161	#
.L162:
	.loc 1 372 0
	movzx	eax, BYTE PTR -4[ebp]	# _7, len
	lea	edx, -1[eax]	# _8,
	mov	eax, DWORD PTR 12[ebp]	# tmp97, buf
	add	eax, edx	# _10, _8
	mov	edx, DWORD PTR 8[ebp]	# tmp98, val
	and	edx, 7	# _12,
	add	edx, 48	# _13,
	mov	BYTE PTR [eax], dl	# *_10, _14
	.loc 1 373 0
	mov	eax, DWORD PTR 8[ebp]	# tmp100, val
	shr	eax, 3	# tmp99,
	mov	DWORD PTR 8[ebp], eax	# val, tmp99
	.loc 1 374 0
	movzx	eax, BYTE PTR -4[ebp]	# len.163_17, len
	sub	eax, 1	# tmp101,
	mov	BYTE PTR -4[ebp], al	# len, tmp101
.L161:
	.loc 1 371 0
	cmp	BYTE PTR -4[ebp], 0	# len,
	jne	.L162	#,
	.loc 1 376 0
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE17:
	.size	strO, .-strO
	.globl	printOfs
	.type	printOfs, @function
printOfs:
.LFB18:
	.loc 1 378 0
	.cfi_startproc
	push	ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp	#,
	.cfi_def_cfa_register 5
	push	esi	#
	push	ebx	#
	sub	esp, 32	#,
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	call	__x86.get_pc_thunk.ax	#
	add	eax, OFFSET FLAT:_GLOBAL_OFFSET_TABLE_	# tmp87,
	mov	edx, DWORD PTR 12[ebp]	# tmp111, len
	mov	eax, DWORD PTR 16[ebp]	# tmp112, space
	mov	BYTE PTR -28[ebp], dl	# len, tmp111
	mov	BYTE PTR -32[ebp], al	# space, tmp112
	.loc 1 378 0
	mov	eax, esp	# tmp113,
	mov	esi, eax	# saved_stack.168_5, tmp113
	.loc 1 379 0
	movzx	eax, BYTE PTR -28[ebp]	# _7, len
	add	eax, 1	# _8,
	lea	edx, -1[eax]	# _9,
	mov	DWORD PTR -16[ebp], edx	# D.2532, _9
	mov	edx, eax	# _18, _8
	mov	eax, 16	# tmp128,
	sub	eax, 1	# tmp114,
	add	eax, edx	# tmp115, _18
	mov	ebx, 16	# tmp129,
	mov	edx, 0	# tmp118,
	div	ebx	# tmp129
	imul	eax, eax, 16	# tmp119, tmp117,
	sub	esp, eax	#, tmp119
	mov	eax, esp	# tmp120,
	add	eax, 0	# tmp121,
	mov	DWORD PTR -20[ebp], eax	# buf.164, tmp121
.LBB26:
	.loc 1 380 0
	mov	BYTE PTR -9[ebp], 0	# i,
	jmp	.L164	#
.L165:
	.loc 1 380 0 is_stmt 0 discriminator 3
	movzx	eax, BYTE PTR -9[ebp]	# _22, i
	mov	edx, DWORD PTR -20[ebp]	# tmp122, buf.164
	movzx	ecx, BYTE PTR -32[ebp]	# tmp123, space
	mov	BYTE PTR [edx+eax], cl	# *buf.164_20, tmp123
	movzx	eax, BYTE PTR -9[ebp]	# i.165_25, i
	add	eax, 1	# tmp124,
	mov	BYTE PTR -9[ebp], al	# i, tmp124
.L164:
	.loc 1 380 0 discriminator 1
	movzx	eax, BYTE PTR -9[ebp]	# tmp125, i
	cmp	al, BYTE PTR -28[ebp]	# tmp125, len
	jb	.L165	#,
.LBE26:
	.loc 1 381 0 is_stmt 1
	sub	esp, 12	#,
	push	DWORD PTR 8[ebp]	# val
	call	lenO	#
	add	esp, 16	#,
	mov	BYTE PTR -21[ebp], al	# size, tmp126
	.loc 1 382 0
	movzx	eax, BYTE PTR -21[ebp]	# _30, size
	mov	edx, DWORD PTR -20[ebp]	# buf.166_31, buf.164
	movzx	ebx, BYTE PTR -28[ebp]	# _32, len
	movzx	ecx, BYTE PTR -21[ebp]	# _33, size
	sub	ebx, ecx	# _32, _33
	mov	ecx, ebx	# _34, _32
	add	edx, ecx	# _36, _35
	sub	esp, 4	#,
	push	eax	# _30
	push	edx	# _36
	push	DWORD PTR 8[ebp]	# val
	call	strO	#
	add	esp, 16	#,
	.loc 1 383 0
	movzx	eax, BYTE PTR -28[ebp]	# _38, len
	mov	edx, DWORD PTR -20[ebp]	# tmp127, buf.164
	mov	BYTE PTR [edx+eax], 0	# *buf.164_20,
	.loc 1 384 0
	mov	eax, DWORD PTR -20[ebp]	# buf.167_40, buf.164
	sub	esp, 12	#,
	push	eax	# buf.167_40
	call	kprintf	#
	add	esp, 16	#,
	mov	esp, esi	#, saved_stack.168_5
	.loc 1 385 0
	nop
	lea	esp, -8[ebp]	#,
	pop	ebx	#
	.cfi_restore 3
	pop	esi	#
	.cfi_restore 6
	pop	ebp	#
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE18:
	.size	printOfs, .-printOfs
	.globl	printOf
	.type	printOf, @function
printOf:
.LFB19:
	.loc 1 387 0
	.cfi_startproc
	push	ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp	#,
	.cfi_def_cfa_register 5
	push	ebx	#
	sub	esp, 36	#,
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.ax	#
	add	eax, OFFSET FLAT:_GLOBAL_OFFSET_TABLE_	# tmp87,
	mov	eax, DWORD PTR 12[ebp]	# tmp104, len
	mov	BYTE PTR -28[ebp], al	# len, tmp104
	.loc 1 387 0
	mov	eax, esp	# tmp105,
	mov	ebx, eax	# saved_stack.172_3, tmp105
	.loc 1 388 0
	movzx	eax, BYTE PTR -28[ebp]	# _5, len
	add	eax, 1	# _6,
	lea	edx, -1[eax]	# _7,
	mov	DWORD PTR -12[ebp], edx	# D.2557, _7
	mov	edx, eax	# _16, _6
	mov	eax, 16	# tmp115,
	sub	eax, 1	# tmp106,
	add	eax, edx	# tmp107, _16
	mov	ecx, 16	# tmp116,
	mov	edx, 0	# tmp110,
	div	ecx	# tmp116
	imul	eax, eax, 16	# tmp111, tmp109,
	sub	esp, eax	#, tmp111
	mov	eax, esp	# tmp112,
	add	eax, 0	# tmp113,
	mov	DWORD PTR -16[ebp], eax	# buf.169, tmp113
	.loc 1 389 0
	movzx	edx, BYTE PTR -28[ebp]	# _19, len
	mov	eax, DWORD PTR -16[ebp]	# buf.170_20, buf.169
	sub	esp, 4	#,
	push	edx	# _19
	push	eax	# buf.170_20
	push	DWORD PTR 8[ebp]	# val
	call	strO	#
	add	esp, 16	#,
	.loc 1 390 0
	movzx	eax, BYTE PTR -28[ebp]	# _23, len
	mov	edx, DWORD PTR -16[ebp]	# tmp114, buf.169
	mov	BYTE PTR [edx+eax], 0	# *buf.169_18,
	.loc 1 391 0
	mov	eax, DWORD PTR -16[ebp]	# buf.171_25, buf.169
	sub	esp, 12	#,
	push	eax	# buf.171_25
	call	kprintf	#
	add	esp, 16	#,
	mov	esp, ebx	#, saved_stack.172_3
	.loc 1 392 0
	nop
	mov	ebx, DWORD PTR -4[ebp]	#,
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE19:
	.size	printOf, .-printOf
	.globl	printO
	.type	printO, @function
printO:
.LFB20:
	.loc 1 394 0
	.cfi_startproc
	push	ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp	#,
	.cfi_def_cfa_register 5
	push	ebx	#
	sub	esp, 20	#,
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.ax	#
	add	eax, OFFSET FLAT:_GLOBAL_OFFSET_TABLE_	# tmp87,
	.loc 1 394 0
	mov	eax, esp	# tmp104,
	mov	ebx, eax	# saved_stack.176_3, tmp104
	.loc 1 395 0
	push	DWORD PTR 8[ebp]	# val
	call	lenO	#
	add	esp, 4	#,
	mov	BYTE PTR -9[ebp], al	# len, tmp105
	.loc 1 396 0
	movzx	eax, BYTE PTR -9[ebp]	# _7, len
	add	eax, 1	# _8,
	lea	edx, -1[eax]	# _9,
	mov	DWORD PTR -16[ebp], edx	# D.2575, _9
	mov	edx, eax	# _18, _8
	mov	eax, 16	# tmp115,
	sub	eax, 1	# tmp106,
	add	eax, edx	# tmp107, _18
	mov	ecx, 16	# tmp116,
	mov	edx, 0	# tmp110,
	div	ecx	# tmp116
	imul	eax, eax, 16	# tmp111, tmp109,
	sub	esp, eax	#, tmp111
	mov	eax, esp	# tmp112,
	add	eax, 0	# tmp113,
	mov	DWORD PTR -20[ebp], eax	# buf.173, tmp113
	.loc 1 397 0
	movzx	edx, BYTE PTR -9[ebp]	# _21, len
	mov	eax, DWORD PTR -20[ebp]	# buf.174_22, buf.173
	sub	esp, 4	#,
	push	edx	# _21
	push	eax	# buf.174_22
	push	DWORD PTR 8[ebp]	# val
	call	strO	#
	add	esp, 16	#,
	.loc 1 398 0
	movzx	eax, BYTE PTR -9[ebp]	# _24, len
	mov	edx, DWORD PTR -20[ebp]	# tmp114, buf.173
	mov	BYTE PTR [edx+eax], 0	# *buf.173_20,
	.loc 1 399 0
	mov	eax, DWORD PTR -20[ebp]	# buf.175_26, buf.173
	sub	esp, 12	#,
	push	eax	# buf.175_26
	call	kprintf	#
	add	esp, 16	#,
	mov	esp, ebx	#, saved_stack.176_3
	.loc 1 400 0
	nop
	mov	ebx, DWORD PTR -4[ebp]	#,
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE20:
	.size	printO, .-printO
	.globl	lenB
	.type	lenB, @function
lenB:
.LFB21:
	.loc 1 402 0
	.cfi_startproc
	push	ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp	#,
	.cfi_def_cfa_register 5
	sub	esp, 16	#,
	call	__x86.get_pc_thunk.ax	#
	add	eax, OFFSET FLAT:_GLOBAL_OFFSET_TABLE_	# tmp87,
	.loc 1 403 0
	mov	BYTE PTR -1[ebp], 0	# len,
	.loc 1 404 0
	jmp	.L169	#
.L170:
	.loc 1 405 0
	movzx	eax, BYTE PTR -1[ebp]	# len.177_6, len
	add	eax, 1	# tmp91,
	mov	BYTE PTR -1[ebp], al	# len, tmp91
	.loc 1 406 0
	mov	eax, DWORD PTR 8[ebp]	# tmp93, val
	shr	eax	# tmp92
	mov	DWORD PTR 8[ebp], eax	# val, tmp92
.L169:
	.loc 1 404 0
	cmp	DWORD PTR 8[ebp], 0	# val,
	jne	.L170	#,
	.loc 1 408 0
	cmp	BYTE PTR -1[ebp], 0	# len,
	jne	.L171	#,
	.loc 1 408 0 is_stmt 0 discriminator 1
	mov	eax, 1	# _3,
	jmp	.L172	#
.L171:
	.loc 1 409 0 is_stmt 1
	movzx	eax, BYTE PTR -1[ebp]	# _3, len
.L172:
	.loc 1 410 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE21:
	.size	lenB, .-lenB
	.globl	strB
	.type	strB, @function
strB:
.LFB22:
	.loc 1 412 0
	.cfi_startproc
	push	ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp	#,
	.cfi_def_cfa_register 5
	sub	esp, 4	#,
	call	__x86.get_pc_thunk.ax	#
	add	eax, OFFSET FLAT:_GLOBAL_OFFSET_TABLE_	# tmp87,
	mov	eax, DWORD PTR 16[ebp]	# tmp96, len
	mov	BYTE PTR -4[ebp], al	# len, tmp96
	.loc 1 413 0
	jmp	.L174	#
.L175:
	.loc 1 414 0
	movzx	eax, BYTE PTR -4[ebp]	# _7, len
	lea	edx, -1[eax]	# _8,
	mov	eax, DWORD PTR 12[ebp]	# tmp97, buf
	add	eax, edx	# _10, _8
	mov	edx, DWORD PTR 8[ebp]	# tmp98, val
	and	edx, 1	# _12,
	add	edx, 48	# _13,
	mov	BYTE PTR [eax], dl	# *_10, _14
	.loc 1 415 0
	mov	eax, DWORD PTR 8[ebp]	# tmp100, val
	shr	eax	# tmp99
	mov	DWORD PTR 8[ebp], eax	# val, tmp99
	.loc 1 416 0
	movzx	eax, BYTE PTR -4[ebp]	# len.178_17, len
	sub	eax, 1	# tmp101,
	mov	BYTE PTR -4[ebp], al	# len, tmp101
.L174:
	.loc 1 413 0
	cmp	BYTE PTR -4[ebp], 0	# len,
	jne	.L175	#,
	.loc 1 418 0
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE22:
	.size	strB, .-strB
	.globl	printBfs
	.type	printBfs, @function
printBfs:
.LFB23:
	.loc 1 420 0
	.cfi_startproc
	push	ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp	#,
	.cfi_def_cfa_register 5
	push	esi	#
	push	ebx	#
	sub	esp, 32	#,
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	call	__x86.get_pc_thunk.ax	#
	add	eax, OFFSET FLAT:_GLOBAL_OFFSET_TABLE_	# tmp87,
	mov	edx, DWORD PTR 12[ebp]	# tmp111, len
	mov	eax, DWORD PTR 16[ebp]	# tmp112, space
	mov	BYTE PTR -28[ebp], dl	# len, tmp111
	mov	BYTE PTR -32[ebp], al	# space, tmp112
	.loc 1 420 0
	mov	eax, esp	# tmp113,
	mov	esi, eax	# saved_stack.183_5, tmp113
	.loc 1 421 0
	movzx	eax, BYTE PTR -28[ebp]	# _7, len
	add	eax, 1	# _8,
	lea	edx, -1[eax]	# _9,
	mov	DWORD PTR -16[ebp], edx	# D.2606, _9
	mov	edx, eax	# _18, _8
	mov	eax, 16	# tmp128,
	sub	eax, 1	# tmp114,
	add	eax, edx	# tmp115, _18
	mov	ebx, 16	# tmp129,
	mov	edx, 0	# tmp118,
	div	ebx	# tmp129
	imul	eax, eax, 16	# tmp119, tmp117,
	sub	esp, eax	#, tmp119
	mov	eax, esp	# tmp120,
	add	eax, 0	# tmp121,
	mov	DWORD PTR -20[ebp], eax	# buf.179, tmp121
.LBB27:
	.loc 1 422 0
	mov	BYTE PTR -9[ebp], 0	# i,
	jmp	.L177	#
.L178:
	.loc 1 422 0 is_stmt 0 discriminator 3
	movzx	eax, BYTE PTR -9[ebp]	# _22, i
	mov	edx, DWORD PTR -20[ebp]	# tmp122, buf.179
	movzx	ecx, BYTE PTR -32[ebp]	# tmp123, space
	mov	BYTE PTR [edx+eax], cl	# *buf.179_20, tmp123
	movzx	eax, BYTE PTR -9[ebp]	# i.180_25, i
	add	eax, 1	# tmp124,
	mov	BYTE PTR -9[ebp], al	# i, tmp124
.L177:
	.loc 1 422 0 discriminator 1
	movzx	eax, BYTE PTR -9[ebp]	# tmp125, i
	cmp	al, BYTE PTR -28[ebp]	# tmp125, len
	jb	.L178	#,
.LBE27:
	.loc 1 423 0 is_stmt 1
	sub	esp, 12	#,
	push	DWORD PTR 8[ebp]	# val
	call	lenB	#
	add	esp, 16	#,
	mov	BYTE PTR -21[ebp], al	# size, tmp126
	.loc 1 424 0
	movzx	eax, BYTE PTR -21[ebp]	# _30, size
	mov	edx, DWORD PTR -20[ebp]	# buf.181_31, buf.179
	movzx	ebx, BYTE PTR -28[ebp]	# _32, len
	movzx	ecx, BYTE PTR -21[ebp]	# _33, size
	sub	ebx, ecx	# _32, _33
	mov	ecx, ebx	# _34, _32
	add	edx, ecx	# _36, _35
	sub	esp, 4	#,
	push	eax	# _30
	push	edx	# _36
	push	DWORD PTR 8[ebp]	# val
	call	strB	#
	add	esp, 16	#,
	.loc 1 425 0
	movzx	eax, BYTE PTR -28[ebp]	# _38, len
	mov	edx, DWORD PTR -20[ebp]	# tmp127, buf.179
	mov	BYTE PTR [edx+eax], 0	# *buf.179_20,
	.loc 1 426 0
	mov	eax, DWORD PTR -20[ebp]	# buf.182_40, buf.179
	sub	esp, 12	#,
	push	eax	# buf.182_40
	call	kprintf	#
	add	esp, 16	#,
	mov	esp, esi	#, saved_stack.183_5
	.loc 1 427 0
	nop
	lea	esp, -8[ebp]	#,
	pop	ebx	#
	.cfi_restore 3
	pop	esi	#
	.cfi_restore 6
	pop	ebp	#
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE23:
	.size	printBfs, .-printBfs
	.globl	printBf
	.type	printBf, @function
printBf:
.LFB24:
	.loc 1 429 0
	.cfi_startproc
	push	ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp	#,
	.cfi_def_cfa_register 5
	push	ebx	#
	sub	esp, 36	#,
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.ax	#
	add	eax, OFFSET FLAT:_GLOBAL_OFFSET_TABLE_	# tmp87,
	mov	eax, DWORD PTR 12[ebp]	# tmp104, len
	mov	BYTE PTR -28[ebp], al	# len, tmp104
	.loc 1 429 0
	mov	eax, esp	# tmp105,
	mov	ebx, eax	# saved_stack.187_3, tmp105
	.loc 1 430 0
	movzx	eax, BYTE PTR -28[ebp]	# _5, len
	add	eax, 1	# _6,
	lea	edx, -1[eax]	# _7,
	mov	DWORD PTR -12[ebp], edx	# D.2631, _7
	mov	edx, eax	# _16, _6
	mov	eax, 16	# tmp115,
	sub	eax, 1	# tmp106,
	add	eax, edx	# tmp107, _16
	mov	ecx, 16	# tmp116,
	mov	edx, 0	# tmp110,
	div	ecx	# tmp116
	imul	eax, eax, 16	# tmp111, tmp109,
	sub	esp, eax	#, tmp111
	mov	eax, esp	# tmp112,
	add	eax, 0	# tmp113,
	mov	DWORD PTR -16[ebp], eax	# buf.184, tmp113
	.loc 1 431 0
	movzx	edx, BYTE PTR -28[ebp]	# _19, len
	mov	eax, DWORD PTR -16[ebp]	# buf.185_20, buf.184
	sub	esp, 4	#,
	push	edx	# _19
	push	eax	# buf.185_20
	push	DWORD PTR 8[ebp]	# val
	call	strB	#
	add	esp, 16	#,
	.loc 1 432 0
	movzx	eax, BYTE PTR -28[ebp]	# _23, len
	mov	edx, DWORD PTR -16[ebp]	# tmp114, buf.184
	mov	BYTE PTR [edx+eax], 0	# *buf.184_18,
	.loc 1 433 0
	mov	eax, DWORD PTR -16[ebp]	# buf.186_25, buf.184
	sub	esp, 12	#,
	push	eax	# buf.186_25
	call	kprintf	#
	add	esp, 16	#,
	mov	esp, ebx	#, saved_stack.187_3
	.loc 1 434 0
	nop
	mov	ebx, DWORD PTR -4[ebp]	#,
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE24:
	.size	printBf, .-printBf
	.globl	printB
	.type	printB, @function
printB:
.LFB25:
	.loc 1 436 0
	.cfi_startproc
	push	ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp	#,
	.cfi_def_cfa_register 5
	push	ebx	#
	sub	esp, 20	#,
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.ax	#
	add	eax, OFFSET FLAT:_GLOBAL_OFFSET_TABLE_	# tmp87,
	.loc 1 436 0
	mov	eax, esp	# tmp104,
	mov	ebx, eax	# saved_stack.191_3, tmp104
	.loc 1 437 0
	push	DWORD PTR 8[ebp]	# val
	call	lenB	#
	add	esp, 4	#,
	mov	BYTE PTR -9[ebp], al	# len, tmp105
	.loc 1 438 0
	movzx	eax, BYTE PTR -9[ebp]	# _7, len
	add	eax, 1	# _8,
	lea	edx, -1[eax]	# _9,
	mov	DWORD PTR -16[ebp], edx	# D.2649, _9
	mov	edx, eax	# _18, _8
	mov	eax, 16	# tmp115,
	sub	eax, 1	# tmp106,
	add	eax, edx	# tmp107, _18
	mov	ecx, 16	# tmp116,
	mov	edx, 0	# tmp110,
	div	ecx	# tmp116
	imul	eax, eax, 16	# tmp111, tmp109,
	sub	esp, eax	#, tmp111
	mov	eax, esp	# tmp112,
	add	eax, 0	# tmp113,
	mov	DWORD PTR -20[ebp], eax	# buf.188, tmp113
	.loc 1 439 0
	movzx	edx, BYTE PTR -9[ebp]	# _21, len
	mov	eax, DWORD PTR -20[ebp]	# buf.189_22, buf.188
	sub	esp, 4	#,
	push	edx	# _21
	push	eax	# buf.189_22
	push	DWORD PTR 8[ebp]	# val
	call	strB	#
	add	esp, 16	#,
	.loc 1 440 0
	movzx	eax, BYTE PTR -9[ebp]	# _24, len
	mov	edx, DWORD PTR -20[ebp]	# tmp114, buf.188
	mov	BYTE PTR [edx+eax], 0	# *buf.188_20,
	.loc 1 441 0
	mov	eax, DWORD PTR -20[ebp]	# buf.190_26, buf.188
	sub	esp, 12	#,
	push	eax	# buf.190_26
	call	kprintf	#
	add	esp, 16	#,
	mov	esp, ebx	#, saved_stack.191_3
	.loc 1 442 0
	nop
	mov	ebx, DWORD PTR -4[ebp]	#,
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE25:
	.size	printB, .-printB
	.globl	valH
	.type	valH, @function
valH:
.LFB26:
	.loc 1 446 0
	.cfi_startproc
	push	ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp	#,
	.cfi_def_cfa_register 5
	sub	esp, 16	#,
	call	__x86.get_pc_thunk.ax	#
	add	eax, OFFSET FLAT:_GLOBAL_OFFSET_TABLE_	# tmp87,
	.loc 1 447 0
	mov	BYTE PTR -1[ebp], 0	# i,
	.loc 1 448 0
	mov	BYTE PTR -9[ebp], 32	# a,
	.loc 1 449 0
	mov	DWORD PTR -8[ebp], 0	# val,
	.loc 1 450 0
	jmp	.L182	#
.L190:
	.loc 1 451 0
	movzx	ecx, BYTE PTR -1[ebp]	# _13, i
	mov	edx, DWORD PTR 8[ebp]	# tmp103, str
	add	edx, ecx	# _14, _13
	movzx	edx, BYTE PTR [edx]	# tmp104, *_14
	mov	BYTE PTR -9[ebp], dl	# a, tmp104
	.loc 1 452 0
	movsx	edx, BYTE PTR -9[ebp]	# _16, a
	sub	edx, 48	# tmp105,
	cmp	edx, 54	# tmp105,
	ja	.L183	#,
	sal	edx, 2	# tmp106,
	mov	edx, DWORD PTR .L185@GOTOFF[edx+eax]	# tmp107,
	add	edx, eax	# tmp108, tmp87
	jmp	edx	# tmp108
	.section	.rodata
	.align 4
	.align 4
.L185:
	.long	.L184@GOTOFF
	.long	.L184@GOTOFF
	.long	.L184@GOTOFF
	.long	.L184@GOTOFF
	.long	.L184@GOTOFF
	.long	.L184@GOTOFF
	.long	.L184@GOTOFF
	.long	.L184@GOTOFF
	.long	.L184@GOTOFF
	.long	.L184@GOTOFF
	.long	.L183@GOTOFF
	.long	.L183@GOTOFF
	.long	.L183@GOTOFF
	.long	.L183@GOTOFF
	.long	.L183@GOTOFF
	.long	.L183@GOTOFF
	.long	.L183@GOTOFF
	.long	.L186@GOTOFF
	.long	.L186@GOTOFF
	.long	.L186@GOTOFF
	.long	.L186@GOTOFF
	.long	.L186@GOTOFF
	.long	.L186@GOTOFF
	.long	.L183@GOTOFF
	.long	.L183@GOTOFF
	.long	.L183@GOTOFF
	.long	.L183@GOTOFF
	.long	.L183@GOTOFF
	.long	.L183@GOTOFF
	.long	.L183@GOTOFF
	.long	.L183@GOTOFF
	.long	.L183@GOTOFF
	.long	.L183@GOTOFF
	.long	.L183@GOTOFF
	.long	.L183@GOTOFF
	.long	.L183@GOTOFF
	.long	.L183@GOTOFF
	.long	.L183@GOTOFF
	.long	.L183@GOTOFF
	.long	.L183@GOTOFF
	.long	.L183@GOTOFF
	.long	.L183@GOTOFF
	.long	.L183@GOTOFF
	.long	.L183@GOTOFF
	.long	.L183@GOTOFF
	.long	.L183@GOTOFF
	.long	.L183@GOTOFF
	.long	.L183@GOTOFF
	.long	.L183@GOTOFF
	.long	.L187@GOTOFF
	.long	.L187@GOTOFF
	.long	.L187@GOTOFF
	.long	.L187@GOTOFF
	.long	.L187@GOTOFF
	.long	.L187@GOTOFF
	.text
.L184:
	.loc 1 454 0
	sal	DWORD PTR -8[ebp], 4	# val,
	.loc 1 455 0
	movsx	ecx, BYTE PTR -9[ebp]	# _18, a
	mov	edx, DWORD PTR -8[ebp]	# tmp109, val
	add	edx, ecx	# _19, _18
	sub	edx, 48	# tmp110,
	mov	DWORD PTR -8[ebp], edx	# val, tmp110
	.loc 1 456 0
	jmp	.L188	#
.L187:
	.loc 1 458 0
	sal	DWORD PTR -8[ebp], 4	# val,
	.loc 1 459 0
	movsx	ecx, BYTE PTR -9[ebp]	# _22, a
	mov	edx, DWORD PTR -8[ebp]	# tmp111, val
	add	edx, ecx	# _23, _22
	sub	edx, 87	# tmp112,
	mov	DWORD PTR -8[ebp], edx	# val, tmp112
	.loc 1 460 0
	jmp	.L188	#
.L186:
	.loc 1 462 0
	sal	DWORD PTR -8[ebp], 4	# val,
	.loc 1 463 0
	movsx	ecx, BYTE PTR -9[ebp]	# _26, a
	mov	edx, DWORD PTR -8[ebp]	# tmp113, val
	add	edx, ecx	# _27, _26
	sub	edx, 55	# tmp114,
	mov	DWORD PTR -8[ebp], edx	# val, tmp114
	.loc 1 464 0
	jmp	.L188	#
.L183:
	.loc 1 465 0
	mov	eax, DWORD PTR -8[ebp]	# _4, val
	jmp	.L189	#
.L188:
	.loc 1 467 0
	movzx	edx, BYTE PTR -1[ebp]	# i.192_29, i
	add	edx, 1	# tmp115,
	mov	BYTE PTR -1[ebp], dl	# i, tmp115
.L182:
	.loc 1 450 0
	movzx	ecx, BYTE PTR -1[ebp]	# _8, i
	mov	edx, DWORD PTR 8[ebp]	# tmp116, str
	add	edx, ecx	# _10, _8
	movzx	edx, BYTE PTR [edx]	# _12, *_10
	test	dl, dl	# _12
	jne	.L190	#,
	.loc 1 469 0
	mov	eax, DWORD PTR -8[ebp]	# _4, val
.L189:
	.loc 1 470 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE26:
	.size	valH, .-valH
	.globl	valD
	.type	valD, @function
valD:
.LFB27:
	.loc 1 472 0
	.cfi_startproc
	push	ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp	#,
	.cfi_def_cfa_register 5
	sub	esp, 16	#,
	call	__x86.get_pc_thunk.ax	#
	add	eax, OFFSET FLAT:_GLOBAL_OFFSET_TABLE_	# tmp87,
	.loc 1 473 0
	mov	BYTE PTR -1[ebp], 0	# i,
	.loc 1 474 0
	mov	BYTE PTR -9[ebp], 32	# a,
	.loc 1 475 0
	mov	DWORD PTR -8[ebp], 0	# val,
	.loc 1 476 0
	jmp	.L192	#
.L197:
	.loc 1 477 0
	movzx	edx, BYTE PTR -1[ebp]	# _12, i
	mov	eax, DWORD PTR 8[ebp]	# tmp99, str
	add	eax, edx	# _13, _12
	movzx	eax, BYTE PTR [eax]	# tmp100, *_13
	mov	BYTE PTR -9[ebp], al	# a, tmp100
	.loc 1 478 0
	movsx	eax, BYTE PTR -9[ebp]	# _15, a
	sub	eax, 48	# tmp101,
	cmp	eax, 9	# tmp101,
	ja	.L193	#,
	.loc 1 480 0
	mov	edx, DWORD PTR -8[ebp]	# tmp102, val
	mov	eax, edx	# tmp103, tmp102
	sal	eax, 2	# tmp103,
	add	eax, edx	# tmp103, tmp102
	add	eax, eax	# tmp104
	mov	DWORD PTR -8[ebp], eax	# val, tmp103
	.loc 1 481 0
	movsx	edx, BYTE PTR -9[ebp]	# _17, a
	mov	eax, DWORD PTR -8[ebp]	# tmp105, val
	add	eax, edx	# _18, _17
	sub	eax, 48	# tmp106,
	mov	DWORD PTR -8[ebp], eax	# val, tmp106
	.loc 1 482 0
	jmp	.L198	#
.L193:
	.loc 1 483 0
	mov	eax, DWORD PTR -8[ebp]	# _3, val
	jmp	.L196	#
.L198:
	.loc 1 485 0
	movzx	eax, BYTE PTR -1[ebp]	# i.193_20, i
	add	eax, 1	# tmp107,
	mov	BYTE PTR -1[ebp], al	# i, tmp107
.L192:
	.loc 1 476 0
	movzx	edx, BYTE PTR -1[ebp]	# _7, i
	mov	eax, DWORD PTR 8[ebp]	# tmp108, str
	add	eax, edx	# _9, _7
	movzx	eax, BYTE PTR [eax]	# _11, *_9
	test	al, al	# _11
	jne	.L197	#,
	.loc 1 487 0
	mov	eax, DWORD PTR -8[ebp]	# _3, val
.L196:
	.loc 1 488 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE27:
	.size	valD, .-valD
	.globl	valO
	.type	valO, @function
valO:
.LFB28:
	.loc 1 490 0
	.cfi_startproc
	push	ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp	#,
	.cfi_def_cfa_register 5
	sub	esp, 16	#,
	call	__x86.get_pc_thunk.ax	#
	add	eax, OFFSET FLAT:_GLOBAL_OFFSET_TABLE_	# tmp87,
	.loc 1 491 0
	mov	BYTE PTR -1[ebp], 0	# i,
	.loc 1 492 0
	mov	BYTE PTR -9[ebp], 32	# a,
	.loc 1 493 0
	mov	DWORD PTR -8[ebp], 0	# val,
	.loc 1 494 0
	jmp	.L200	#
.L205:
	.loc 1 495 0
	movzx	edx, BYTE PTR -1[ebp]	# _12, i
	mov	eax, DWORD PTR 8[ebp]	# tmp99, str
	add	eax, edx	# _13, _12
	movzx	eax, BYTE PTR [eax]	# tmp100, *_13
	mov	BYTE PTR -9[ebp], al	# a, tmp100
	.loc 1 496 0
	movsx	eax, BYTE PTR -9[ebp]	# _15, a
	sub	eax, 48	# tmp101,
	cmp	eax, 7	# tmp101,
	ja	.L201	#,
	.loc 1 498 0
	sal	DWORD PTR -8[ebp], 3	# val,
	.loc 1 499 0
	movsx	edx, BYTE PTR -9[ebp]	# _17, a
	mov	eax, DWORD PTR -8[ebp]	# tmp102, val
	add	eax, edx	# _18, _17
	sub	eax, 48	# tmp103,
	mov	DWORD PTR -8[ebp], eax	# val, tmp103
	.loc 1 500 0
	jmp	.L206	#
.L201:
	.loc 1 501 0
	mov	eax, DWORD PTR -8[ebp]	# _3, val
	jmp	.L204	#
.L206:
	.loc 1 503 0
	movzx	eax, BYTE PTR -1[ebp]	# i.194_20, i
	add	eax, 1	# tmp104,
	mov	BYTE PTR -1[ebp], al	# i, tmp104
.L200:
	.loc 1 494 0
	movzx	edx, BYTE PTR -1[ebp]	# _7, i
	mov	eax, DWORD PTR 8[ebp]	# tmp105, str
	add	eax, edx	# _9, _7
	movzx	eax, BYTE PTR [eax]	# _11, *_9
	test	al, al	# _11
	jne	.L205	#,
	.loc 1 505 0
	mov	eax, DWORD PTR -8[ebp]	# _3, val
.L204:
	.loc 1 506 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE28:
	.size	valO, .-valO
	.globl	valB
	.type	valB, @function
valB:
.LFB29:
	.loc 1 508 0
	.cfi_startproc
	push	ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp	#,
	.cfi_def_cfa_register 5
	sub	esp, 16	#,
	call	__x86.get_pc_thunk.ax	#
	add	eax, OFFSET FLAT:_GLOBAL_OFFSET_TABLE_	# tmp87,
	.loc 1 509 0
	mov	BYTE PTR -1[ebp], 0	# i,
	.loc 1 510 0
	mov	BYTE PTR -9[ebp], 32	# a,
	.loc 1 511 0
	mov	DWORD PTR -8[ebp], 0	# val,
	.loc 1 512 0
	jmp	.L208	#
.L213:
	.loc 1 513 0
	movzx	edx, BYTE PTR -1[ebp]	# _12, i
	mov	eax, DWORD PTR 8[ebp]	# tmp99, str
	add	eax, edx	# _13, _12
	movzx	eax, BYTE PTR [eax]	# tmp100, *_13
	mov	BYTE PTR -9[ebp], al	# a, tmp100
	.loc 1 514 0
	movsx	eax, BYTE PTR -9[ebp]	# _15, a
	sub	eax, 48	# tmp101,
	cmp	eax, 1	# tmp101,
	ja	.L209	#,
	.loc 1 516 0
	sal	DWORD PTR -8[ebp]	# val
	.loc 1 517 0
	movsx	edx, BYTE PTR -9[ebp]	# _17, a
	mov	eax, DWORD PTR -8[ebp]	# tmp102, val
	add	eax, edx	# _18, _17
	sub	eax, 48	# tmp103,
	mov	DWORD PTR -8[ebp], eax	# val, tmp103
	.loc 1 518 0
	jmp	.L214	#
.L209:
	.loc 1 519 0
	mov	eax, DWORD PTR -8[ebp]	# _3, val
	jmp	.L212	#
.L214:
	.loc 1 521 0
	movzx	eax, BYTE PTR -1[ebp]	# i.195_20, i
	add	eax, 1	# tmp104,
	mov	BYTE PTR -1[ebp], al	# i, tmp104
.L208:
	.loc 1 512 0
	movzx	edx, BYTE PTR -1[ebp]	# _7, i
	mov	eax, DWORD PTR 8[ebp]	# tmp105, str
	add	eax, edx	# _9, _7
	movzx	eax, BYTE PTR [eax]	# _11, *_9
	test	al, al	# _11
	jne	.L213	#,
	.loc 1 523 0
	mov	eax, DWORD PTR -8[ebp]	# _3, val
.L212:
	.loc 1 524 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE29:
	.size	valB, .-valB
	.globl	kprintf_mode
	.bss
	.type	kprintf_mode, @object
	.size	kprintf_mode, 1
kprintf_mode:
	.zero	1
	.text
	.globl	kprintf
	.type	kprintf, @function
kprintf:
.LFB30:
	.loc 1 535 0
	.cfi_startproc
	push	ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp	#,
	.cfi_def_cfa_register 5
	push	ebx	#
	sub	esp, 20	#,
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx	#
	add	ebx, OFFSET FLAT:_GLOBAL_OFFSET_TABLE_	# tmp87,
	.loc 1 536 0
	mov	DWORD PTR -12[ebp], 0	# i,
	.loc 1 537 0
	jmp	.L216	#
.L238:
.LBB28:
	.loc 1 538 0
	mov	edx, DWORD PTR -12[ebp]	# i.196_12, i
	mov	eax, DWORD PTR 8[ebp]	# tmp101, str
	add	eax, edx	# _13, i.196_12
	movzx	eax, BYTE PTR [eax]	# tmp102, *_13
	mov	BYTE PTR -13[ebp], al	# c, tmp102
	.loc 1 539 0
	movzx	eax, BYTE PTR kprintf_mode@GOTOFF[ebx]	# kprintf_mode.197_15, kprintf_mode
	movzx	eax, al	# _16, kprintf_mode.197_15
	test	eax, eax	# _16
	je	.L218	#,
	cmp	eax, 1	# _16,
	je	.L219	#,
	jmp	.L239	#
.L218:
	.loc 1 541 0
	movsx	eax, BYTE PTR -13[ebp]	# _17, c
	cmp	eax, 92	# _17,
	jne	.L240	#,
	.loc 1 542 0
	mov	BYTE PTR kprintf_mode@GOTOFF[ebx], 1	# kprintf_mode,
	jmp	.L222	#
.L240:
	.loc 1 543 0
	movzx	eax, BYTE PTR -13[ebp]	# c.198_19, c
	movzx	eax, al	# _20, c.198_19
	sub	esp, 12	#,
	push	eax	# _20
	call	vga16tty_putchar	#
	add	esp, 16	#,
	nop
.L222:
	.loc 1 545 0
	jmp	.L223	#
.L219:
	.loc 1 547 0
	movsx	eax, BYTE PTR -13[ebp]	# _22, c
	sub	eax, 34	# tmp103,
	cmp	eax, 84	# tmp103,
	ja	.L224	#,
	sal	eax, 2	# tmp104,
	mov	eax, DWORD PTR .L226@GOTOFF[eax+ebx]	# tmp105,
	add	eax, ebx	# tmp106, tmp87
	jmp	eax	# tmp106
	.section	.rodata
	.align 4
	.align 4
.L226:
	.long	.L225@GOTOFF
	.long	.L224@GOTOFF
	.long	.L224@GOTOFF
	.long	.L224@GOTOFF
	.long	.L224@GOTOFF
	.long	.L227@GOTOFF
	.long	.L224@GOTOFF
	.long	.L224@GOTOFF
	.long	.L224@GOTOFF
	.long	.L224@GOTOFF
	.long	.L224@GOTOFF
	.long	.L224@GOTOFF
	.long	.L224@GOTOFF
	.long	.L224@GOTOFF
	.long	.L224@GOTOFF
	.long	.L224@GOTOFF
	.long	.L224@GOTOFF
	.long	.L224@GOTOFF
	.long	.L224@GOTOFF
	.long	.L224@GOTOFF
	.long	.L224@GOTOFF
	.long	.L224@GOTOFF
	.long	.L224@GOTOFF
	.long	.L224@GOTOFF
	.long	.L224@GOTOFF
	.long	.L224@GOTOFF
	.long	.L224@GOTOFF
	.long	.L224@GOTOFF
	.long	.L224@GOTOFF
	.long	.L224@GOTOFF
	.long	.L224@GOTOFF
	.long	.L224@GOTOFF
	.long	.L224@GOTOFF
	.long	.L224@GOTOFF
	.long	.L224@GOTOFF
	.long	.L224@GOTOFF
	.long	.L224@GOTOFF
	.long	.L224@GOTOFF
	.long	.L224@GOTOFF
	.long	.L224@GOTOFF
	.long	.L224@GOTOFF
	.long	.L224@GOTOFF
	.long	.L224@GOTOFF
	.long	.L224@GOTOFF
	.long	.L224@GOTOFF
	.long	.L224@GOTOFF
	.long	.L224@GOTOFF
	.long	.L224@GOTOFF
	.long	.L224@GOTOFF
	.long	.L224@GOTOFF
	.long	.L224@GOTOFF
	.long	.L224@GOTOFF
	.long	.L224@GOTOFF
	.long	.L224@GOTOFF
	.long	.L224@GOTOFF
	.long	.L224@GOTOFF
	.long	.L224@GOTOFF
	.long	.L224@GOTOFF
	.long	.L228@GOTOFF
	.long	.L224@GOTOFF
	.long	.L224@GOTOFF
	.long	.L224@GOTOFF
	.long	.L224@GOTOFF
	.long	.L229@GOTOFF
	.long	.L230@GOTOFF
	.long	.L224@GOTOFF
	.long	.L224@GOTOFF
	.long	.L231@GOTOFF
	.long	.L232@GOTOFF
	.long	.L224@GOTOFF
	.long	.L224@GOTOFF
	.long	.L224@GOTOFF
	.long	.L224@GOTOFF
	.long	.L224@GOTOFF
	.long	.L224@GOTOFF
	.long	.L224@GOTOFF
	.long	.L233@GOTOFF
	.long	.L224@GOTOFF
	.long	.L224@GOTOFF
	.long	.L224@GOTOFF
	.long	.L234@GOTOFF
	.long	.L224@GOTOFF
	.long	.L235@GOTOFF
	.long	.L224@GOTOFF
	.long	.L236@GOTOFF
	.text
.L229:
	.loc 1 548 0
	sub	esp, 12	#,
	push	7	#
	call	vga16tty_putchar	#
	add	esp, 16	#,
	mov	BYTE PTR kprintf_mode@GOTOFF[ebx], 0	# kprintf_mode,
	jmp	.L237	#
.L230:
	.loc 1 549 0
	sub	esp, 12	#,
	push	8	#
	call	vga16tty_putchar	#
	add	esp, 16	#,
	mov	BYTE PTR kprintf_mode@GOTOFF[ebx], 0	# kprintf_mode,
	jmp	.L237	#
.L231:
	.loc 1 550 0
	sub	esp, 12	#,
	push	27	#
	call	vga16tty_putchar	#
	add	esp, 16	#,
	mov	BYTE PTR kprintf_mode@GOTOFF[ebx], 0	# kprintf_mode,
	jmp	.L237	#
.L232:
	.loc 1 551 0
	sub	esp, 12	#,
	push	12	#
	call	vga16tty_putchar	#
	add	esp, 16	#,
	mov	BYTE PTR kprintf_mode@GOTOFF[ebx], 0	# kprintf_mode,
	jmp	.L237	#
.L233:
	.loc 1 552 0
	sub	esp, 12	#,
	push	10	#
	call	vga16tty_putchar	#
	add	esp, 16	#,
	mov	BYTE PTR kprintf_mode@GOTOFF[ebx], 0	# kprintf_mode,
	jmp	.L237	#
.L234:
	.loc 1 553 0
	sub	esp, 12	#,
	push	13	#
	call	vga16tty_putchar	#
	add	esp, 16	#,
	mov	BYTE PTR kprintf_mode@GOTOFF[ebx], 0	# kprintf_mode,
	jmp	.L237	#
.L235:
	.loc 1 554 0
	sub	esp, 12	#,
	push	9	#
	call	vga16tty_putchar	#
	add	esp, 16	#,
	mov	BYTE PTR kprintf_mode@GOTOFF[ebx], 0	# kprintf_mode,
	jmp	.L237	#
.L236:
	.loc 1 555 0
	sub	esp, 12	#,
	push	11	#
	call	vga16tty_putchar	#
	add	esp, 16	#,
	mov	BYTE PTR kprintf_mode@GOTOFF[ebx], 0	# kprintf_mode,
	jmp	.L237	#
.L228:
	.loc 1 556 0
	sub	esp, 12	#,
	push	92	#
	call	vga16tty_putchar	#
	add	esp, 16	#,
	mov	BYTE PTR kprintf_mode@GOTOFF[ebx], 0	# kprintf_mode,
	jmp	.L237	#
.L227:
	.loc 1 557 0
	sub	esp, 12	#,
	push	39	#
	call	vga16tty_putchar	#
	add	esp, 16	#,
	mov	BYTE PTR kprintf_mode@GOTOFF[ebx], 0	# kprintf_mode,
	jmp	.L237	#
.L225:
	.loc 1 558 0
	sub	esp, 12	#,
	push	34	#
	call	vga16tty_putchar	#
	add	esp, 16	#,
	mov	BYTE PTR kprintf_mode@GOTOFF[ebx], 0	# kprintf_mode,
	jmp	.L237	#
.L224:
	.loc 1 559 0
	mov	BYTE PTR kprintf_mode@GOTOFF[ebx], 0	# kprintf_mode,
	movzx	eax, BYTE PTR -13[ebp]	# c.199_46, c
	movzx	eax, al	# _47, c.199_46
	sub	esp, 12	#,
	push	eax	# _47
	call	vga16tty_putchar	#
	add	esp, 16	#,
	nop
.L237:
	.loc 1 561 0
	jmp	.L223	#
.L239:
	.loc 1 562 0
	mov	BYTE PTR kprintf_mode@GOTOFF[ebx], 0	# kprintf_mode,
	nop
.L223:
	.loc 1 564 0
	add	DWORD PTR -12[ebp], 1	# i,
.L216:
.LBE28:
	.loc 1 537 0
	mov	edx, DWORD PTR -12[ebp]	# i.200_8, i
	mov	eax, DWORD PTR 8[ebp]	# tmp107, str
	add	eax, edx	# _10, i.200_8
	movzx	eax, BYTE PTR [eax]	# _11, *_10
	test	al, al	# _11
	jne	.L238	#,
	.loc 1 566 0
	nop
	mov	ebx, DWORD PTR -4[ebp]	#,
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE30:
	.size	kprintf, .-kprintf
	.section	.rodata
.LC0:
	.string	"\n"
.LC1:
	.string	"Hex:"
.LC2:
	.string	" Dec:"
.LC3:
	.string	" Oct:"
.LC4:
	.string	" Bin:"
	.text
	.globl	test1
	.type	test1, @function
test1:
.LFB31:
	.loc 1 570 0
	.cfi_startproc
	push	ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp	#,
	.cfi_def_cfa_register 5
	push	ebx	#
	sub	esp, 20	#,
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx	#
	add	ebx, OFFSET FLAT:_GLOBAL_OFFSET_TABLE_	# tmp87,
	.loc 1 571 0
	mov	DWORD PTR -12[ebp], 0	# i,
	.loc 1 572 0
	sub	esp, 12	#,
	lea	eax, .LC0@GOTOFF[ebx]	# tmp88,
	push	eax	# tmp88
	call	kprintf	#
	add	esp, 16	#,
.L242:
	.loc 1 574 0 discriminator 1
	sub	esp, 12	#,
	lea	eax, .LC1@GOTOFF[ebx]	# tmp89,
	push	eax	# tmp89
	call	kprintf	#
	add	esp, 16	#,
	.loc 1 575 0 discriminator 1
	sub	esp, 4	#,
	push	95	#
	push	8	#
	push	DWORD PTR -12[ebp]	# i
	call	printHfs	#
	add	esp, 16	#,
	.loc 1 576 0 discriminator 1
	sub	esp, 12	#,
	lea	eax, .LC2@GOTOFF[ebx]	# tmp90,
	push	eax	# tmp90
	call	kprintf	#
	add	esp, 16	#,
	.loc 1 577 0 discriminator 1
	sub	esp, 4	#,
	push	95	#
	push	10	#
	push	DWORD PTR -12[ebp]	# i
	call	printDfs	#
	add	esp, 16	#,
	.loc 1 578 0 discriminator 1
	sub	esp, 12	#,
	lea	eax, .LC3@GOTOFF[ebx]	# tmp91,
	push	eax	# tmp91
	call	kprintf	#
	add	esp, 16	#,
	.loc 1 579 0 discriminator 1
	sub	esp, 4	#,
	push	95	#
	push	11	#
	push	DWORD PTR -12[ebp]	# i
	call	printOfs	#
	add	esp, 16	#,
	.loc 1 580 0 discriminator 1
	sub	esp, 12	#,
	lea	eax, .LC4@GOTOFF[ebx]	# tmp92,
	push	eax	# tmp92
	call	kprintf	#
	add	esp, 16	#,
	.loc 1 581 0 discriminator 1
	sub	esp, 4	#,
	push	95	#
	push	32	#
	push	DWORD PTR -12[ebp]	# i
	call	printBfs	#
	add	esp, 16	#,
	.loc 1 582 0 discriminator 1
	add	DWORD PTR -12[ebp], 1	# i,
	.loc 1 574 0 discriminator 1
	jmp	.L242	#
	.cfi_endproc
.LFE31:
	.size	test1, .-test1
	.section	.rodata
.LC5:
	.string	"\n\033[0m\t"
.LC6:
	.string	"\033["
.LC7:
	.string	"m"
.LC8:
	.string	"m "
.LC9:
	.string	" "
	.text
	.globl	test2
	.type	test2, @function
test2:
.LFB32:
	.loc 1 586 0
	.cfi_startproc
	push	ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp	#,
	.cfi_def_cfa_register 5
	push	ebx	#
	sub	esp, 20	#,
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx	#
	add	ebx, OFFSET FLAT:_GLOBAL_OFFSET_TABLE_	# tmp87,
.LBB29:
	.loc 1 587 0
	mov	BYTE PTR -9[ebp], 0	# y,
	jmp	.L244	#
.L249:
.LBB30:
	.loc 1 588 0
	sub	esp, 12	#,
	lea	eax, .LC5@GOTOFF[ebx]	# tmp94,
	push	eax	# tmp94
	call	kprintf	#
	add	esp, 16	#,
	.loc 1 589 0
	movzx	eax, BYTE PTR -9[ebp]	# tmp95, y
	mov	BYTE PTR -10[ebp], al	# bg, tmp95
	cmp	BYTE PTR -10[ebp], 7	# bg,
	jbe	.L245	#,
	.loc 1 589 0 is_stmt 0 discriminator 1
	add	BYTE PTR -10[ebp], 52	# bg,
.L245:
	.loc 1 589 0 discriminator 3
	add	BYTE PTR -10[ebp], 40	# bg,
	.loc 1 590 0 is_stmt 1 discriminator 3
	sub	esp, 12	#,
	lea	eax, .LC6@GOTOFF[ebx]	# tmp96,
	push	eax	# tmp96
	call	kprintf	#
	add	esp, 16	#,
	.loc 1 591 0 discriminator 3
	movzx	eax, BYTE PTR -10[ebp]	# _14, bg
	sub	esp, 12	#,
	push	eax	# _14
	call	printD	#
	add	esp, 16	#,
	.loc 1 592 0 discriminator 3
	sub	esp, 12	#,
	lea	eax, .LC7@GOTOFF[ebx]	# tmp97,
	push	eax	# tmp97
	call	kprintf	#
	add	esp, 16	#,
.LBB31:
	.loc 1 593 0 discriminator 3
	mov	BYTE PTR -11[ebp], 0	# x,
	jmp	.L246	#
.L248:
.LBB32:
	.loc 1 594 0
	movzx	eax, BYTE PTR -11[ebp]	# tmp98, x
	mov	BYTE PTR -12[ebp], al	# fg, tmp98
	cmp	BYTE PTR -12[ebp], 7	# fg,
	jbe	.L247	#,
	.loc 1 594 0 is_stmt 0 discriminator 1
	add	BYTE PTR -12[ebp], 52	# fg,
.L247:
	.loc 1 594 0 discriminator 3
	add	BYTE PTR -12[ebp], 30	# fg,
	.loc 1 595 0 is_stmt 1 discriminator 3
	sub	esp, 12	#,
	lea	eax, .LC6@GOTOFF[ebx]	# tmp99,
	push	eax	# tmp99
	call	kprintf	#
	add	esp, 16	#,
	.loc 1 596 0 discriminator 3
	movzx	eax, BYTE PTR -12[ebp]	# _22, fg
	sub	esp, 12	#,
	push	eax	# _22
	call	printD	#
	add	esp, 16	#,
	.loc 1 597 0 discriminator 3
	sub	esp, 12	#,
	lea	eax, .LC8@GOTOFF[ebx]	# tmp100,
	push	eax	# tmp100
	call	kprintf	#
	add	esp, 16	#,
	.loc 1 598 0 discriminator 3
	movzx	eax, BYTE PTR -9[ebp]	# _25, y
	sub	esp, 12	#,
	push	eax	# _25
	call	printH	#
	add	esp, 16	#,
	.loc 1 599 0 discriminator 3
	movzx	eax, BYTE PTR -11[ebp]	# _27, x
	sub	esp, 12	#,
	push	eax	# _27
	call	printH	#
	add	esp, 16	#,
	.loc 1 600 0 discriminator 3
	sub	esp, 12	#,
	lea	eax, .LC9@GOTOFF[ebx]	# tmp101,
	push	eax	# tmp101
	call	kprintf	#
	add	esp, 16	#,
.LBE32:
	.loc 1 593 0 discriminator 3
	movzx	eax, BYTE PTR -11[ebp]	# x.201_30, x
	add	eax, 1	# tmp102,
	mov	BYTE PTR -11[ebp], al	# x, tmp102
.L246:
	.loc 1 593 0 is_stmt 0 discriminator 2
	cmp	BYTE PTR -11[ebp], 15	# x,
	jbe	.L248	#,
.LBE31:
.LBE30:
	.loc 1 587 0 is_stmt 1 discriminator 2
	movzx	eax, BYTE PTR -9[ebp]	# y.202_32, y
	add	eax, 1	# tmp103,
	mov	BYTE PTR -9[ebp], al	# y, tmp103
.L244:
	.loc 1 587 0 is_stmt 0 discriminator 1
	cmp	BYTE PTR -9[ebp], 15	# y,
	jbe	.L249	#,
.LBE29:
	.loc 1 603 0 is_stmt 1
	nop
	mov	ebx, DWORD PTR -4[ebp]	#,
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE32:
	.size	test2, .-test2
	.section	.rodata
.LC10:
	.string	"m\033[H"
	.text
	.globl	test3
	.type	test3, @function
test3:
.LFB33:
	.loc 1 605 0
	.cfi_startproc
	push	ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp	#,
	.cfi_def_cfa_register 5
	push	ebx	#
	sub	esp, 20	#,
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx	#
	add	ebx, OFFSET FLAT:_GLOBAL_OFFSET_TABLE_	# tmp87,
.L259:
.LBB33:
	.loc 1 607 0
	mov	BYTE PTR -9[ebp], 0	# y,
	jmp	.L251	#
.L258:
.LBB34:
	.loc 1 608 0
	movzx	eax, BYTE PTR -9[ebp]	# tmp92, y
	mov	BYTE PTR -10[ebp], al	# bg, tmp92
	cmp	BYTE PTR -10[ebp], 7	# bg,
	jbe	.L252	#,
	.loc 1 608 0 is_stmt 0 discriminator 1
	add	BYTE PTR -10[ebp], 52	# bg,
.L252:
	.loc 1 608 0 discriminator 3
	add	BYTE PTR -10[ebp], 40	# bg,
	.loc 1 609 0 is_stmt 1 discriminator 3
	sub	esp, 12	#,
	lea	eax, .LC6@GOTOFF[ebx]	# tmp93,
	push	eax	# tmp93
	call	kprintf	#
	add	esp, 16	#,
	.loc 1 610 0 discriminator 3
	movzx	eax, BYTE PTR -10[ebp]	# _16, bg
	sub	esp, 12	#,
	push	eax	# _16
	call	printD	#
	add	esp, 16	#,
	.loc 1 611 0 discriminator 3
	sub	esp, 12	#,
	lea	eax, .LC7@GOTOFF[ebx]	# tmp94,
	push	eax	# tmp94
	call	kprintf	#
	add	esp, 16	#,
.LBB35:
	.loc 1 612 0 discriminator 3
	mov	BYTE PTR -11[ebp], 0	# x,
	jmp	.L253	#
.L257:
.LBB36:
	.loc 1 613 0
	movzx	eax, BYTE PTR -11[ebp]	# tmp95, x
	mov	BYTE PTR -12[ebp], al	# fg, tmp95
	cmp	BYTE PTR -12[ebp], 7	# fg,
	jbe	.L254	#,
	.loc 1 613 0 is_stmt 0 discriminator 1
	add	BYTE PTR -12[ebp], 52	# fg,
.L254:
	.loc 1 613 0 discriminator 3
	add	BYTE PTR -12[ebp], 30	# fg,
	.loc 1 614 0 is_stmt 1 discriminator 3
	sub	esp, 12	#,
	lea	eax, .LC6@GOTOFF[ebx]	# tmp96,
	push	eax	# tmp96
	call	kprintf	#
	add	esp, 16	#,
	.loc 1 615 0 discriminator 3
	movzx	eax, BYTE PTR -12[ebp]	# _26, fg
	sub	esp, 12	#,
	push	eax	# _26
	call	printD	#
	add	esp, 16	#,
	.loc 1 616 0 discriminator 3
	sub	esp, 12	#,
	lea	eax, .LC10@GOTOFF[ebx]	# tmp97,
	push	eax	# tmp97
	call	kprintf	#
	add	esp, 16	#,
.LBB37:
	.loc 1 617 0 discriminator 3
	mov	DWORD PTR -16[ebp], 0	# i,
	jmp	.L255	#
.L256:
	sub	esp, 12	#,
	push	77	#
	call	vga16tty_putchar	#
	add	esp, 16	#,
	add	DWORD PTR -16[ebp], 1	# i,
.L255:
	.loc 1 617 0 is_stmt 0 discriminator 1
	cmp	DWORD PTR -16[ebp], 1998	# i,
	jbe	.L256	#,
.LBE37:
.LBE36:
	.loc 1 612 0 is_stmt 1 discriminator 2
	movzx	eax, BYTE PTR -11[ebp]	# x.203_30, x
	add	eax, 1	# tmp98,
	mov	BYTE PTR -11[ebp], al	# x, tmp98
.L253:
	.loc 1 612 0 is_stmt 0 discriminator 1
	cmp	BYTE PTR -11[ebp], 15	# x,
	jbe	.L257	#,
.LBE35:
.LBE34:
	.loc 1 607 0 is_stmt 1 discriminator 2
	movzx	eax, BYTE PTR -9[ebp]	# y.204_20, y
	add	eax, 1	# tmp99,
	mov	BYTE PTR -9[ebp], al	# y, tmp99
.L251:
	.loc 1 607 0 is_stmt 0 discriminator 1
	cmp	BYTE PTR -9[ebp], 15	# y,
	jbe	.L258	#,
.LBE33:
	.loc 1 607 0
	jmp	.L259	#
	.cfi_endproc
.LFE33:
	.size	test3, .-test3
	.section	.rodata
.LC11:
	.string	"m\033[H\033[2J"
	.text
	.globl	test4
	.type	test4, @function
test4:
.LFB34:
	.loc 1 623 0 is_stmt 1
	.cfi_startproc
	push	ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp	#,
	.cfi_def_cfa_register 5
	push	ebx	#
	sub	esp, 20	#,
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx	#
	add	ebx, OFFSET FLAT:_GLOBAL_OFFSET_TABLE_	# tmp87,
.L264:
.LBB38:
	.loc 1 625 0
	mov	BYTE PTR -9[ebp], 0	# y,
	jmp	.L261	#
.L263:
.LBB39:
	.loc 1 626 0
	movzx	eax, BYTE PTR -9[ebp]	# tmp90, y
	mov	BYTE PTR -10[ebp], al	# bg, tmp90
	cmp	BYTE PTR -10[ebp], 7	# bg,
	jbe	.L262	#,
	.loc 1 626 0 is_stmt 0 discriminator 1
	add	BYTE PTR -10[ebp], 52	# bg,
.L262:
	.loc 1 626 0 discriminator 3
	add	BYTE PTR -10[ebp], 40	# bg,
	.loc 1 627 0 is_stmt 1 discriminator 3
	sub	esp, 12	#,
	lea	eax, .LC6@GOTOFF[ebx]	# tmp91,
	push	eax	# tmp91
	call	kprintf	#
	add	esp, 16	#,
	.loc 1 628 0 discriminator 3
	movzx	eax, BYTE PTR -10[ebp]	# _11, bg
	sub	esp, 12	#,
	push	eax	# _11
	call	printD	#
	add	esp, 16	#,
	.loc 1 629 0 discriminator 3
	sub	esp, 12	#,
	lea	eax, .LC11@GOTOFF[ebx]	# tmp92,
	push	eax	# tmp92
	call	kprintf	#
	add	esp, 16	#,
.LBE39:
	.loc 1 625 0 discriminator 3
	movzx	eax, BYTE PTR -9[ebp]	# y.205_14, y
	add	eax, 1	# tmp93,
	mov	BYTE PTR -9[ebp], al	# y, tmp93
.L261:
	.loc 1 625 0 is_stmt 0 discriminator 2
	cmp	BYTE PTR -9[ebp], 15	# y,
	jbe	.L263	#,
.LBE38:
	.loc 1 625 0
	jmp	.L264	#
	.cfi_endproc
.LFE34:
	.size	test4, .-test4
	.section	.rodata
	.align 4
.LC12:
	.string	"Welcome to \033[97mu\033[91mK\033[92me\033[93mr\033[94mn\033[95me\033[96ml\033[0m\n"
.LC13:
	.string	"loading       : \0337"
.LC14:
	.string	"\ndecompressing : "
.LC15:
	.string	"\nlinking       : "
.LC16:
	.string	"\nexecute       : \0338"
.LC17:
	.string	" \b"
.LC18:
	.string	"."
.LC19:
	.string	"\0338\033B"
.LC20:
	.string	"\0338\033B\033B"
.LC21:
	.string	"\0338\033B\033B\033B"
	.text
	.globl	welcome
	.type	welcome, @function
welcome:
.LFB35:
	.loc 1 634 0 is_stmt 1
	.cfi_startproc
	push	ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp	#,
	.cfi_def_cfa_register 5
	push	ebx	#
	sub	esp, 52	#,
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx	#
	add	ebx, OFFSET FLAT:_GLOBAL_OFFSET_TABLE_	# tmp87,
	.loc 1 635 0
	sub	esp, 12	#,
	lea	eax, .LC0@GOTOFF[ebx]	# tmp88,
	push	eax	# tmp88
	call	kprintf	#
	add	esp, 16	#,
	.loc 1 636 0
	sub	esp, 12	#,
	lea	eax, .LC0@GOTOFF[ebx]	# tmp89,
	push	eax	# tmp89
	call	kprintf	#
	add	esp, 16	#,
	.loc 1 637 0
	sub	esp, 12	#,
	lea	eax, .LC12@GOTOFF[ebx]	# tmp90,
	push	eax	# tmp90
	call	kprintf	#
	add	esp, 16	#,
	.loc 1 638 0
	sub	esp, 12	#,
	lea	eax, .LC0@GOTOFF[ebx]	# tmp91,
	push	eax	# tmp91
	call	kprintf	#
	add	esp, 16	#,
	.loc 1 639 0
	sub	esp, 12	#,
	lea	eax, .LC13@GOTOFF[ebx]	# tmp92,
	push	eax	# tmp92
	call	kprintf	#
	add	esp, 16	#,
	.loc 1 640 0
	sub	esp, 12	#,
	lea	eax, .LC14@GOTOFF[ebx]	# tmp93,
	push	eax	# tmp93
	call	kprintf	#
	add	esp, 16	#,
	.loc 1 641 0
	sub	esp, 12	#,
	lea	eax, .LC15@GOTOFF[ebx]	# tmp94,
	push	eax	# tmp94
	call	kprintf	#
	add	esp, 16	#,
	.loc 1 642 0
	sub	esp, 12	#,
	lea	eax, .LC16@GOTOFF[ebx]	# tmp95,
	push	eax	# tmp95
	call	kprintf	#
	add	esp, 16	#,
.LBB40:
	.loc 1 645 0
	mov	DWORD PTR -12[ebp], 0	# i,
	jmp	.L266	#
.L269:
.LBB41:
	.loc 1 646 0
	mov	DWORD PTR -16[ebp], 0	# i2,
	jmp	.L267	#
.L268:
	.loc 1 647 0 discriminator 3
	sub	esp, 12	#,
	lea	eax, .LC17@GOTOFF[ebx]	# tmp96,
	push	eax	# tmp96
	call	kprintf	#
	add	esp, 16	#,
	.loc 1 646 0 discriminator 3
	add	DWORD PTR -16[ebp], 1	# i2,
.L267:
	.loc 1 646 0 is_stmt 0 discriminator 1
	cmp	DWORD PTR -16[ebp], 99	# i2,
	jle	.L268	#,
.LBE41:
	.loc 1 649 0 is_stmt 1 discriminator 2
	sub	esp, 12	#,
	lea	eax, .LC18@GOTOFF[ebx]	# tmp97,
	push	eax	# tmp97
	call	kprintf	#
	add	esp, 16	#,
	.loc 1 645 0 discriminator 2
	add	DWORD PTR -12[ebp], 1	# i,
.L266:
	.loc 1 645 0 is_stmt 0 discriminator 1
	cmp	DWORD PTR -12[ebp], 59	# i,
	jle	.L269	#,
.LBE40:
.LBB42:
	.loc 1 651 0 is_stmt 1
	mov	DWORD PTR -20[ebp], 0	# i2,
	jmp	.L270	#
.L271:
	.loc 1 652 0 discriminator 3
	sub	esp, 12	#,
	lea	eax, .LC17@GOTOFF[ebx]	# tmp98,
	push	eax	# tmp98
	call	kprintf	#
	add	esp, 16	#,
	.loc 1 651 0 discriminator 3
	add	DWORD PTR -20[ebp], 1	# i2,
.L270:
	.loc 1 651 0 is_stmt 0 discriminator 1
	cmp	DWORD PTR -20[ebp], 9999	# i2,
	jle	.L271	#,
.LBE42:
	.loc 1 656 0 is_stmt 1
	sub	esp, 12	#,
	lea	eax, .LC19@GOTOFF[ebx]	# tmp99,
	push	eax	# tmp99
	call	kprintf	#
	add	esp, 16	#,
.LBB43:
	.loc 1 657 0
	mov	DWORD PTR -24[ebp], 0	# i,
	jmp	.L272	#
.L275:
.LBB44:
	.loc 1 658 0
	mov	DWORD PTR -28[ebp], 0	# i2,
	jmp	.L273	#
.L274:
	.loc 1 659 0 discriminator 3
	sub	esp, 12	#,
	lea	eax, .LC17@GOTOFF[ebx]	# tmp100,
	push	eax	# tmp100
	call	kprintf	#
	add	esp, 16	#,
	.loc 1 658 0 discriminator 3
	add	DWORD PTR -28[ebp], 1	# i2,
.L273:
	.loc 1 658 0 is_stmt 0 discriminator 1
	cmp	DWORD PTR -28[ebp], 999	# i2,
	jle	.L274	#,
.LBE44:
	.loc 1 661 0 is_stmt 1 discriminator 2
	sub	esp, 12	#,
	lea	eax, .LC18@GOTOFF[ebx]	# tmp101,
	push	eax	# tmp101
	call	kprintf	#
	add	esp, 16	#,
	.loc 1 657 0 discriminator 2
	add	DWORD PTR -24[ebp], 1	# i,
.L272:
	.loc 1 657 0 is_stmt 0 discriminator 1
	cmp	DWORD PTR -24[ebp], 59	# i,
	jle	.L275	#,
.LBE43:
.LBB45:
	.loc 1 663 0 is_stmt 1
	mov	DWORD PTR -32[ebp], 0	# i2,
	jmp	.L276	#
.L277:
	.loc 1 664 0 discriminator 3
	sub	esp, 12	#,
	lea	eax, .LC17@GOTOFF[ebx]	# tmp102,
	push	eax	# tmp102
	call	kprintf	#
	add	esp, 16	#,
	.loc 1 663 0 discriminator 3
	add	DWORD PTR -32[ebp], 1	# i2,
.L276:
	.loc 1 663 0 is_stmt 0 discriminator 1
	cmp	DWORD PTR -32[ebp], 29999	# i2,
	jle	.L277	#,
.LBE45:
	.loc 1 668 0 is_stmt 1
	sub	esp, 12	#,
	lea	eax, .LC20@GOTOFF[ebx]	# tmp103,
	push	eax	# tmp103
	call	kprintf	#
	add	esp, 16	#,
.LBB46:
	.loc 1 669 0
	mov	DWORD PTR -36[ebp], 0	# i,
	jmp	.L278	#
.L281:
.LBB47:
	.loc 1 670 0
	mov	DWORD PTR -40[ebp], 0	# i2,
	jmp	.L279	#
.L280:
	.loc 1 671 0 discriminator 3
	sub	esp, 12	#,
	lea	eax, .LC17@GOTOFF[ebx]	# tmp104,
	push	eax	# tmp104
	call	kprintf	#
	add	esp, 16	#,
	.loc 1 670 0 discriminator 3
	add	DWORD PTR -40[ebp], 1	# i2,
.L279:
	.loc 1 670 0 is_stmt 0 discriminator 1
	cmp	DWORD PTR -40[ebp], 99	# i2,
	jle	.L280	#,
.LBE47:
	.loc 1 673 0 is_stmt 1 discriminator 2
	sub	esp, 12	#,
	lea	eax, .LC18@GOTOFF[ebx]	# tmp105,
	push	eax	# tmp105
	call	kprintf	#
	add	esp, 16	#,
	.loc 1 669 0 discriminator 2
	add	DWORD PTR -36[ebp], 1	# i,
.L278:
	.loc 1 669 0 is_stmt 0 discriminator 1
	cmp	DWORD PTR -36[ebp], 59	# i,
	jle	.L281	#,
.LBE46:
.LBB48:
	.loc 1 675 0 is_stmt 1
	mov	DWORD PTR -44[ebp], 0	# i2,
	jmp	.L282	#
.L283:
	.loc 1 676 0 discriminator 3
	sub	esp, 12	#,
	lea	eax, .LC17@GOTOFF[ebx]	# tmp106,
	push	eax	# tmp106
	call	kprintf	#
	add	esp, 16	#,
	.loc 1 675 0 discriminator 3
	add	DWORD PTR -44[ebp], 1	# i2,
.L282:
	.loc 1 675 0 is_stmt 0 discriminator 1
	cmp	DWORD PTR -44[ebp], 9999	# i2,
	jle	.L283	#,
.LBE48:
	.loc 1 680 0 is_stmt 1
	sub	esp, 12	#,
	lea	eax, .LC21@GOTOFF[ebx]	# tmp107,
	push	eax	# tmp107
	call	kprintf	#
	add	esp, 16	#,
.LBB49:
	.loc 1 681 0
	mov	DWORD PTR -48[ebp], 0	# i,
	jmp	.L284	#
.L287:
.LBB50:
	.loc 1 682 0
	mov	DWORD PTR -52[ebp], 0	# i2,
	jmp	.L285	#
.L286:
	.loc 1 683 0 discriminator 3
	sub	esp, 12	#,
	lea	eax, .LC17@GOTOFF[ebx]	# tmp108,
	push	eax	# tmp108
	call	kprintf	#
	add	esp, 16	#,
	.loc 1 682 0 discriminator 3
	add	DWORD PTR -52[ebp], 1	# i2,
.L285:
	.loc 1 682 0 is_stmt 0 discriminator 1
	cmp	DWORD PTR -52[ebp], 9	# i2,
	jle	.L286	#,
.LBE50:
	.loc 1 685 0 is_stmt 1 discriminator 2
	sub	esp, 12	#,
	lea	eax, .LC18@GOTOFF[ebx]	# tmp109,
	push	eax	# tmp109
	call	kprintf	#
	add	esp, 16	#,
	.loc 1 681 0 discriminator 2
	add	DWORD PTR -48[ebp], 1	# i,
.L284:
	.loc 1 681 0 is_stmt 0 discriminator 1
	cmp	DWORD PTR -48[ebp], 59	# i,
	jle	.L287	#,
.LBE49:
.LBB51:
	.loc 1 687 0 is_stmt 1
	mov	DWORD PTR -56[ebp], 0	# i2,
	jmp	.L288	#
.L289:
	.loc 1 688 0 discriminator 3
	sub	esp, 12	#,
	lea	eax, .LC17@GOTOFF[ebx]	# tmp110,
	push	eax	# tmp110
	call	kprintf	#
	add	esp, 16	#,
	.loc 1 687 0 discriminator 3
	add	DWORD PTR -56[ebp], 1	# i2,
.L288:
	.loc 1 687 0 is_stmt 0 discriminator 1
	cmp	DWORD PTR -56[ebp], 49999	# i2,
	jle	.L289	#,
.LBE51:
	.loc 1 690 0 is_stmt 1
	nop
	mov	ebx, DWORD PTR -4[ebp]	#,
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE35:
	.size	welcome, .-welcome
	.globl	main
	.type	main, @function
main:
.LFB36:
	.loc 1 692 0
	.cfi_startproc
	lea	ecx, 4[esp]	#,
	.cfi_def_cfa 1, 0
	and	esp, -16	#,
	push	DWORD PTR -4[ecx]	#
	push	ebp	#
	.cfi_escape 0x10,0x5,0x2,0x75,0
	mov	ebp, esp	#,
	push	ecx	#
	.cfi_escape 0xf,0x3,0x75,0x7c,0x6
	sub	esp, 4	#,
	call	__x86.get_pc_thunk.ax	#
	add	eax, OFFSET FLAT:_GLOBAL_OFFSET_TABLE_	# tmp87,
	.loc 1 693 0
	call	vga16tty_init	#
	.loc 1 694 0
	sub	esp, 4	#,
	push	0	#
	push	2	#
	push	16	#
	call	vga16tty_cursor_mode	#
	add	esp, 16	#,
	.loc 1 699 0
	call	test4	#
.L291:
	.loc 1 701 0 discriminator 1
	jmp	.L291	#
	.cfi_endproc
.LFE36:
	.size	main, .-main
	.section	.text.__x86.get_pc_thunk.ax,"axG",@progbits,__x86.get_pc_thunk.ax,comdat
	.globl	__x86.get_pc_thunk.ax
	.hidden	__x86.get_pc_thunk.ax
	.type	__x86.get_pc_thunk.ax, @function
__x86.get_pc_thunk.ax:
.LFB37:
	.cfi_startproc
	mov	eax, DWORD PTR [esp]	#,
	ret
	.cfi_endproc
.LFE37:
	.section	.text.__x86.get_pc_thunk.bx,"axG",@progbits,__x86.get_pc_thunk.bx,comdat
	.globl	__x86.get_pc_thunk.bx
	.hidden	__x86.get_pc_thunk.bx
	.type	__x86.get_pc_thunk.bx, @function
__x86.get_pc_thunk.bx:
.LFB38:
	.cfi_startproc
	mov	ebx, DWORD PTR [esp]	#,
	ret
	.cfi_endproc
.LFE38:
	.text
.Letext0:
	.file 2 "kernel.h"
	.file 3 "vga16tty.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x10d7
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF74
	.byte	0xc
	.long	.LASF75
	.long	.LASF76
	.long	.Ltext0
	.long	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF0
	.byte	0x2
	.byte	0x4
	.long	0x30
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF2
	.uleb128 0x2
	.long	.LASF1
	.byte	0x2
	.byte	0x5
	.long	0x42
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0x2
	.long	.LASF4
	.byte	0x2
	.byte	0x6
	.long	0x54
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF5
	.uleb128 0x4
	.long	.LASF6
	.byte	0x2
	.byte	0x8
	.long	0x6c
	.uleb128 0x5
	.byte	0x3
	.long	vga_buffer
	.uleb128 0x5
	.byte	0x4
	.long	0x37
	.uleb128 0x4
	.long	.LASF7
	.byte	0x3
	.byte	0x1a
	.long	0x83
	.uleb128 0x5
	.byte	0x3
	.long	vga_pos_x
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.long	.LASF8
	.byte	0x3
	.byte	0x1b
	.long	0x83
	.uleb128 0x5
	.byte	0x3
	.long	vga_pos_y
	.uleb128 0x4
	.long	.LASF9
	.byte	0x3
	.byte	0x1c
	.long	0x83
	.uleb128 0x5
	.byte	0x3
	.long	vga_width
	.uleb128 0x4
	.long	.LASF10
	.byte	0x3
	.byte	0x1d
	.long	0x83
	.uleb128 0x5
	.byte	0x3
	.long	vga_height
	.uleb128 0x4
	.long	.LASF11
	.byte	0x1
	.byte	0x5
	.long	0x49
	.uleb128 0x5
	.byte	0x3
	.long	vga_index
	.uleb128 0x4
	.long	.LASF12
	.byte	0x1
	.byte	0x8
	.long	0x49
	.uleb128 0x5
	.byte	0x3
	.long	VGA_ADDRESS
	.uleb128 0x4
	.long	.LASF13
	.byte	0x1
	.byte	0xa
	.long	0x25
	.uleb128 0x5
	.byte	0x3
	.long	vga16tty_color_fg
	.uleb128 0x4
	.long	.LASF14
	.byte	0x1
	.byte	0xb
	.long	0x25
	.uleb128 0x5
	.byte	0x3
	.long	vga16tty_color_bg
	.uleb128 0x7
	.long	.LASF24
	.byte	0x4
	.long	0x54
	.byte	0x1
	.byte	0x41
	.long	0x124
	.uleb128 0x8
	.long	.LASF15
	.byte	0
	.uleb128 0x8
	.long	.LASF16
	.byte	0x1
	.uleb128 0x8
	.long	.LASF17
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.long	.LASF18
	.byte	0x1
	.byte	0x47
	.long	0x25
	.uleb128 0x5
	.byte	0x3
	.long	vga_putchar_mode
	.uleb128 0x4
	.long	.LASF19
	.byte	0x1
	.byte	0x48
	.long	0x25
	.uleb128 0x5
	.byte	0x3
	.long	vga_putchar_parameter
	.uleb128 0x9
	.long	0x25
	.long	0x156
	.uleb128 0xa
	.long	0x156
	.byte	0x1f
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF20
	.uleb128 0x4
	.long	.LASF21
	.byte	0x1
	.byte	0x49
	.long	0x146
	.uleb128 0x5
	.byte	0x3
	.long	vga_putchar_parameters
	.uleb128 0x4
	.long	.LASF22
	.byte	0x1
	.byte	0x4a
	.long	0x83
	.uleb128 0x5
	.byte	0x3
	.long	vga_pos_x2
	.uleb128 0x4
	.long	.LASF23
	.byte	0x1
	.byte	0x4b
	.long	0x83
	.uleb128 0x5
	.byte	0x3
	.long	vga_pos_y2
	.uleb128 0xb
	.long	.LASF25
	.byte	0x4
	.long	0x54
	.byte	0x1
	.value	0x210
	.long	0x1ae
	.uleb128 0x8
	.long	.LASF26
	.byte	0
	.uleb128 0x8
	.long	.LASF27
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.long	.LASF28
	.byte	0x1
	.value	0x215
	.long	0x25
	.uleb128 0x5
	.byte	0x3
	.long	kprintf_mode
	.uleb128 0xd
	.long	.LASF77
	.byte	0x1
	.value	0x2b4
	.long	0x83
	.long	.LFB36
	.long	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xe
	.long	.LASF29
	.byte	0x1
	.value	0x27a
	.long	.LFB35
	.long	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x325
	.uleb128 0xf
	.long	.LBB40
	.long	.LBE40-.LBB40
	.long	0x21f
	.uleb128 0x10
	.string	"i"
	.byte	0x1
	.value	0x285
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x11
	.long	.LBB41
	.long	.LBE41-.LBB41
	.uleb128 0x10
	.string	"i2"
	.byte	0x1
	.value	0x286
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	.LBB42
	.long	.LBE42-.LBB42
	.long	0x23b
	.uleb128 0x10
	.string	"i2"
	.byte	0x1
	.value	0x28b
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xf
	.long	.LBB43
	.long	.LBE43-.LBB43
	.long	0x26e
	.uleb128 0x10
	.string	"i"
	.byte	0x1
	.value	0x291
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x11
	.long	.LBB44
	.long	.LBE44-.LBB44
	.uleb128 0x10
	.string	"i2"
	.byte	0x1
	.value	0x292
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	.LBB45
	.long	.LBE45-.LBB45
	.long	0x28a
	.uleb128 0x10
	.string	"i2"
	.byte	0x1
	.value	0x297
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0xf
	.long	.LBB46
	.long	.LBE46-.LBB46
	.long	0x2bd
	.uleb128 0x10
	.string	"i"
	.byte	0x1
	.value	0x29d
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x11
	.long	.LBB47
	.long	.LBE47-.LBB47
	.uleb128 0x10
	.string	"i2"
	.byte	0x1
	.value	0x29e
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	.LBB48
	.long	.LBE48-.LBB48
	.long	0x2d9
	.uleb128 0x10
	.string	"i2"
	.byte	0x1
	.value	0x2a3
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0xf
	.long	.LBB49
	.long	.LBE49-.LBB49
	.long	0x30c
	.uleb128 0x10
	.string	"i"
	.byte	0x1
	.value	0x2a9
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x11
	.long	.LBB50
	.long	.LBE50-.LBB50
	.uleb128 0x10
	.string	"i2"
	.byte	0x1
	.value	0x2aa
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	.LBB51
	.long	.LBE51-.LBB51
	.uleb128 0x10
	.string	"i2"
	.byte	0x1
	.value	0x2af
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	.LASF30
	.byte	0x1
	.value	0x26f
	.long	.LFB34
	.long	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0x36b
	.uleb128 0x11
	.long	.LBB38
	.long	.LBE38-.LBB38
	.uleb128 0x10
	.string	"y"
	.byte	0x1
	.value	0x271
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x11
	.long	.LBB39
	.long	.LBE39-.LBB39
	.uleb128 0x10
	.string	"bg"
	.byte	0x1
	.value	0x272
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	.LASF31
	.byte	0x1
	.value	0x25d
	.long	.LFB33
	.long	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x3f7
	.uleb128 0x11
	.long	.LBB33
	.long	.LBE33-.LBB33
	.uleb128 0x10
	.string	"y"
	.byte	0x1
	.value	0x25f
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x11
	.long	.LBB34
	.long	.LBE34-.LBB34
	.uleb128 0x10
	.string	"bg"
	.byte	0x1
	.value	0x260
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x11
	.long	.LBB35
	.long	.LBE35-.LBB35
	.uleb128 0x10
	.string	"x"
	.byte	0x1
	.value	0x264
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -19
	.uleb128 0x11
	.long	.LBB36
	.long	.LBE36-.LBB36
	.uleb128 0x10
	.string	"fg"
	.byte	0x1
	.value	0x265
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x11
	.long	.LBB37
	.long	.LBE37-.LBB37
	.uleb128 0x10
	.string	"i"
	.byte	0x1
	.value	0x269
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	.LASF32
	.byte	0x1
	.value	0x24a
	.long	.LFB32
	.long	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0x46c
	.uleb128 0x11
	.long	.LBB29
	.long	.LBE29-.LBB29
	.uleb128 0x10
	.string	"y"
	.byte	0x1
	.value	0x24b
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x11
	.long	.LBB30
	.long	.LBE30-.LBB30
	.uleb128 0x10
	.string	"bg"
	.byte	0x1
	.value	0x24d
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x11
	.long	.LBB31
	.long	.LBE31-.LBB31
	.uleb128 0x10
	.string	"x"
	.byte	0x1
	.value	0x251
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -19
	.uleb128 0x11
	.long	.LBB32
	.long	.LBE32-.LBB32
	.uleb128 0x10
	.string	"fg"
	.byte	0x1
	.value	0x252
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	.LASF33
	.byte	0x1
	.value	0x23a
	.long	.LFB31
	.long	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x490
	.uleb128 0x10
	.string	"i"
	.byte	0x1
	.value	0x23b
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x12
	.long	.LASF39
	.byte	0x1
	.value	0x217
	.long	.LFB30
	.long	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x4da
	.uleb128 0x13
	.string	"str"
	.byte	0x1
	.value	0x217
	.long	0x4da
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x10
	.string	"i"
	.byte	0x1
	.value	0x218
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x11
	.long	.LBB28
	.long	.LBE28-.LBB28
	.uleb128 0x10
	.string	"c"
	.byte	0x1
	.value	0x21a
	.long	0x4e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x4e0
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF34
	.uleb128 0x14
	.long	.LASF35
	.byte	0x1
	.value	0x1fc
	.long	0x49
	.long	.LFB29
	.long	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x53a
	.uleb128 0x13
	.string	"str"
	.byte	0x1
	.value	0x1fc
	.long	0x4da
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x10
	.string	"i"
	.byte	0x1
	.value	0x1fd
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x10
	.string	"a"
	.byte	0x1
	.value	0x1fe
	.long	0x4e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x10
	.string	"val"
	.byte	0x1
	.value	0x1ff
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x14
	.long	.LASF36
	.byte	0x1
	.value	0x1ea
	.long	0x49
	.long	.LFB28
	.long	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x58d
	.uleb128 0x13
	.string	"str"
	.byte	0x1
	.value	0x1ea
	.long	0x4da
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x10
	.string	"i"
	.byte	0x1
	.value	0x1eb
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x10
	.string	"a"
	.byte	0x1
	.value	0x1ec
	.long	0x4e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x10
	.string	"val"
	.byte	0x1
	.value	0x1ed
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x14
	.long	.LASF37
	.byte	0x1
	.value	0x1d8
	.long	0x49
	.long	.LFB27
	.long	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x5e0
	.uleb128 0x13
	.string	"str"
	.byte	0x1
	.value	0x1d8
	.long	0x4da
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x10
	.string	"i"
	.byte	0x1
	.value	0x1d9
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x10
	.string	"a"
	.byte	0x1
	.value	0x1da
	.long	0x4e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x10
	.string	"val"
	.byte	0x1
	.value	0x1db
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x14
	.long	.LASF38
	.byte	0x1
	.value	0x1be
	.long	0x49
	.long	.LFB26
	.long	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x633
	.uleb128 0x13
	.string	"str"
	.byte	0x1
	.value	0x1be
	.long	0x4da
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x10
	.string	"i"
	.byte	0x1
	.value	0x1bf
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x10
	.string	"a"
	.byte	0x1
	.value	0x1c0
	.long	0x4e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x10
	.string	"val"
	.byte	0x1
	.value	0x1c1
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x12
	.long	.LASF40
	.byte	0x1
	.value	0x1b4
	.long	.LFB25
	.long	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x678
	.uleb128 0x13
	.string	"val"
	.byte	0x1
	.value	0x1b4
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x10
	.string	"len"
	.byte	0x1
	.value	0x1b5
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x10
	.string	"buf"
	.byte	0x1
	.value	0x1b6
	.long	0x678
	.uleb128 0x3
	.byte	0x91
	.sleb128 -28
	.byte	0x6
	.byte	0
	.uleb128 0x9
	.long	0x4e0
	.long	0x68b
	.uleb128 0x15
	.long	0x156
	.uleb128 0x3
	.byte	0x91
	.sleb128 -24
	.byte	0x6
	.byte	0
	.uleb128 0x12
	.long	.LASF41
	.byte	0x1
	.value	0x1ad
	.long	.LFB24
	.long	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x6d0
	.uleb128 0x13
	.string	"val"
	.byte	0x1
	.value	0x1ad
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.string	"len"
	.byte	0x1
	.value	0x1ad
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x10
	.string	"buf"
	.byte	0x1
	.value	0x1ae
	.long	0x6d0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -24
	.byte	0x6
	.byte	0
	.uleb128 0x9
	.long	0x4e0
	.long	0x6e3
	.uleb128 0x15
	.long	0x156
	.uleb128 0x3
	.byte	0x91
	.sleb128 -20
	.byte	0x6
	.byte	0
	.uleb128 0x12
	.long	.LASF42
	.byte	0x1
	.value	0x1a4
	.long	.LFB23
	.long	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x75d
	.uleb128 0x13
	.string	"val"
	.byte	0x1
	.value	0x1a4
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.string	"len"
	.byte	0x1
	.value	0x1a4
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x16
	.long	.LASF43
	.byte	0x1
	.value	0x1a4
	.long	0x4e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x10
	.string	"buf"
	.byte	0x1
	.value	0x1a5
	.long	0x75d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -28
	.byte	0x6
	.uleb128 0x17
	.long	.LASF44
	.byte	0x1
	.value	0x1a7
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0x11
	.long	.LBB27
	.long	.LBE27-.LBB27
	.uleb128 0x10
	.string	"i"
	.byte	0x1
	.value	0x1a6
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	0x4e0
	.long	0x770
	.uleb128 0x15
	.long	0x156
	.uleb128 0x3
	.byte	0x91
	.sleb128 -24
	.byte	0x6
	.byte	0
	.uleb128 0x18
	.long	.LASF45
	.byte	0x1
	.value	0x19c
	.long	.LFB22
	.long	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x7b4
	.uleb128 0x13
	.string	"val"
	.byte	0x1
	.value	0x19c
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.string	"buf"
	.byte	0x1
	.value	0x19c
	.long	0x4da
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x13
	.string	"len"
	.byte	0x1
	.value	0x19c
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x14
	.long	.LASF46
	.byte	0x1
	.value	0x192
	.long	0x25
	.long	.LFB21
	.long	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x7ed
	.uleb128 0x13
	.string	"val"
	.byte	0x1
	.value	0x192
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x10
	.string	"len"
	.byte	0x1
	.value	0x193
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x12
	.long	.LASF47
	.byte	0x1
	.value	0x18a
	.long	.LFB20
	.long	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x832
	.uleb128 0x13
	.string	"val"
	.byte	0x1
	.value	0x18a
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x10
	.string	"len"
	.byte	0x1
	.value	0x18b
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x10
	.string	"buf"
	.byte	0x1
	.value	0x18c
	.long	0x832
	.uleb128 0x3
	.byte	0x91
	.sleb128 -28
	.byte	0x6
	.byte	0
	.uleb128 0x9
	.long	0x4e0
	.long	0x845
	.uleb128 0x15
	.long	0x156
	.uleb128 0x3
	.byte	0x91
	.sleb128 -24
	.byte	0x6
	.byte	0
	.uleb128 0x12
	.long	.LASF48
	.byte	0x1
	.value	0x183
	.long	.LFB19
	.long	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x88a
	.uleb128 0x13
	.string	"val"
	.byte	0x1
	.value	0x183
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.string	"len"
	.byte	0x1
	.value	0x183
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x10
	.string	"buf"
	.byte	0x1
	.value	0x184
	.long	0x88a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -24
	.byte	0x6
	.byte	0
	.uleb128 0x9
	.long	0x4e0
	.long	0x89d
	.uleb128 0x15
	.long	0x156
	.uleb128 0x3
	.byte	0x91
	.sleb128 -20
	.byte	0x6
	.byte	0
	.uleb128 0x12
	.long	.LASF49
	.byte	0x1
	.value	0x17a
	.long	.LFB18
	.long	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x917
	.uleb128 0x13
	.string	"val"
	.byte	0x1
	.value	0x17a
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.string	"len"
	.byte	0x1
	.value	0x17a
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x16
	.long	.LASF43
	.byte	0x1
	.value	0x17a
	.long	0x4e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x10
	.string	"buf"
	.byte	0x1
	.value	0x17b
	.long	0x917
	.uleb128 0x3
	.byte	0x91
	.sleb128 -28
	.byte	0x6
	.uleb128 0x17
	.long	.LASF44
	.byte	0x1
	.value	0x17d
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0x11
	.long	.LBB26
	.long	.LBE26-.LBB26
	.uleb128 0x10
	.string	"i"
	.byte	0x1
	.value	0x17c
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	0x4e0
	.long	0x92a
	.uleb128 0x15
	.long	0x156
	.uleb128 0x3
	.byte	0x91
	.sleb128 -24
	.byte	0x6
	.byte	0
	.uleb128 0x18
	.long	.LASF50
	.byte	0x1
	.value	0x172
	.long	.LFB17
	.long	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x96e
	.uleb128 0x13
	.string	"val"
	.byte	0x1
	.value	0x172
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.string	"buf"
	.byte	0x1
	.value	0x172
	.long	0x4da
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x13
	.string	"len"
	.byte	0x1
	.value	0x172
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x14
	.long	.LASF51
	.byte	0x1
	.value	0x168
	.long	0x25
	.long	.LFB16
	.long	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x9a7
	.uleb128 0x13
	.string	"val"
	.byte	0x1
	.value	0x168
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x10
	.string	"len"
	.byte	0x1
	.value	0x169
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x12
	.long	.LASF52
	.byte	0x1
	.value	0x160
	.long	.LFB15
	.long	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x9ec
	.uleb128 0x13
	.string	"val"
	.byte	0x1
	.value	0x160
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x10
	.string	"len"
	.byte	0x1
	.value	0x161
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x10
	.string	"buf"
	.byte	0x1
	.value	0x162
	.long	0x9ec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -28
	.byte	0x6
	.byte	0
	.uleb128 0x9
	.long	0x4e0
	.long	0x9ff
	.uleb128 0x15
	.long	0x156
	.uleb128 0x3
	.byte	0x91
	.sleb128 -24
	.byte	0x6
	.byte	0
	.uleb128 0x12
	.long	.LASF53
	.byte	0x1
	.value	0x159
	.long	.LFB14
	.long	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0xa44
	.uleb128 0x13
	.string	"val"
	.byte	0x1
	.value	0x159
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.string	"len"
	.byte	0x1
	.value	0x159
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x10
	.string	"buf"
	.byte	0x1
	.value	0x15a
	.long	0xa44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -24
	.byte	0x6
	.byte	0
	.uleb128 0x9
	.long	0x4e0
	.long	0xa57
	.uleb128 0x15
	.long	0x156
	.uleb128 0x3
	.byte	0x91
	.sleb128 -20
	.byte	0x6
	.byte	0
	.uleb128 0x12
	.long	.LASF54
	.byte	0x1
	.value	0x150
	.long	.LFB13
	.long	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0xad1
	.uleb128 0x13
	.string	"val"
	.byte	0x1
	.value	0x150
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.string	"len"
	.byte	0x1
	.value	0x150
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x16
	.long	.LASF43
	.byte	0x1
	.value	0x150
	.long	0x4e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x10
	.string	"buf"
	.byte	0x1
	.value	0x151
	.long	0xad1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -28
	.byte	0x6
	.uleb128 0x17
	.long	.LASF44
	.byte	0x1
	.value	0x153
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0x11
	.long	.LBB25
	.long	.LBE25-.LBB25
	.uleb128 0x10
	.string	"i"
	.byte	0x1
	.value	0x152
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	0x4e0
	.long	0xae4
	.uleb128 0x15
	.long	0x156
	.uleb128 0x3
	.byte	0x91
	.sleb128 -24
	.byte	0x6
	.byte	0
	.uleb128 0x18
	.long	.LASF55
	.byte	0x1
	.value	0x148
	.long	.LFB12
	.long	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0xb28
	.uleb128 0x13
	.string	"val"
	.byte	0x1
	.value	0x148
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.string	"buf"
	.byte	0x1
	.value	0x148
	.long	0x4da
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x13
	.string	"len"
	.byte	0x1
	.value	0x148
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x14
	.long	.LASF56
	.byte	0x1
	.value	0x13e
	.long	0x25
	.long	.LFB11
	.long	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0xb61
	.uleb128 0x13
	.string	"val"
	.byte	0x1
	.value	0x13e
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x10
	.string	"len"
	.byte	0x1
	.value	0x13f
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x12
	.long	.LASF57
	.byte	0x1
	.value	0x136
	.long	.LFB10
	.long	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0xba6
	.uleb128 0x13
	.string	"val"
	.byte	0x1
	.value	0x136
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x10
	.string	"len"
	.byte	0x1
	.value	0x137
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x10
	.string	"buf"
	.byte	0x1
	.value	0x138
	.long	0xba6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -28
	.byte	0x6
	.byte	0
	.uleb128 0x9
	.long	0x4e0
	.long	0xbb9
	.uleb128 0x15
	.long	0x156
	.uleb128 0x3
	.byte	0x91
	.sleb128 -24
	.byte	0x6
	.byte	0
	.uleb128 0x12
	.long	.LASF58
	.byte	0x1
	.value	0x12f
	.long	.LFB9
	.long	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0xbfe
	.uleb128 0x13
	.string	"val"
	.byte	0x1
	.value	0x12f
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.string	"len"
	.byte	0x1
	.value	0x12f
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x10
	.string	"buf"
	.byte	0x1
	.value	0x130
	.long	0xbfe
	.uleb128 0x3
	.byte	0x91
	.sleb128 -24
	.byte	0x6
	.byte	0
	.uleb128 0x9
	.long	0x4e0
	.long	0xc11
	.uleb128 0x15
	.long	0x156
	.uleb128 0x3
	.byte	0x91
	.sleb128 -20
	.byte	0x6
	.byte	0
	.uleb128 0x12
	.long	.LASF59
	.byte	0x1
	.value	0x126
	.long	.LFB8
	.long	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0xc8b
	.uleb128 0x13
	.string	"val"
	.byte	0x1
	.value	0x126
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.string	"len"
	.byte	0x1
	.value	0x126
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x16
	.long	.LASF43
	.byte	0x1
	.value	0x126
	.long	0x4e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x10
	.string	"buf"
	.byte	0x1
	.value	0x127
	.long	0xc8b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -28
	.byte	0x6
	.uleb128 0x17
	.long	.LASF44
	.byte	0x1
	.value	0x129
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0x11
	.long	.LBB24
	.long	.LBE24-.LBB24
	.uleb128 0x10
	.string	"i"
	.byte	0x1
	.value	0x128
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	0x4e0
	.long	0xc9e
	.uleb128 0x15
	.long	0x156
	.uleb128 0x3
	.byte	0x91
	.sleb128 -24
	.byte	0x6
	.byte	0
	.uleb128 0x18
	.long	.LASF60
	.byte	0x1
	.value	0x11a
	.long	.LFB7
	.long	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0xce2
	.uleb128 0x13
	.string	"val"
	.byte	0x1
	.value	0x11a
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.string	"buf"
	.byte	0x1
	.value	0x11a
	.long	0x4da
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x13
	.string	"len"
	.byte	0x1
	.value	0x11a
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x14
	.long	.LASF61
	.byte	0x1
	.value	0x110
	.long	0x25
	.long	.LFB6
	.long	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0xd1b
	.uleb128 0x13
	.string	"val"
	.byte	0x1
	.value	0x110
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x10
	.string	"len"
	.byte	0x1
	.value	0x111
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x19
	.long	.LASF62
	.byte	0x1
	.byte	0x4d
	.long	.LFB5
	.long	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0xfee
	.uleb128 0x1a
	.string	"c"
	.byte	0x1
	.byte	0x4d
	.long	0x30
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0xf
	.long	.LBB2
	.long	.LBE2-.LBB2
	.long	0xd57
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.byte	0x64
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xf
	.long	.LBB3
	.long	.LBE3-.LBB3
	.long	0xd74
	.uleb128 0x1c
	.long	.LASF11
	.byte	0x1
	.byte	0x6d
	.long	0x37
	.uleb128 0x3
	.byte	0x91
	.sleb128 -66
	.byte	0
	.uleb128 0xf
	.long	.LBB4
	.long	.LBE4-.LBB4
	.long	0xdb6
	.uleb128 0x1c
	.long	.LASF63
	.byte	0x1
	.byte	0x84
	.long	0x37
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1c
	.long	.LASF64
	.byte	0x1
	.byte	0x85
	.long	0x37
	.uleb128 0x3
	.byte	0x91
	.sleb128 -70
	.uleb128 0x11
	.long	.LBB5
	.long	.LBE5-.LBB5
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.byte	0x86
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	.LBB6
	.long	.LBE6-.LBB6
	.long	0xdf8
	.uleb128 0x1c
	.long	.LASF63
	.byte	0x1
	.byte	0x8a
	.long	0x37
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1c
	.long	.LASF64
	.byte	0x1
	.byte	0x8b
	.long	0x37
	.uleb128 0x3
	.byte	0x91
	.sleb128 -74
	.uleb128 0x11
	.long	.LBB7
	.long	.LBE7-.LBB7
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.byte	0x8c
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	.LBB8
	.long	.LBE8-.LBB8
	.long	0xe3a
	.uleb128 0x1c
	.long	.LASF63
	.byte	0x1
	.byte	0xb6
	.long	0x37
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1c
	.long	.LASF64
	.byte	0x1
	.byte	0xb7
	.long	0x37
	.uleb128 0x3
	.byte	0x91
	.sleb128 -78
	.uleb128 0x11
	.long	.LBB9
	.long	.LBE9-.LBB9
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.byte	0xb8
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	.LBB10
	.long	.LBE10-.LBB10
	.long	0xe7c
	.uleb128 0x1c
	.long	.LASF63
	.byte	0x1
	.byte	0xbc
	.long	0x37
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1c
	.long	.LASF64
	.byte	0x1
	.byte	0xbd
	.long	0x37
	.uleb128 0x3
	.byte	0x91
	.sleb128 -82
	.uleb128 0x11
	.long	.LBB11
	.long	.LBE11-.LBB11
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.byte	0xbe
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	.LBB12
	.long	.LBE12-.LBB12
	.long	0xebe
	.uleb128 0x1c
	.long	.LASF63
	.byte	0x1
	.byte	0xc2
	.long	0x37
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x1c
	.long	.LASF64
	.byte	0x1
	.byte	0xc3
	.long	0x37
	.uleb128 0x3
	.byte	0x91
	.sleb128 -86
	.uleb128 0x11
	.long	.LBB13
	.long	.LBE13-.LBB13
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.byte	0xc4
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	.LBB14
	.long	.LBE14-.LBB14
	.long	0xf00
	.uleb128 0x1c
	.long	.LASF63
	.byte	0x1
	.byte	0xcd
	.long	0x37
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1c
	.long	.LASF64
	.byte	0x1
	.byte	0xce
	.long	0x37
	.uleb128 0x3
	.byte	0x91
	.sleb128 -90
	.uleb128 0x11
	.long	.LBB15
	.long	.LBE15-.LBB15
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.byte	0xcf
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	.LBB16
	.long	.LBE16-.LBB16
	.long	0xf42
	.uleb128 0x1c
	.long	.LASF63
	.byte	0x1
	.byte	0xd3
	.long	0x37
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x1c
	.long	.LASF64
	.byte	0x1
	.byte	0xd4
	.long	0x37
	.uleb128 0x3
	.byte	0x91
	.sleb128 -94
	.uleb128 0x11
	.long	.LBB17
	.long	.LBE17-.LBB17
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.byte	0xd5
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	.LBB18
	.long	.LBE18-.LBB18
	.long	0xf84
	.uleb128 0x1c
	.long	.LASF63
	.byte	0x1
	.byte	0xd9
	.long	0x37
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1c
	.long	.LASF64
	.byte	0x1
	.byte	0xda
	.long	0x37
	.uleb128 0x3
	.byte	0x91
	.sleb128 -98
	.uleb128 0x11
	.long	.LBB19
	.long	.LBE19-.LBB19
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.byte	0xdb
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	.LBB20
	.long	.LBE20-.LBB20
	.long	0xf9e
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.byte	0xe2
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0xf
	.long	.LBB21
	.long	.LBE21-.LBB21
	.long	0xfd4
	.uleb128 0x1c
	.long	.LASF65
	.byte	0x1
	.byte	0xff
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x11
	.long	.LBB22
	.long	.LBE22-.LBB22
	.uleb128 0x17
	.long	.LASF66
	.byte	0x1
	.value	0x100
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	.LBB23
	.long	.LBE23-.LBB23
	.uleb128 0x17
	.long	.LASF66
	.byte	0x1
	.value	0x103
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	.LASF67
	.byte	0x1
	.byte	0x37
	.long	.LFB4
	.long	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x1012
	.uleb128 0x1c
	.long	.LASF68
	.byte	0x1
	.byte	0x39
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x19
	.long	.LASF69
	.byte	0x1
	.byte	0x2d
	.long	.LFB3
	.long	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x1052
	.uleb128 0x1e
	.long	.LASF68
	.byte	0x1
	.byte	0x2d
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1e
	.long	.LASF44
	.byte	0x1
	.byte	0x2d
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.long	.LASF70
	.byte	0x1
	.byte	0x2d
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x19
	.long	.LASF71
	.byte	0x1
	.byte	0x20
	.long	.LFB2
	.long	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x108e
	.uleb128 0x1a
	.string	"x"
	.byte	0x1
	.byte	0x20
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1a
	.string	"y"
	.byte	0x1
	.byte	0x20
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1c
	.long	.LASF68
	.byte	0x1
	.byte	0x21
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1f
	.long	.LASF72
	.byte	0x1
	.byte	0x17
	.long	0x25
	.long	.LFB1
	.long	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x10b6
	.uleb128 0x1c
	.long	.LASF68
	.byte	0x1
	.byte	0x19
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x20
	.long	.LASF73
	.byte	0x1
	.byte	0xe
	.long	0x25
	.long	.LFB0
	.long	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1c
	.long	.LASF68
	.byte	0x1
	.byte	0x10
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x1c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.Ltext0
	.long	.Letext0-.Ltext0
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF28:
	.string	"kprintf_mode"
.LASF29:
	.string	"welcome"
.LASF65:
	.string	"isource"
.LASF69:
	.string	"vga16tty_cursor_mode"
.LASF6:
	.string	"vga_buffer"
.LASF20:
	.string	"sizetype"
.LASF58:
	.string	"printHf"
.LASF39:
	.string	"kprintf"
.LASF77:
	.string	"main"
.LASF17:
	.string	"putchar_ESCAPE_PARAM"
.LASF70:
	.string	"mode"
.LASF45:
	.string	"strB"
.LASF55:
	.string	"strD"
.LASF1:
	.string	"uint16"
.LASF40:
	.string	"printB"
.LASF12:
	.string	"VGA_ADDRESS"
.LASF0:
	.string	"uint8"
.LASF64:
	.string	"stop"
.LASF33:
	.string	"test1"
.LASF32:
	.string	"test2"
.LASF31:
	.string	"test3"
.LASF30:
	.string	"test4"
.LASF60:
	.string	"strH"
.LASF59:
	.string	"printHfs"
.LASF47:
	.string	"printO"
.LASF18:
	.string	"vga_putchar_mode"
.LASF50:
	.string	"strO"
.LASF7:
	.string	"vga_pos_x"
.LASF8:
	.string	"vga_pos_y"
.LASF62:
	.string	"vga16tty_putchar"
.LASF14:
	.string	"vga16tty_color_bg"
.LASF16:
	.string	"putchar_ESCAPE"
.LASF52:
	.string	"printD"
.LASF68:
	.string	"offset"
.LASF75:
	.string	"kernel.c"
.LASF22:
	.string	"vga_pos_x2"
.LASF57:
	.string	"printH"
.LASF74:
	.string	"GNU C11 6.3.0 20170124 -m32 -masm=intel -mtune=generic -march=i686 -g -fno-stack-protector"
.LASF41:
	.string	"printBf"
.LASF49:
	.string	"printOfs"
.LASF9:
	.string	"vga_width"
.LASF2:
	.string	"unsigned char"
.LASF43:
	.string	"space"
.LASF5:
	.string	"unsigned int"
.LASF19:
	.string	"vga_putchar_parameter"
.LASF51:
	.string	"lenO"
.LASF46:
	.string	"lenB"
.LASF56:
	.string	"lenD"
.LASF63:
	.string	"start"
.LASF3:
	.string	"short unsigned int"
.LASF61:
	.string	"lenH"
.LASF35:
	.string	"valB"
.LASF37:
	.string	"valD"
.LASF25:
	.string	"kprintf_mode_modes"
.LASF34:
	.string	"char"
.LASF38:
	.string	"valH"
.LASF67:
	.string	"vga16tty_init"
.LASF23:
	.string	"vga_pos_y2"
.LASF36:
	.string	"valO"
.LASF71:
	.string	"vga16tty_cursor_set"
.LASF26:
	.string	"kprintf_WRITE"
.LASF4:
	.string	"uint32"
.LASF54:
	.string	"printDfs"
.LASF24:
	.string	"vga_putchar_mode_modes"
.LASF44:
	.string	"size"
.LASF73:
	.string	"vga16tty_cursor_get_x"
.LASF72:
	.string	"vga16tty_cursor_get_y"
.LASF66:
	.string	"idest"
.LASF15:
	.string	"putchar_WRITE"
.LASF21:
	.string	"vga_putchar_parameters"
.LASF27:
	.string	"kprintf_SEQ"
.LASF48:
	.string	"printOf"
.LASF10:
	.string	"vga_height"
.LASF11:
	.string	"vga_index"
.LASF53:
	.string	"printDf"
.LASF42:
	.string	"printBfs"
.LASF76:
	.string	"/home/knoppix/Dokumente/\302\265Kernel"
.LASF13:
	.string	"vga16tty_color_fg"
	.ident	"GCC: (Debian 6.3.0-5) 6.3.0 20170124"
	.section	.note.GNU-stack,"",@progbits
