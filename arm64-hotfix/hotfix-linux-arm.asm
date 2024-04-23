
main:     file format elf64-littleaarch64


Disassembly of section .init:

0000000000000ab8 <_init>:
 ab8:	d503201f 	nop
 abc:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
 ac0:	910003fd 	mov	x29, sp
 ac4:	9400006c 	bl	c74 <call_weak_fn>
 ac8:	a8c17bfd 	ldp	x29, x30, [sp], #16
 acc:	d65f03c0 	ret

Disassembly of section .plt:

0000000000000ad0 <.plt>:
 ad0:	a9bf7bf0 	stp	x16, x30, [sp, #-16]!
 ad4:	f00000f0 	adrp	x16, 1f000 <__FRAME_END__+0x1da58>
 ad8:	f947fe11 	ldr	x17, [x16, #4088]
 adc:	913fe210 	add	x16, x16, #0xff8
 ae0:	d61f0220 	br	x17
 ae4:	d503201f 	nop
 ae8:	d503201f 	nop
 aec:	d503201f 	nop

0000000000000af0 <sleep@plt>:
 af0:	90000110 	adrp	x16, 20000 <sleep@GLIBC_2.17>
 af4:	f9400211 	ldr	x17, [x16]
 af8:	91000210 	add	x16, x16, #0x0
 afc:	d61f0220 	br	x17

0000000000000b00 <mprotect@plt>:
 b00:	90000110 	adrp	x16, 20000 <sleep@GLIBC_2.17>
 b04:	f9400611 	ldr	x17, [x16, #8]
 b08:	91002210 	add	x16, x16, #0x8
 b0c:	d61f0220 	br	x17

0000000000000b10 <__cxa_finalize@plt>:
 b10:	90000110 	adrp	x16, 20000 <sleep@GLIBC_2.17>
 b14:	f9400a11 	ldr	x17, [x16, #16]
 b18:	91004210 	add	x16, x16, #0x10
 b1c:	d61f0220 	br	x17

0000000000000b20 <__libc_start_main@plt>:
 b20:	90000110 	adrp	x16, 20000 <sleep@GLIBC_2.17>
 b24:	f9400e11 	ldr	x17, [x16, #24]
 b28:	91006210 	add	x16, x16, #0x18
 b2c:	d61f0220 	br	x17

0000000000000b30 <_ZNSolsEPKv@plt>:
 b30:	90000110 	adrp	x16, 20000 <sleep@GLIBC_2.17>
 b34:	f9401211 	ldr	x17, [x16, #32]
 b38:	91008210 	add	x16, x16, #0x20
 b3c:	d61f0220 	br	x17

0000000000000b40 <dlclose@plt>:
 b40:	90000110 	adrp	x16, 20000 <sleep@GLIBC_2.17>
 b44:	f9401611 	ldr	x17, [x16, #40]
 b48:	9100a210 	add	x16, x16, #0x28
 b4c:	d61f0220 	br	x17

0000000000000b50 <dlsym@plt>:
 b50:	90000110 	adrp	x16, 20000 <sleep@GLIBC_2.17>
 b54:	f9401a11 	ldr	x17, [x16, #48]
 b58:	9100c210 	add	x16, x16, #0x30
 b5c:	d61f0220 	br	x17

0000000000000b60 <dlerror@plt>:
 b60:	90000110 	adrp	x16, 20000 <sleep@GLIBC_2.17>
 b64:	f9401e11 	ldr	x17, [x16, #56]
 b68:	9100e210 	add	x16, x16, #0x38
 b6c:	d61f0220 	br	x17

0000000000000b70 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>:
 b70:	90000110 	adrp	x16, 20000 <sleep@GLIBC_2.17>
 b74:	f9402211 	ldr	x17, [x16, #64]
 b78:	91010210 	add	x16, x16, #0x40
 b7c:	d61f0220 	br	x17

0000000000000b80 <_ZNSolsEPFRSoS_E@plt>:
 b80:	90000110 	adrp	x16, 20000 <sleep@GLIBC_2.17>
 b84:	f9402611 	ldr	x17, [x16, #72]
 b88:	91012210 	add	x16, x16, #0x48
 b8c:	d61f0220 	br	x17

0000000000000b90 <__cxa_atexit@plt>:
 b90:	90000110 	adrp	x16, 20000 <sleep@GLIBC_2.17>
 b94:	f9402a11 	ldr	x17, [x16, #80]
 b98:	91014210 	add	x16, x16, #0x50
 b9c:	d61f0220 	br	x17

0000000000000ba0 <__errno_location@plt>:
 ba0:	90000110 	adrp	x16, 20000 <sleep@GLIBC_2.17>
 ba4:	f9402e11 	ldr	x17, [x16, #88]
 ba8:	91016210 	add	x16, x16, #0x58
 bac:	d61f0220 	br	x17

0000000000000bb0 <dlopen@plt>:
 bb0:	90000110 	adrp	x16, 20000 <sleep@GLIBC_2.17>
 bb4:	f9403211 	ldr	x17, [x16, #96]
 bb8:	91018210 	add	x16, x16, #0x60
 bbc:	d61f0220 	br	x17

0000000000000bc0 <_ZNSt8ios_base4InitC1Ev@plt>:
 bc0:	90000110 	adrp	x16, 20000 <sleep@GLIBC_2.17>
 bc4:	f9403611 	ldr	x17, [x16, #104]
 bc8:	9101a210 	add	x16, x16, #0x68
 bcc:	d61f0220 	br	x17

0000000000000bd0 <abort@plt>:
 bd0:	90000110 	adrp	x16, 20000 <sleep@GLIBC_2.17>
 bd4:	f9403a11 	ldr	x17, [x16, #112]
 bd8:	9101c210 	add	x16, x16, #0x70
 bdc:	d61f0220 	br	x17

0000000000000be0 <signal@plt>:
 be0:	90000110 	adrp	x16, 20000 <sleep@GLIBC_2.17>
 be4:	f9403e11 	ldr	x17, [x16, #120]
 be8:	9101e210 	add	x16, x16, #0x78
 bec:	d61f0220 	br	x17

0000000000000bf0 <_ZNSolsEi@plt>:
 bf0:	90000110 	adrp	x16, 20000 <sleep@GLIBC_2.17>
 bf4:	f9404211 	ldr	x17, [x16, #128]
 bf8:	91020210 	add	x16, x16, #0x80
 bfc:	d61f0220 	br	x17

0000000000000c00 <getpagesize@plt>:
 c00:	90000110 	adrp	x16, 20000 <sleep@GLIBC_2.17>
 c04:	f9404611 	ldr	x17, [x16, #136]
 c08:	91022210 	add	x16, x16, #0x88
 c0c:	d61f0220 	br	x17

0000000000000c10 <__gmon_start__@plt>:
 c10:	90000110 	adrp	x16, 20000 <sleep@GLIBC_2.17>
 c14:	f9404a11 	ldr	x17, [x16, #144]
 c18:	91024210 	add	x16, x16, #0x90
 c1c:	d61f0220 	br	x17

Disassembly of section .text:

0000000000000c40 <_start>:
     c40:	d503201f 	nop
     c44:	d280001d 	mov	x29, #0x0                   	// #0
     c48:	d280001e 	mov	x30, #0x0                   	// #0
     c4c:	aa0003e5 	mov	x5, x0
     c50:	f94003e1 	ldr	x1, [sp]
     c54:	910023e2 	add	x2, sp, #0x8
     c58:	910003e6 	mov	x6, sp
     c5c:	f00000e0 	adrp	x0, 1f000 <__FRAME_END__+0x1da58>
     c60:	f947d000 	ldr	x0, [x0, #4000]
     c64:	d2800003 	mov	x3, #0x0                   	// #0
     c68:	d2800004 	mov	x4, #0x0                   	// #0
     c6c:	97ffffad 	bl	b20 <__libc_start_main@plt>
     c70:	97ffffd8 	bl	bd0 <abort@plt>

0000000000000c74 <call_weak_fn>:
     c74:	f00000e0 	adrp	x0, 1f000 <__FRAME_END__+0x1da58>
     c78:	f947e800 	ldr	x0, [x0, #4048]
     c7c:	b4000040 	cbz	x0, c84 <call_weak_fn+0x10>
     c80:	17ffffe4 	b	c10 <__gmon_start__@plt>
     c84:	d65f03c0 	ret
     c88:	d503201f 	nop
     c8c:	d503201f 	nop

0000000000000c90 <deregister_tm_clones>:
     c90:	90000100 	adrp	x0, 20000 <sleep@GLIBC_2.17>
     c94:	9102a000 	add	x0, x0, #0xa8
     c98:	90000101 	adrp	x1, 20000 <sleep@GLIBC_2.17>
     c9c:	9102a021 	add	x1, x1, #0xa8
     ca0:	eb00003f 	cmp	x1, x0
     ca4:	540000c0 	b.eq	cbc <deregister_tm_clones+0x2c>  // b.none
     ca8:	f00000e1 	adrp	x1, 1f000 <__FRAME_END__+0x1da58>
     cac:	f947e421 	ldr	x1, [x1, #4040]
     cb0:	b4000061 	cbz	x1, cbc <deregister_tm_clones+0x2c>
     cb4:	aa0103f0 	mov	x16, x1
     cb8:	d61f0200 	br	x16
     cbc:	d65f03c0 	ret

0000000000000cc0 <register_tm_clones>:
     cc0:	90000100 	adrp	x0, 20000 <sleep@GLIBC_2.17>
     cc4:	9102a000 	add	x0, x0, #0xa8
     cc8:	90000101 	adrp	x1, 20000 <sleep@GLIBC_2.17>
     ccc:	9102a021 	add	x1, x1, #0xa8
     cd0:	cb000021 	sub	x1, x1, x0
     cd4:	d37ffc22 	lsr	x2, x1, #63
     cd8:	8b810c41 	add	x1, x2, x1, asr #3
     cdc:	9341fc21 	asr	x1, x1, #1
     ce0:	b40000c1 	cbz	x1, cf8 <register_tm_clones+0x38>
     ce4:	f00000e2 	adrp	x2, 1f000 <__FRAME_END__+0x1da58>
     ce8:	f947ec42 	ldr	x2, [x2, #4056]
     cec:	b4000062 	cbz	x2, cf8 <register_tm_clones+0x38>
     cf0:	aa0203f0 	mov	x16, x2
     cf4:	d61f0200 	br	x16
     cf8:	d65f03c0 	ret
     cfc:	d503201f 	nop

0000000000000d00 <__do_global_dtors_aux>:
     d00:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
     d04:	910003fd 	mov	x29, sp
     d08:	f9000bf3 	str	x19, [sp, #16]
     d0c:	90000113 	adrp	x19, 20000 <sleep@GLIBC_2.17>
     d10:	3942a260 	ldrb	w0, [x19, #168]
     d14:	35000140 	cbnz	w0, d3c <__do_global_dtors_aux+0x3c>
     d18:	f00000e0 	adrp	x0, 1f000 <__FRAME_END__+0x1da58>
     d1c:	f947d800 	ldr	x0, [x0, #4016]
     d20:	b4000080 	cbz	x0, d30 <__do_global_dtors_aux+0x30>
     d24:	90000100 	adrp	x0, 20000 <sleep@GLIBC_2.17>
     d28:	f9405000 	ldr	x0, [x0, #160]
     d2c:	97ffff79 	bl	b10 <__cxa_finalize@plt>
     d30:	97ffffd8 	bl	c90 <deregister_tm_clones>
     d34:	52800020 	mov	w0, #0x1                   	// #1
     d38:	3902a260 	strb	w0, [x19, #168]
     d3c:	f9400bf3 	ldr	x19, [sp, #16]
     d40:	a8c27bfd 	ldp	x29, x30, [sp], #32
     d44:	d65f03c0 	ret
     d48:	d503201f 	nop
     d4c:	d503201f 	nop

0000000000000d50 <frame_dummy>:
     d50:	17ffffdc 	b	cc0 <register_tm_clones>

0000000000000d54 <main>:
     d54:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
     d58:	910003fd 	mov	x29, sp
     d5c:	94000112 	bl	11a4 <_Z19init_hot_fix_signalv>
     d60:	9400002b 	bl	e0c <_Z14business_logicv>
     d64:	52800000 	mov	w0, #0x0                   	// #0
     d68:	a8c17bfd 	ldp	x29, x30, [sp], #16
     d6c:	d65f03c0 	ret

0000000000000d70 <_Z13need_fix_funcv>:
     d70:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
     d74:	910003fd 	mov	x29, sp
     d78:	b0000000 	adrp	x0, 1000 <_ZL8fix_funcPKvPv+0x160>
     d7c:	910a0001 	add	x1, x0, #0x280
     d80:	f00000e0 	adrp	x0, 1f000 <__FRAME_END__+0x1da58>
     d84:	f947dc00 	ldr	x0, [x0, #4024]
     d88:	97ffff7a 	bl	b70 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
     d8c:	aa0003e2 	mov	x2, x0
     d90:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
     d94:	9135c001 	add	x1, x0, #0xd70
     d98:	aa0203e0 	mov	x0, x2
     d9c:	97ffff65 	bl	b30 <_ZNSolsEPKv@plt>
     da0:	f00000e1 	adrp	x1, 1f000 <__FRAME_END__+0x1da58>
     da4:	f947d421 	ldr	x1, [x1, #4008]
     da8:	97ffff76 	bl	b80 <_ZNSolsEPFRSoS_E@plt>
     dac:	52800140 	mov	w0, #0xa                   	// #10
     db0:	b9001be0 	str	w0, [sp, #24]
     db4:	b9001fff 	str	wzr, [sp, #28]
     db8:	1400000e 	b	df0 <_Z13need_fix_funcv+0x80>
     dbc:	b0000000 	adrp	x0, 1000 <_ZL8fix_funcPKvPv+0x160>
     dc0:	910a6001 	add	x1, x0, #0x298
     dc4:	f00000e0 	adrp	x0, 1f000 <__FRAME_END__+0x1da58>
     dc8:	f947dc00 	ldr	x0, [x0, #4024]
     dcc:	97ffff69 	bl	b70 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
     dd0:	b9401fe1 	ldr	w1, [sp, #28]
     dd4:	97ffff87 	bl	bf0 <_ZNSolsEi@plt>
     dd8:	f00000e1 	adrp	x1, 1f000 <__FRAME_END__+0x1da58>
     ddc:	f947d421 	ldr	x1, [x1, #4008]
     de0:	97ffff68 	bl	b80 <_ZNSolsEPFRSoS_E@plt>
     de4:	b9401fe0 	ldr	w0, [sp, #28]
     de8:	11000400 	add	w0, w0, #0x1
     dec:	b9001fe0 	str	w0, [sp, #28]
     df0:	b9401fe1 	ldr	w1, [sp, #28]
     df4:	b9401be0 	ldr	w0, [sp, #24]
     df8:	6b00003f 	cmp	w1, w0
     dfc:	54fffe0b 	b.lt	dbc <_Z13need_fix_funcv+0x4c>  // b.tstop
     e00:	52800000 	mov	w0, #0x0                   	// #0
     e04:	a8c27bfd 	ldp	x29, x30, [sp], #32
     e08:	d65f03c0 	ret

0000000000000e0c <_Z14business_logicv>:
     e0c:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
     e10:	910003fd 	mov	x29, sp
     e14:	52800040 	mov	w0, #0x2                   	// #2
     e18:	97ffff36 	bl	af0 <sleep@plt>
     e1c:	97ffffd5 	bl	d70 <_Z13need_fix_funcv>
     e20:	17fffffd 	b	e14 <_Z14business_logicv+0x8>

0000000000000e24 <_Z41__static_initialization_and_destruction_0ii>:
     e24:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
     e28:	910003fd 	mov	x29, sp
     e2c:	b9001fe0 	str	w0, [sp, #28]
     e30:	b9001be1 	str	w1, [sp, #24]
     e34:	b9401fe0 	ldr	w0, [sp, #28]
     e38:	7100041f 	cmp	w0, #0x1
     e3c:	540001e1 	b.ne	e78 <_Z41__static_initialization_and_destruction_0ii+0x54>  // b.any
     e40:	b9401be1 	ldr	w1, [sp, #24]
     e44:	529fffe0 	mov	w0, #0xffff                	// #65535
     e48:	6b00003f 	cmp	w1, w0
     e4c:	54000161 	b.ne	e78 <_Z41__static_initialization_and_destruction_0ii+0x54>  // b.any
     e50:	90000100 	adrp	x0, 20000 <sleep@GLIBC_2.17>
     e54:	9102c000 	add	x0, x0, #0xb0
     e58:	97ffff5a 	bl	bc0 <_ZNSt8ios_base4InitC1Ev@plt>
     e5c:	90000100 	adrp	x0, 20000 <sleep@GLIBC_2.17>
     e60:	91028002 	add	x2, x0, #0xa0
     e64:	90000100 	adrp	x0, 20000 <sleep@GLIBC_2.17>
     e68:	9102c001 	add	x1, x0, #0xb0
     e6c:	f00000e0 	adrp	x0, 1f000 <__FRAME_END__+0x1da58>
     e70:	f947f000 	ldr	x0, [x0, #4064]
     e74:	97ffff47 	bl	b90 <__cxa_atexit@plt>
     e78:	d503201f 	nop
     e7c:	a8c27bfd 	ldp	x29, x30, [sp], #32
     e80:	d65f03c0 	ret

0000000000000e84 <_GLOBAL__sub_I__Z13need_fix_funcv>:
     e84:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
     e88:	910003fd 	mov	x29, sp
     e8c:	529fffe1 	mov	w1, #0xffff                	// #65535
     e90:	52800020 	mov	w0, #0x1                   	// #1
     e94:	97ffffe4 	bl	e24 <_Z41__static_initialization_and_destruction_0ii>
     e98:	a8c17bfd 	ldp	x29, x30, [sp], #16
     e9c:	d65f03c0 	ret

0000000000000ea0 <_ZL8fix_funcPKvPv>:
     ea0:	a9bb7bfd 	stp	x29, x30, [sp, #-80]!
     ea4:	910003fd 	mov	x29, sp
     ea8:	f9000fe0 	str	x0, [sp, #24]
     eac:	f9000be1 	str	x1, [sp, #16]
     eb0:	b0000000 	adrp	x0, 1000 <_ZL8fix_funcPKvPv+0x160>
     eb4:	910ac001 	add	x1, x0, #0x2b0
     eb8:	f00000e0 	adrp	x0, 1f000 <__FRAME_END__+0x1da58>
     ebc:	f947dc00 	ldr	x0, [x0, #4024]
     ec0:	97ffff2c 	bl	b70 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
     ec4:	f00000e1 	adrp	x1, 1f000 <__FRAME_END__+0x1da58>
     ec8:	f947d421 	ldr	x1, [x1, #4008]
     ecc:	97ffff2d 	bl	b80 <_ZNSolsEPFRSoS_E@plt>
     ed0:	1288f6e0 	mov	w0, #0xffffb848            	// #-18360
     ed4:	790063e0 	strh	w0, [sp, #48]
     ed8:	1283e000 	mov	w0, #0xffffe0ff            	// #-7937
     edc:	790053e0 	strh	w0, [sp, #40]
     ee0:	97ffff48 	bl	c00 <getpagesize@plt>
     ee4:	93407c00 	sxtw	x0, w0
     ee8:	f90027e0 	str	x0, [sp, #72]
     eec:	52800180 	mov	w0, #0xc                   	// #12
     ef0:	b90047e0 	str	w0, [sp, #68]
     ef4:	f9400be0 	ldr	x0, [sp, #16]
     ef8:	f94027e1 	ldr	x1, [sp, #72]
     efc:	9ac10802 	udiv	x2, x0, x1
     f00:	f94027e1 	ldr	x1, [sp, #72]
     f04:	9b017c41 	mul	x1, x2, x1
     f08:	cb010000 	sub	x0, x0, x1
     f0c:	cb0003e0 	neg	x0, x0
     f10:	f9400be1 	ldr	x1, [sp, #16]
     f14:	8b000020 	add	x0, x1, x0
     f18:	f9001fe0 	str	x0, [sp, #56]
     f1c:	f9400be1 	ldr	x1, [sp, #16]
     f20:	f9401fe0 	ldr	x0, [sp, #56]
     f24:	cb000020 	sub	x0, x1, x0
     f28:	91003000 	add	x0, x0, #0xc
     f2c:	528000e2 	mov	w2, #0x7                   	// #7
     f30:	aa0003e1 	mov	x1, x0
     f34:	f9401fe0 	ldr	x0, [sp, #56]
     f38:	97fffef2 	bl	b00 <mprotect@plt>
     f3c:	7100001f 	cmp	w0, #0x0
     f40:	1a9f07e0 	cset	w0, ne	// ne = any
     f44:	12001c00 	and	w0, w0, #0xff
     f48:	7100001f 	cmp	w0, #0x0
     f4c:	54000220 	b.eq	f90 <_ZL8fix_funcPKvPv+0xf0>  // b.none
     f50:	b0000000 	adrp	x0, 1000 <_ZL8fix_funcPKvPv+0x160>
     f54:	910b0001 	add	x1, x0, #0x2c0
     f58:	f00000e0 	adrp	x0, 1f000 <__FRAME_END__+0x1da58>
     f5c:	f947dc00 	ldr	x0, [x0, #4024]
     f60:	97ffff04 	bl	b70 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
     f64:	97ffff0f 	bl	ba0 <__errno_location@plt>
     f68:	b9400000 	ldr	w0, [x0]
     f6c:	2a0003e1 	mov	w1, w0
     f70:	f00000e0 	adrp	x0, 1f000 <__FRAME_END__+0x1da58>
     f74:	f947dc00 	ldr	x0, [x0, #4024]
     f78:	97ffff1e 	bl	bf0 <_ZNSolsEi@plt>
     f7c:	f00000e1 	adrp	x1, 1f000 <__FRAME_END__+0x1da58>
     f80:	f947d421 	ldr	x1, [x1, #4008]
     f84:	97fffeff 	bl	b80 <_ZNSolsEPFRSoS_E@plt>
     f88:	12800000 	mov	w0, #0xffffffff            	// #-1
     f8c:	14000021 	b	1010 <_ZL8fix_funcPKvPv+0x170>
     f90:	794063e1 	ldrh	w1, [sp, #48]
     f94:	f9400be0 	ldr	x0, [sp, #16]
     f98:	79000001 	strh	w1, [x0]
     f9c:	f9400be0 	ldr	x0, [sp, #16]
     fa0:	91000800 	add	x0, x0, #0x2
     fa4:	f9400fe1 	ldr	x1, [sp, #24]
     fa8:	f9000001 	str	x1, [x0]
     fac:	f9400be0 	ldr	x0, [sp, #16]
     fb0:	91002800 	add	x0, x0, #0xa
     fb4:	794053e1 	ldrh	w1, [sp, #40]
     fb8:	79000001 	strh	w1, [x0]
     fbc:	f9400be1 	ldr	x1, [sp, #16]
     fc0:	f9401fe0 	ldr	x0, [sp, #56]
     fc4:	cb000020 	sub	x0, x1, x0
     fc8:	91003000 	add	x0, x0, #0xc
     fcc:	528000a2 	mov	w2, #0x5                   	// #5
     fd0:	aa0003e1 	mov	x1, x0
     fd4:	f9401fe0 	ldr	x0, [sp, #56]
     fd8:	97fffeca 	bl	b00 <mprotect@plt>
     fdc:	7100001f 	cmp	w0, #0x0
     fe0:	1a9f07e0 	cset	w0, ne	// ne = any
     fe4:	12001c00 	and	w0, w0, #0xff
     fe8:	7100001f 	cmp	w0, #0x0
     fec:	54000100 	b.eq	100c <_ZL8fix_funcPKvPv+0x16c>  // b.none
     ff0:	b0000000 	adrp	x0, 1000 <_ZL8fix_funcPKvPv+0x160>
     ff4:	910b6001 	add	x1, x0, #0x2d8
     ff8:	f00000e0 	adrp	x0, 1f000 <__FRAME_END__+0x1da58>
     ffc:	f947dc00 	ldr	x0, [x0, #4024]
    1000:	97fffedc 	bl	b70 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    1004:	12800000 	mov	w0, #0xffffffff            	// #-1
    1008:	14000002 	b	1010 <_ZL8fix_funcPKvPv+0x170>
    100c:	52800000 	mov	w0, #0x0                   	// #0
    1010:	a8c57bfd 	ldp	x29, x30, [sp], #80
    1014:	d65f03c0 	ret

0000000000001018 <_ZL6do_fixi>:
    1018:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!
    101c:	910003fd 	mov	x29, sp
    1020:	b9001fe0 	str	w0, [sp, #28]
    1024:	90000000 	adrp	x0, 1000 <_ZL8fix_funcPKvPv+0x160>
    1028:	910bc001 	add	x1, x0, #0x2f0
    102c:	d00000e0 	adrp	x0, 1f000 <__FRAME_END__+0x1da58>
    1030:	f947dc00 	ldr	x0, [x0, #4024]
    1034:	97fffecf 	bl	b70 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    1038:	d00000e1 	adrp	x1, 1f000 <__FRAME_END__+0x1da58>
    103c:	f947d421 	ldr	x1, [x1, #4008]
    1040:	97fffed0 	bl	b80 <_ZNSolsEPFRSoS_E@plt>
    1044:	90000000 	adrp	x0, 1000 <_ZL8fix_funcPKvPv+0x160>
    1048:	910d6001 	add	x1, x0, #0x358
    104c:	910083e0 	add	x0, sp, #0x20
    1050:	f9400022 	ldr	x2, [x1]
    1054:	f9000002 	str	x2, [x0]
    1058:	b8407021 	ldur	w1, [x1, #7]
    105c:	b8007001 	stur	w1, [x0, #7]
    1060:	910083e0 	add	x0, sp, #0x20
    1064:	52800041 	mov	w1, #0x2                   	// #2
    1068:	97fffed2 	bl	bb0 <dlopen@plt>
    106c:	f9001fe0 	str	x0, [sp, #56]
    1070:	f9401fe0 	ldr	x0, [sp, #56]
    1074:	f100001f 	cmp	x0, #0x0
    1078:	540002e1 	b.ne	10d4 <_ZL6do_fixi+0xbc>  // b.any
    107c:	97fffeb9 	bl	b60 <dlerror@plt>
    1080:	aa0003e1 	mov	x1, x0
    1084:	d00000e0 	adrp	x0, 1f000 <__FRAME_END__+0x1da58>
    1088:	f947dc00 	ldr	x0, [x0, #4024]
    108c:	97fffeb9 	bl	b70 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    1090:	d00000e1 	adrp	x1, 1f000 <__FRAME_END__+0x1da58>
    1094:	f947d421 	ldr	x1, [x1, #4008]
    1098:	97fffeba 	bl	b80 <_ZNSolsEPFRSoS_E@plt>
    109c:	90000000 	adrp	x0, 1000 <_ZL8fix_funcPKvPv+0x160>
    10a0:	910be001 	add	x1, x0, #0x2f8
    10a4:	d00000e0 	adrp	x0, 1f000 <__FRAME_END__+0x1da58>
    10a8:	f947dc00 	ldr	x0, [x0, #4024]
    10ac:	97fffeb1 	bl	b70 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    10b0:	aa0003e2 	mov	x2, x0
    10b4:	910083e0 	add	x0, sp, #0x20
    10b8:	aa0003e1 	mov	x1, x0
    10bc:	aa0203e0 	mov	x0, x2
    10c0:	97fffeac 	bl	b70 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    10c4:	d00000e1 	adrp	x1, 1f000 <__FRAME_END__+0x1da58>
    10c8:	f947d421 	ldr	x1, [x1, #4008]
    10cc:	97fffead 	bl	b80 <_ZNSolsEPFRSoS_E@plt>
    10d0:	14000033 	b	119c <_ZL6do_fixi+0x184>
    10d4:	90000000 	adrp	x0, 1000 <_ZL8fix_funcPKvPv+0x160>
    10d8:	910c4001 	add	x1, x0, #0x310
    10dc:	f9401fe0 	ldr	x0, [sp, #56]
    10e0:	97fffe9c 	bl	b50 <dlsym@plt>
    10e4:	f9001be0 	str	x0, [sp, #48]
    10e8:	90000000 	adrp	x0, 1000 <_ZL8fix_funcPKvPv+0x160>
    10ec:	910c8001 	add	x1, x0, #0x320
    10f0:	d00000e0 	adrp	x0, 1f000 <__FRAME_END__+0x1da58>
    10f4:	f947dc00 	ldr	x0, [x0, #4024]
    10f8:	97fffe9e 	bl	b70 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    10fc:	aa0003e2 	mov	x2, x0
    1100:	f9401be0 	ldr	x0, [sp, #48]
    1104:	f9400000 	ldr	x0, [x0]
    1108:	aa0003e1 	mov	x1, x0
    110c:	aa0203e0 	mov	x0, x2
    1110:	97fffe88 	bl	b30 <_ZNSolsEPKv@plt>
    1114:	d00000e1 	adrp	x1, 1f000 <__FRAME_END__+0x1da58>
    1118:	f947d421 	ldr	x1, [x1, #4008]
    111c:	97fffe99 	bl	b80 <_ZNSolsEPFRSoS_E@plt>
    1120:	f9401be0 	ldr	x0, [sp, #48]
    1124:	f100001f 	cmp	x0, #0x0
    1128:	54000181 	b.ne	1158 <_ZL6do_fixi+0x140>  // b.any
    112c:	90000000 	adrp	x0, 1000 <_ZL8fix_funcPKvPv+0x160>
    1130:	910cc001 	add	x1, x0, #0x330
    1134:	d00000e0 	adrp	x0, 1f000 <__FRAME_END__+0x1da58>
    1138:	f947dc00 	ldr	x0, [x0, #4024]
    113c:	97fffe8d 	bl	b70 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    1140:	d00000e1 	adrp	x1, 1f000 <__FRAME_END__+0x1da58>
    1144:	f947d421 	ldr	x1, [x1, #4008]
    1148:	97fffe8e 	bl	b80 <_ZNSolsEPFRSoS_E@plt>
    114c:	f9401fe0 	ldr	x0, [sp, #56]
    1150:	97fffe7c 	bl	b40 <dlclose@plt>
    1154:	14000012 	b	119c <_ZL6do_fixi+0x184>
    1158:	f9401be0 	ldr	x0, [sp, #48]
    115c:	f9400000 	ldr	x0, [x0]
    1160:	d00000e1 	adrp	x1, 1f000 <__FRAME_END__+0x1da58>
    1164:	f947e021 	ldr	x1, [x1, #4032]
    1168:	97ffff4e 	bl	ea0 <_ZL8fix_funcPKvPv>
    116c:	b9002fe0 	str	w0, [sp, #44]
    1170:	90000000 	adrp	x0, 1000 <_ZL8fix_funcPKvPv+0x160>
    1174:	910d2001 	add	x1, x0, #0x348
    1178:	d00000e0 	adrp	x0, 1f000 <__FRAME_END__+0x1da58>
    117c:	f947dc00 	ldr	x0, [x0, #4024]
    1180:	97fffe7c 	bl	b70 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    1184:	b9402fe1 	ldr	w1, [sp, #44]
    1188:	97fffe9a 	bl	bf0 <_ZNSolsEi@plt>
    118c:	d00000e1 	adrp	x1, 1f000 <__FRAME_END__+0x1da58>
    1190:	f947d421 	ldr	x1, [x1, #4008]
    1194:	97fffe7b 	bl	b80 <_ZNSolsEPFRSoS_E@plt>
    1198:	d503201f 	nop
    119c:	a8c47bfd 	ldp	x29, x30, [sp], #64
    11a0:	d65f03c0 	ret

00000000000011a4 <_Z19init_hot_fix_signalv>:
    11a4:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
    11a8:	910003fd 	mov	x29, sp
    11ac:	90000000 	adrp	x0, 1000 <_ZL8fix_funcPKvPv+0x160>
    11b0:	91006001 	add	x1, x0, #0x18
    11b4:	52800140 	mov	w0, #0xa                   	// #10
    11b8:	97fffe8a 	bl	be0 <signal@plt>
    11bc:	b100041f 	cmn	x0, #0x1
    11c0:	1a9f17e0 	cset	w0, eq	// eq = none
    11c4:	12001c00 	and	w0, w0, #0xff
    11c8:	7100001f 	cmp	w0, #0x0
    11cc:	54000060 	b.eq	11d8 <_Z19init_hot_fix_signalv+0x34>  // b.none
    11d0:	12800000 	mov	w0, #0xffffffff            	// #-1
    11d4:	14000002 	b	11dc <_Z19init_hot_fix_signalv+0x38>
    11d8:	52800000 	mov	w0, #0x0                   	// #0
    11dc:	a8c17bfd 	ldp	x29, x30, [sp], #16
    11e0:	d65f03c0 	ret

00000000000011e4 <_Z41__static_initialization_and_destruction_0ii>:
    11e4:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
    11e8:	910003fd 	mov	x29, sp
    11ec:	b9001fe0 	str	w0, [sp, #28]
    11f0:	b9001be1 	str	w1, [sp, #24]
    11f4:	b9401fe0 	ldr	w0, [sp, #28]
    11f8:	7100041f 	cmp	w0, #0x1
    11fc:	540001e1 	b.ne	1238 <_Z41__static_initialization_and_destruction_0ii+0x54>  // b.any
    1200:	b9401be1 	ldr	w1, [sp, #24]
    1204:	529fffe0 	mov	w0, #0xffff                	// #65535
    1208:	6b00003f 	cmp	w1, w0
    120c:	54000161 	b.ne	1238 <_Z41__static_initialization_and_destruction_0ii+0x54>  // b.any
    1210:	f00000e0 	adrp	x0, 20000 <sleep@GLIBC_2.17>
    1214:	9102e000 	add	x0, x0, #0xb8
    1218:	97fffe6a 	bl	bc0 <_ZNSt8ios_base4InitC1Ev@plt>
    121c:	f00000e0 	adrp	x0, 20000 <sleep@GLIBC_2.17>
    1220:	91028002 	add	x2, x0, #0xa0
    1224:	f00000e0 	adrp	x0, 20000 <sleep@GLIBC_2.17>
    1228:	9102e001 	add	x1, x0, #0xb8
    122c:	d00000e0 	adrp	x0, 1f000 <__FRAME_END__+0x1da58>
    1230:	f947f000 	ldr	x0, [x0, #4064]
    1234:	97fffe57 	bl	b90 <__cxa_atexit@plt>
    1238:	d503201f 	nop
    123c:	a8c27bfd 	ldp	x29, x30, [sp], #32
    1240:	d65f03c0 	ret

0000000000001244 <_GLOBAL__sub_I__Z19init_hot_fix_signalv>:
    1244:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
    1248:	910003fd 	mov	x29, sp
    124c:	529fffe1 	mov	w1, #0xffff                	// #65535
    1250:	52800020 	mov	w0, #0x1                   	// #1
    1254:	97ffffe4 	bl	11e4 <_Z41__static_initialization_and_destruction_0ii>
    1258:	a8c17bfd 	ldp	x29, x30, [sp], #16
    125c:	d65f03c0 	ret

Disassembly of section .fini:

0000000000001260 <_fini>:
    1260:	d503201f 	nop
    1264:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
    1268:	910003fd 	mov	x29, sp
    126c:	a8c17bfd 	ldp	x29, x30, [sp], #16
    1270:	d65f03c0 	ret