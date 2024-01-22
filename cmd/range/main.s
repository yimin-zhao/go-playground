# command-line-arguments
main.main STEXT size=320 args=0x0 locals=0x1b8 funcid=0x0 align=0x0
	0x0000 00000 (/Users/yimin/Code/go-playground/cmd/range/main.go:5)	TEXT	main.main(SB), ABIInternal, $448-0
	0x0000 00000 (/Users/yimin/Code/go-playground/cmd/range/main.go:5)	MOVD	16(g), R16
	0x0004 00004 (/Users/yimin/Code/go-playground/cmd/range/main.go:5)	PCDATA	$0, $-2
	0x0004 00004 (/Users/yimin/Code/go-playground/cmd/range/main.go:5)	SUB	$320, RSP, R17
	0x0008 00008 (/Users/yimin/Code/go-playground/cmd/range/main.go:5)	CMP	R16, R17
	0x000c 00012 (/Users/yimin/Code/go-playground/cmd/range/main.go:5)	BLS	300
	0x0010 00016 (/Users/yimin/Code/go-playground/cmd/range/main.go:5)	PCDATA	$0, $-1
	0x0010 00016 (/Users/yimin/Code/go-playground/cmd/range/main.go:5)	SUB	$448, RSP, R20
	0x0014 00020 (/Users/yimin/Code/go-playground/cmd/range/main.go:5)	STP	(R29, R30), -8(R20)
	0x0018 00024 (/Users/yimin/Code/go-playground/cmd/range/main.go:5)	PCDATA	$0, $-2
	0x0018 00024 (/Users/yimin/Code/go-playground/cmd/range/main.go:5)	MOVD	R20, RSP
	0x001c 00028 (/Users/yimin/Code/go-playground/cmd/range/main.go:5)	PCDATA	$0, $-1
	0x001c 00028 (/Users/yimin/Code/go-playground/cmd/range/main.go:5)	SUB	$8, RSP, R29
	0x0020 00032 (/Users/yimin/Code/go-playground/cmd/range/main.go:5)	FUNCDATA	$0, gclocals·D1/YcbyNumM1nqYyoY4wEQ==(SB)
	0x0020 00032 (/Users/yimin/Code/go-playground/cmd/range/main.go:5)	FUNCDATA	$1, gclocals·U4gqutCvaJakzV/IJV0iLw==(SB)
	0x0020 00032 (/Users/yimin/Code/go-playground/cmd/range/main.go:5)	FUNCDATA	$2, main.main.stkobj(SB)
	0x0020 00032 (/Users/yimin/Code/go-playground/cmd/range/main.go:6)	STP	(ZR, ZR), main..autotmp_12-352(SP)
	0x0024 00036 (/Users/yimin/Code/go-playground/cmd/range/main.go:6)	STP	(ZR, ZR), main..autotmp_12-336(SP)
	0x0028 00040 (/Users/yimin/Code/go-playground/cmd/range/main.go:6)	STP	(ZR, ZR), main..autotmp_12-320(SP)
	0x002c 00044 (/Users/yimin/Code/go-playground/cmd/range/main.go:6)	MOVD	$main..autotmp_13-208(SP), R20
	0x0030 00048 (/Users/yimin/Code/go-playground/cmd/range/main.go:6)	PCDATA	$0, $-2
	0x0030 00048 (/Users/yimin/Code/go-playground/cmd/range/main.go:6)	ADR	64, runtime.duffzero+204(R27)(R27)(REG)
	0x0034 00052 (/Users/yimin/Code/go-playground/cmd/range/main.go:6)	STP	(R29, R27), -24(RSP)
	0x0038 00056 (/Users/yimin/Code/go-playground/cmd/range/main.go:6)	SUB	$24, RSP, R29
	0x003c 00060 (/Users/yimin/Code/go-playground/cmd/range/main.go:6)	DUFFZERO	runtime.duffzero(SB)
	0x0040 00064 (/Users/yimin/Code/go-playground/cmd/range/main.go:6)	SUB	$8, RSP, R29
	0x0044 00068 (/Users/yimin/Code/go-playground/cmd/range/main.go:6)	PCDATA	$0, $-1
	0x0044 00068 (/Users/yimin/Code/go-playground/cmd/range/main.go:6)	MOVD	$main..autotmp_13-208(SP), R0
	0x0048 00072 (/Users/yimin/Code/go-playground/cmd/range/main.go:6)	MOVD	R0, main..autotmp_12-336(SP)
	0x004c 00076 (/Users/yimin/Code/go-playground/cmd/range/main.go:6)	PCDATA	$1, $1
	0x004c 00076 (/Users/yimin/Code/go-playground/cmd/range/main.go:6)	CALL	runtime.fastrand(SB)
	0x0050 00080 (/Users/yimin/Code/go-playground/cmd/range/main.go:6)	MOVW	R0, main..autotmp_12-340(SP)
	0x0054 00084 (/Users/yimin/Code/go-playground/cmd/range/main.go:7)	MOVD	$type:map[string]int(SB), R0
	0x005c 00092 (/Users/yimin/Code/go-playground/cmd/range/main.go:7)	MOVD	$main..autotmp_12-352(SP), R1
	0x0060 00096 (/Users/yimin/Code/go-playground/cmd/range/main.go:7)	MOVD	$go:string."zhao"(SB), R2
	0x0068 00104 (/Users/yimin/Code/go-playground/cmd/range/main.go:7)	MOVD	$4, R3
	0x006c 00108 (/Users/yimin/Code/go-playground/cmd/range/main.go:7)	CALL	runtime.mapassign_faststr(SB)
	0x0070 00112 (/Users/yimin/Code/go-playground/cmd/range/main.go:7)	MOVD	$30, R1
	0x0074 00116 (/Users/yimin/Code/go-playground/cmd/range/main.go:7)	MOVD	R1, (R0)
	0x0078 00120 (/Users/yimin/Code/go-playground/cmd/range/main.go:9)	MOVD	$main..autotmp_9-304(SP), R20
	0x007c 00124 (/Users/yimin/Code/go-playground/cmd/range/main.go:9)	PCDATA	$0, $-2
	0x007c 00124 (/Users/yimin/Code/go-playground/cmd/range/main.go:9)	ADR	140, runtime.duffzero+232(R27)(R27)(REG)
	0x0080 00128 (/Users/yimin/Code/go-playground/cmd/range/main.go:9)	STP	(R29, R27), -24(RSP)
	0x0084 00132 (/Users/yimin/Code/go-playground/cmd/range/main.go:9)	SUB	$24, RSP, R29
	0x0088 00136 (/Users/yimin/Code/go-playground/cmd/range/main.go:9)	DUFFZERO	runtime.duffzero(SB)
	0x008c 00140 (/Users/yimin/Code/go-playground/cmd/range/main.go:9)	SUB	$8, RSP, R29
	0x0090 00144 (/Users/yimin/Code/go-playground/cmd/range/main.go:9)	PCDATA	$0, $-1
	0x0090 00144 (/Users/yimin/Code/go-playground/cmd/range/main.go:9)	MOVD	$type:map[string]int(SB), R0
	0x0098 00152 (/Users/yimin/Code/go-playground/cmd/range/main.go:9)	MOVD	$main..autotmp_12-352(SP), R1
	0x009c 00156 (/Users/yimin/Code/go-playground/cmd/range/main.go:9)	MOVD	$main..autotmp_9-304(SP), R2
	0x00a0 00160 (/Users/yimin/Code/go-playground/cmd/range/main.go:9)	PCDATA	$1, $2
	0x00a0 00160 (/Users/yimin/Code/go-playground/cmd/range/main.go:9)	CALL	runtime.mapiterinit(SB)
	0x00a4 00164 (/Users/yimin/Code/go-playground/cmd/range/main.go:9)	JMP	280
	0x00a8 00168 (/Users/yimin/Code/go-playground/cmd/range/main.go:9)	MOVD	main..autotmp_9-296(SP), R3
	0x00ac 00172 (/Users/yimin/Code/go-playground/cmd/range/main.go:9)	MOVD	(R3), R3
	0x00b0 00176 (/Users/yimin/Code/go-playground/cmd/range/main.go:9)	MOVD	R3, main.age-392(SP)
	0x00b4 00180 (/Users/yimin/Code/go-playground/cmd/range/main.go:9)	MOVD	(R2), R0
	0x00b8 00184 (/Users/yimin/Code/go-playground/cmd/range/main.go:9)	MOVD	8(R2), R1
	0x00bc 00188 (/Users/yimin/Code/go-playground/cmd/range/main.go:10)	STP	(ZR, ZR), main..autotmp_18-384(SP)
	0x00c0 00192 (/Users/yimin/Code/go-playground/cmd/range/main.go:10)	STP	(ZR, ZR), main..autotmp_18-368(SP)
	0x00c4 00196 (/Users/yimin/Code/go-playground/cmd/range/main.go:10)	PCDATA	$1, $3
	0x00c4 00196 (/Users/yimin/Code/go-playground/cmd/range/main.go:10)	CALL	runtime.convTstring(SB)
	0x00c8 00200 (/Users/yimin/Code/go-playground/cmd/range/main.go:10)	MOVD	$type:string(SB), R2
	0x00d0 00208 (/Users/yimin/Code/go-playground/cmd/range/main.go:10)	MOVD	R2, main..autotmp_18-384(SP)
	0x00d4 00212 (/Users/yimin/Code/go-playground/cmd/range/main.go:10)	MOVD	R0, main..autotmp_18-376(SP)
	0x00d8 00216 (/Users/yimin/Code/go-playground/cmd/range/main.go:10)	MOVD	main.age-392(SP), R0
	0x00dc 00220 (/Users/yimin/Code/go-playground/cmd/range/main.go:10)	CALL	runtime.convT64(SB)
	0x00e0 00224 (/Users/yimin/Code/go-playground/cmd/range/main.go:10)	MOVD	$type:int(SB), R2
	0x00e8 00232 (/Users/yimin/Code/go-playground/cmd/range/main.go:10)	MOVD	R2, main..autotmp_18-368(SP)
	0x00ec 00236 (/Users/yimin/Code/go-playground/cmd/range/main.go:10)	MOVD	R0, main..autotmp_18-360(SP)
	0x00f0 00240 (<unknown line number>)	NOP
	0x00f0 00240 (<unknown line number>)	PCDATA	$0, $-3
	0x00f0 00240 (/usr/local/go/src/fmt/print.go:314)	MOVD	os.Stdout(SB), R1
	0x00f8 00248 (/usr/local/go/src/fmt/print.go:314)	PCDATA	$0, $-1
	0x00f8 00248 (/usr/local/go/src/fmt/print.go:314)	MOVD	$go:itab.*os.File,io.Writer(SB), R0
	0x0100 00256 (/usr/local/go/src/fmt/print.go:314)	MOVD	$2, R3
	0x0104 00260 (/usr/local/go/src/fmt/print.go:314)	MOVD	R3, R4
	0x0108 00264 (/usr/local/go/src/fmt/print.go:314)	MOVD	$main..autotmp_18-384(SP), R2
	0x010c 00268 (/usr/local/go/src/fmt/print.go:314)	PCDATA	$1, $2
	0x010c 00268 (/usr/local/go/src/fmt/print.go:314)	CALL	fmt.Fprintln(SB)
	0x0110 00272 (/Users/yimin/Code/go-playground/cmd/range/main.go:9)	MOVD	$main..autotmp_9-304(SP), R0
	0x0114 00276 (/Users/yimin/Code/go-playground/cmd/range/main.go:9)	CALL	runtime.mapiternext(SB)
	0x0118 00280 (/Users/yimin/Code/go-playground/cmd/range/main.go:9)	MOVD	main..autotmp_9-304(SP), R2
	0x011c 00284 (/Users/yimin/Code/go-playground/cmd/range/main.go:9)	CBNZ	R2, 168
	0x0120 00288 (/Users/yimin/Code/go-playground/cmd/range/main.go:12)	PCDATA	$1, $-1
	0x0120 00288 (/Users/yimin/Code/go-playground/cmd/range/main.go:12)	LDP	-8(RSP), (R29, R30)
	0x0124 00292 (/Users/yimin/Code/go-playground/cmd/range/main.go:12)	ADD	$448, RSP
	0x0128 00296 (/Users/yimin/Code/go-playground/cmd/range/main.go:12)	RET	(R30)
	0x012c 00300 (/Users/yimin/Code/go-playground/cmd/range/main.go:12)	NOP
	0x012c 00300 (/Users/yimin/Code/go-playground/cmd/range/main.go:5)	PCDATA	$1, $-1
	0x012c 00300 (/Users/yimin/Code/go-playground/cmd/range/main.go:5)	PCDATA	$0, $-2
	0x012c 00300 (/Users/yimin/Code/go-playground/cmd/range/main.go:5)	MOVD	R30, R3
	0x0130 00304 (/Users/yimin/Code/go-playground/cmd/range/main.go:5)	CALL	runtime.morestack_noctxt(SB)
	0x0134 00308 (/Users/yimin/Code/go-playground/cmd/range/main.go:5)	PCDATA	$0, $-1
	0x0134 00308 (/Users/yimin/Code/go-playground/cmd/range/main.go:5)	JMP	0
	0x0000 90 0b 40 f9 f1 03 05 d1 3f 02 10 eb 09 09 00 54  ..@.....?......T
	0x0010 f4 03 07 d1 9d fa 3f a9 9f 02 00 91 fd 23 00 d1  ......?......#..
	0x0020 ff ff 05 a9 ff ff 06 a9 ff ff 07 a9 f4 a3 03 91  ................
	0x0030 9b 00 00 10 fd ef 3e a9 fd 63 00 d1 00 00 00 94  ......>..c......
	0x0040 fd 23 00 d1 e0 a3 03 91 e0 37 00 f9 00 00 00 94  .#.......7......
	0x0050 e0 67 00 b9 00 00 00 90 00 00 00 91 e1 63 01 91  .g...........c..
	0x0060 02 00 00 90 42 00 00 91 e3 03 7e b2 00 00 00 94  ....B.....~.....
	0x0070 e1 0f 7f b2 01 00 00 f9 f4 23 02 91 9b 00 00 10  .........#......
	0x0080 fd ef 3e a9 fd 63 00 d1 00 00 00 94 fd 23 00 d1  ..>..c.......#..
	0x0090 00 00 00 90 00 00 00 91 e1 63 01 91 e2 23 02 91  .........c...#..
	0x00a0 00 00 00 94 1d 00 00 14 e3 4b 40 f9 63 00 40 f9  .........K@.c.@.
	0x00b0 e3 1b 00 f9 40 00 40 f9 41 04 40 f9 ff ff 03 a9  ....@.@.A.@.....
	0x00c0 ff ff 04 a9 00 00 00 94 02 00 00 90 42 00 00 91  ............B...
	0x00d0 e2 1f 00 f9 e0 23 00 f9 e0 1b 40 f9 00 00 00 94  .....#....@.....
	0x00e0 02 00 00 90 42 00 00 91 e2 27 00 f9 e0 2b 00 f9  ....B....'...+..
	0x00f0 1b 00 00 90 61 03 40 f9 00 00 00 90 00 00 00 91  ....a.@.........
	0x0100 e3 03 7f b2 e4 03 03 aa e2 e3 00 91 00 00 00 94  ................
	0x0110 e0 23 02 91 00 00 00 94 e2 47 40 f9 62 fc ff b5  .#.......G@.b...
	0x0120 fd fb 7f a9 ff 03 07 91 c0 03 5f d6 e3 03 1e aa  .........._.....
	0x0130 00 00 00 94 b3 ff ff 17 00 00 00 00 00 00 00 00  ................
	rel 0+0 t=23 type:string+0
	rel 0+0 t=23 type:int+0
	rel 0+0 t=23 type:*os.File+0
	rel 60+4 t=9 runtime.duffzero+204
	rel 76+4 t=9 runtime.fastrand+0
	rel 84+8 t=3 type:map[string]int+0
	rel 96+8 t=3 go:string."zhao"+0
	rel 108+4 t=9 runtime.mapassign_faststr+0
	rel 136+4 t=9 runtime.duffzero+232
	rel 144+8 t=3 type:map[string]int+0
	rel 160+4 t=9 runtime.mapiterinit+0
	rel 196+4 t=9 runtime.convTstring+0
	rel 200+8 t=3 type:string+0
	rel 220+4 t=9 runtime.convT64+0
	rel 224+8 t=3 type:int+0
	rel 240+8 t=41 os.Stdout+0
	rel 248+8 t=3 go:itab.*os.File,io.Writer+0
	rel 268+4 t=9 fmt.Fprintln+0
	rel 276+4 t=9 runtime.mapiternext+0
	rel 304+4 t=9 runtime.morestack_noctxt+0
type:.eq.[2]interface {} STEXT dupok size=192 args=0x10 locals=0x28 funcid=0x0 align=0x0
	0x0000 00000 (<autogenerated>:1)	TEXT	type:.eq.[2]interface {}(SB), DUPOK|ABIInternal, $48-16
	0x0000 00000 (<autogenerated>:1)	MOVD	16(g), R16
	0x0004 00004 (<autogenerated>:1)	PCDATA	$0, $-2
	0x0004 00004 (<autogenerated>:1)	CMP	R16, RSP
	0x0008 00008 (<autogenerated>:1)	BLS	152
	0x000c 00012 (<autogenerated>:1)	PCDATA	$0, $-1
	0x000c 00012 (<autogenerated>:1)	MOVD.W	R30, -48(RSP)
	0x0010 00016 (<autogenerated>:1)	MOVD	R29, -8(RSP)
	0x0014 00020 (<autogenerated>:1)	SUB	$8, RSP, R29
	0x0018 00024 (<autogenerated>:1)	FUNCDATA	$0, gclocals·TjPuuCwdlCpTaRQGRKTrYw==(SB)
	0x0018 00024 (<autogenerated>:1)	FUNCDATA	$1, gclocals·J5F+7Qw7O7ve2QcWC7DpeQ==(SB)
	0x0018 00024 (<autogenerated>:1)	FUNCDATA	$5, type:.eq.[2]interface {}.arginfo1(SB)
	0x0018 00024 (<autogenerated>:1)	FUNCDATA	$6, type:.eq.[2]interface {}.argliveinfo(SB)
	0x0018 00024 (<autogenerated>:1)	PCDATA	$3, $1
	0x0018 00024 (<autogenerated>:1)	MOVD	R0, main.p(FP)
	0x001c 00028 (<autogenerated>:1)	MOVD	R1, main.q+8(FP)
	0x0020 00032 (<autogenerated>:1)	PCDATA	$3, $-1
	0x0020 00032 (<autogenerated>:1)	MOVD	ZR, R2
	0x0024 00036 (<autogenerated>:1)	JMP	52
	0x0028 00040 (<autogenerated>:1)	ADD	$1, R3, R2
	0x002c 00044 (<autogenerated>:1)	MOVD	main.p(FP), R0
	0x0030 00048 (<autogenerated>:1)	MOVD	main.q+8(FP), R1
	0x0034 00052 (<autogenerated>:1)	CMP	$2, R2
	0x0038 00056 (<autogenerated>:1)	BGE	136
	0x003c 00060 (<autogenerated>:1)	LSL	$4, R2, R3
	0x0040 00064 (<autogenerated>:1)	MOVD	(R0)(R3), R4
	0x0044 00068 (<autogenerated>:1)	MOVD	(R1)(R3), R3
	0x0048 00072 (<autogenerated>:1)	ADD	R2<<4, R1, R5
	0x004c 00076 (<autogenerated>:1)	ADD	R2<<4, R0, R6
	0x0050 00080 (<autogenerated>:1)	MOVD	8(R6), R6
	0x0054 00084 (<autogenerated>:1)	MOVD	8(R5), R5
	0x0058 00088 (<autogenerated>:1)	CMP	R4, R3
	0x005c 00092 (<autogenerated>:1)	BNE	132
	0x0060 00096 (<autogenerated>:1)	MOVD	R2, main..autotmp_6-8(SP)
	0x0064 00100 (<autogenerated>:1)	MOVD	R4, R0
	0x0068 00104 (<autogenerated>:1)	MOVD	R6, R1
	0x006c 00108 (<autogenerated>:1)	MOVD	R5, R2
	0x0070 00112 (<autogenerated>:1)	PCDATA	$1, $0
	0x0070 00112 (<autogenerated>:1)	CALL	runtime.efaceeq(SB)
	0x0074 00116 (<autogenerated>:1)	MOVD	main..autotmp_6-8(SP), R3
	0x0078 00120 (<autogenerated>:1)	CMP	$2, R3
	0x007c 00124 (<autogenerated>:1)	TBNZ	$0, R0, 40
	0x0080 00128 (<autogenerated>:1)	JMP	136
	0x0084 00132 (<autogenerated>:1)	CMP	$2, R2
	0x0088 00136 (<autogenerated>:1)	CSET	GE, R0
	0x008c 00140 (<autogenerated>:1)	LDP	-8(RSP), (R29, R30)
	0x0090 00144 (<autogenerated>:1)	ADD	$48, RSP
	0x0094 00148 (<autogenerated>:1)	RET	(R30)
	0x0098 00152 (<autogenerated>:1)	NOP
	0x0098 00152 (<autogenerated>:1)	PCDATA	$1, $-1
	0x0098 00152 (<autogenerated>:1)	PCDATA	$0, $-2
	0x0098 00152 (<autogenerated>:1)	MOVD	R0, 8(RSP)
	0x009c 00156 (<autogenerated>:1)	MOVD	R1, 16(RSP)
	0x00a0 00160 (<autogenerated>:1)	MOVD	R30, R3
	0x00a4 00164 (<autogenerated>:1)	CALL	runtime.morestack_noctxt(SB)
	0x00a8 00168 (<autogenerated>:1)	MOVD	8(RSP), R0
	0x00ac 00172 (<autogenerated>:1)	MOVD	16(RSP), R1
	0x00b0 00176 (<autogenerated>:1)	PCDATA	$0, $-1
	0x00b0 00176 (<autogenerated>:1)	JMP	0
	0x0000 90 0b 40 f9 ff 63 30 eb 89 04 00 54 fe 0f 1d f8  ..@..c0....T....
	0x0010 fd 83 1f f8 fd 23 00 d1 e0 1f 00 f9 e1 23 00 f9  .....#.......#..
	0x0020 e2 03 1f aa 04 00 00 14 62 04 00 91 e0 1f 40 f9  ........b.....@.
	0x0030 e1 23 40 f9 5f 08 00 f1 8a 02 00 54 43 ec 7c d3  .#@._......TC.|.
	0x0040 04 68 63 f8 23 68 63 f8 25 10 02 8b 06 10 02 8b  .hc.#hc.%.......
	0x0050 c6 04 40 f9 a5 04 40 f9 7f 00 04 eb 41 01 00 54  ..@...@.....A..T
	0x0060 e2 13 00 f9 e0 03 04 aa e1 03 06 aa e2 03 05 aa  ................
	0x0070 00 00 00 94 e3 13 40 f9 7f 08 00 f1 60 fd 07 37  ......@.....`..7
	0x0080 02 00 00 14 5f 08 00 f1 e0 b7 9f 9a fd fb 7f a9  ...._...........
	0x0090 ff c3 00 91 c0 03 5f d6 e0 07 00 f9 e1 0b 00 f9  ......_.........
	0x00a0 e3 03 1e aa 00 00 00 94 e0 07 40 f9 e1 0b 40 f9  ..........@...@.
	0x00b0 d4 ff ff 17 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 112+4 t=9 runtime.efaceeq+0
	rel 164+4 t=9 runtime.morestack_noctxt+0
go:cuinfo.producer.main SDWARFCUINFO dupok size=0
	0x0000 2d 73 68 61 72 65 64 20 72 65 67 61 62 69        -shared regabi
go:cuinfo.packagename.main SDWARFCUINFO dupok size=0
	0x0000 6d 61 69 6e                                      main
go:info.fmt.Println$abstract SDWARFABSFCN dupok size=42
	0x0000 05 66 6d 74 2e 50 72 69 6e 74 6c 6e 00 01 01 13  .fmt.Println....
	0x0010 61 00 00 00 00 00 00 13 6e 00 01 00 00 00 00 13  a.......n.......
	0x0020 65 72 72 00 01 00 00 00 00 00                    err.......
	rel 0+0 t=22 type:[]interface {}+0
	rel 0+0 t=22 type:error+0
	rel 0+0 t=22 type:int+0
	rel 19+4 t=31 go:info.[]interface {}+0
	rel 27+4 t=31 go:info.int+0
	rel 37+4 t=31 go:info.error+0
go:itab.*os.File,io.Writer SRODATA dupok size=32
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 5a 22 ee 60 00 00 00 00 00 00 00 00 00 00 00 00  Z".`............
	rel 0+8 t=1 type:io.Writer+0
	rel 8+8 t=1 type:*os.File+0
	rel 24+8 t=-32767 os.(*File).Write+0
main..inittask SNOPTRDATA size=32
	0x0000 00 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00  ................
	0x0010 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 24+8 t=1 fmt..inittask+0
go:string."zhao" SRODATA dupok size=4
	0x0000 7a 68 61 6f                                      zhao
type:.eqfunc.[2]interface {} SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 type:.eq.[2]interface {}+0
runtime.memequal64·f SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 runtime.memequal64+0
runtime.gcbits.0100000000000000 SRODATA dupok size=8
	0x0000 01 00 00 00 00 00 00 00                          ........
type:.namedata.*[2]interface {}- SRODATA dupok size=18
	0x0000 00 10 2a 5b 32 5d 69 6e 74 65 72 66 61 63 65 20  ..*[2]interface 
	0x0010 7b 7d                                            {}
type:*[2]interface {} SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 53 dc 6b 00 08 08 08 36 00 00 00 00 00 00 00 00  S.k....6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.0100000000000000+0
	rel 40+4 t=5 type:.namedata.*[2]interface {}-+0
	rel 48+8 t=1 type:[2]interface {}+0
runtime.gcbits.0a00000000000000 SRODATA dupok size=8
	0x0000 0a 00 00 00 00 00 00 00                          ........
type:[2]interface {} SRODATA dupok size=72
	0x0000 20 00 00 00 00 00 00 00 20 00 00 00 00 00 00 00   ....... .......
	0x0010 0a f3 b4 b4 02 08 08 11 00 00 00 00 00 00 00 00  ................
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 02 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 type:.eqfunc.[2]interface {}+0
	rel 32+8 t=1 runtime.gcbits.0a00000000000000+0
	rel 40+4 t=5 type:.namedata.*[2]interface {}-+0
	rel 44+4 t=-32763 type:*[2]interface {}+0
	rel 48+8 t=1 type:interface {}+0
	rel 56+8 t=1 type:[]interface {}+0
type:.namedata.*[8]uint8- SRODATA dupok size=11
	0x0000 00 09 2a 5b 38 5d 75 69 6e 74 38                 ..*[8]uint8
type:*[8]uint8 SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 f8 9a 95 1a 08 08 08 36 00 00 00 00 00 00 00 00  .......6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.0100000000000000+0
	rel 40+4 t=5 type:.namedata.*[8]uint8-+0
	rel 48+8 t=1 type:[8]uint8+0
runtime.gcbits. SRODATA dupok size=0
type:[8]uint8 SRODATA dupok size=72
	0x0000 08 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 89 18 9c b4 0a 01 01 11 00 00 00 00 00 00 00 00  ................
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 08 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.+0
	rel 40+4 t=5 type:.namedata.*[8]uint8-+0
	rel 44+4 t=-32763 type:*[8]uint8+0
	rel 48+8 t=1 type:uint8+0
	rel 56+8 t=1 type:[]uint8+0
type:.namedata.*[8]string- SRODATA dupok size=12
	0x0000 00 0a 2a 5b 38 5d 73 74 72 69 6e 67              ..*[8]string
type:*[8]string SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 e3 bf d7 63 08 08 08 36 00 00 00 00 00 00 00 00  ...c...6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.0100000000000000+0
	rel 40+4 t=5 type:.namedata.*[8]string-+0
	rel 48+8 t=1 type:noalg.[8]string+0
runtime.gcbits.5555000000000000 SRODATA dupok size=8
	0x0000 55 55 00 00 00 00 00 00                          UU......
type:noalg.[8]string SRODATA dupok size=72
	0x0000 80 00 00 00 00 00 00 00 78 00 00 00 00 00 00 00  ........x.......
	0x0010 0c 1c ff 04 02 08 08 11 00 00 00 00 00 00 00 00  ................
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 08 00 00 00 00 00 00 00                          ........
	rel 32+8 t=1 runtime.gcbits.5555000000000000+0
	rel 40+4 t=5 type:.namedata.*[8]string-+0
	rel 44+4 t=-32763 type:*[8]string+0
	rel 48+8 t=1 type:string+0
	rel 56+8 t=1 type:[]string+0
type:.namedata.*[8]int- SRODATA dupok size=9
	0x0000 00 07 2a 5b 38 5d 69 6e 74                       ..*[8]int
type:*[8]int SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 b2 24 38 0a 08 08 08 36 00 00 00 00 00 00 00 00  .$8....6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.0100000000000000+0
	rel 40+4 t=5 type:.namedata.*[8]int-+0
	rel 48+8 t=1 type:noalg.[8]int+0
type:noalg.[8]int SRODATA dupok size=72
	0x0000 40 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  @...............
	0x0010 94 48 d7 e9 02 08 08 11 00 00 00 00 00 00 00 00  .H..............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 08 00 00 00 00 00 00 00                          ........
	rel 32+8 t=1 runtime.gcbits.+0
	rel 40+4 t=5 type:.namedata.*[8]int-+0
	rel 44+4 t=-32763 type:*[8]int+0
	rel 48+8 t=1 type:int+0
	rel 56+8 t=1 type:[]int+0
type:.namedata.*map.bucket[string]int- SRODATA dupok size=24
	0x0000 00 16 2a 6d 61 70 2e 62 75 63 6b 65 74 5b 73 74  ..*map.bucket[st
	0x0010 72 69 6e 67 5d 69 6e 74                          ring]int
type:*map.bucket[string]int SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 1b 82 81 a9 08 08 08 36 00 00 00 00 00 00 00 00  .......6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.0100000000000000+0
	rel 40+4 t=5 type:.namedata.*map.bucket[string]int-+0
	rel 48+8 t=1 type:noalg.map.bucket[string]int+0
runtime.gcbits.aaaa000200000000 SRODATA dupok size=8
	0x0000 aa aa 00 02 00 00 00 00                          ........
type:.importpath.. SRODATA dupok size=2
	0x0000 00 00                                            ..
type:.namedata.topbits- SRODATA dupok size=9
	0x0000 00 07 74 6f 70 62 69 74 73                       ..topbits
type:.namedata.keys- SRODATA dupok size=6
	0x0000 00 04 6b 65 79 73                                ..keys
type:.namedata.elems- SRODATA dupok size=7
	0x0000 00 05 65 6c 65 6d 73                             ..elems
type:.namedata.overflow- SRODATA dupok size=10
	0x0000 00 08 6f 76 65 72 66 6c 6f 77                    ..overflow
type:noalg.map.bucket[string]int SRODATA dupok size=176
	0x0000 d0 00 00 00 00 00 00 00 d0 00 00 00 00 00 00 00  ................
	0x0010 58 b8 d1 2e 02 08 08 19 00 00 00 00 00 00 00 00  X...............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 04 00 00 00 00 00 00 00 04 00 00 00 00 00 00 00  ................
	0x0050 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0060 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0070 00 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0080 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0090 88 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x00a0 00 00 00 00 00 00 00 00 c8 00 00 00 00 00 00 00  ................
	rel 32+8 t=1 runtime.gcbits.aaaa000200000000+0
	rel 40+4 t=5 type:.namedata.*map.bucket[string]int-+0
	rel 44+4 t=-32763 type:*map.bucket[string]int+0
	rel 48+8 t=1 type:.importpath..+0
	rel 56+8 t=1 type:noalg.map.bucket[string]int+80
	rel 80+8 t=1 type:.namedata.topbits-+0
	rel 88+8 t=1 type:[8]uint8+0
	rel 104+8 t=1 type:.namedata.keys-+0
	rel 112+8 t=1 type:noalg.[8]string+0
	rel 128+8 t=1 type:.namedata.elems-+0
	rel 136+8 t=1 type:noalg.[8]int+0
	rel 152+8 t=1 type:.namedata.overflow-+0
	rel 160+8 t=1 type:unsafe.Pointer+0
runtime.strhash·f SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 runtime.strhash+0
type:.namedata.*map[string]int- SRODATA dupok size=17
	0x0000 00 0f 2a 6d 61 70 5b 73 74 72 69 6e 67 5d 69 6e  ..*map[string]in
	0x0010 74                                               t
type:*map[string]int SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 71 fe f3 d3 08 08 08 36 00 00 00 00 00 00 00 00  q......6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.0100000000000000+0
	rel 40+4 t=5 type:.namedata.*map[string]int-+0
	rel 48+8 t=1 type:map[string]int+0
type:map[string]int SRODATA dupok size=88
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 3d f1 1f ce 02 08 08 35 00 00 00 00 00 00 00 00  =......5........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0050 10 08 d0 00 0c 00 00 00                          ........
	rel 32+8 t=1 runtime.gcbits.0100000000000000+0
	rel 40+4 t=5 type:.namedata.*map[string]int-+0
	rel 44+4 t=-32763 type:*map[string]int+0
	rel 48+8 t=1 type:string+0
	rel 56+8 t=1 type:int+0
	rel 64+8 t=1 type:noalg.map.bucket[string]int+0
	rel 72+8 t=1 runtime.strhash·f+0
type:.namedata.*map.hdr[string]int- SRODATA dupok size=21
	0x0000 00 13 2a 6d 61 70 2e 68 64 72 5b 73 74 72 69 6e  ..*map.hdr[strin
	0x0010 67 5d 69 6e 74                                   g]int
type:*map.hdr[string]int SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 ef ec fe 25 08 08 08 36 00 00 00 00 00 00 00 00  ...%...6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.0100000000000000+0
	rel 40+4 t=5 type:.namedata.*map.hdr[string]int-+0
	rel 48+8 t=1 type:noalg.map.hdr[string]int+0
runtime.gcbits.2c00000000000000 SRODATA dupok size=8
	0x0000 2c 00 00 00 00 00 00 00                          ,.......
type:.namedata.count- SRODATA dupok size=7
	0x0000 00 05 63 6f 75 6e 74                             ..count
type:.namedata.flags- SRODATA dupok size=7
	0x0000 00 05 66 6c 61 67 73                             ..flags
type:.namedata.B. SRODATA dupok size=3
	0x0000 01 01 42                                         ..B
type:.namedata.noverflow- SRODATA dupok size=11
	0x0000 00 09 6e 6f 76 65 72 66 6c 6f 77                 ..noverflow
type:.namedata.hash0- SRODATA dupok size=7
	0x0000 00 05 68 61 73 68 30                             ..hash0
type:.namedata.buckets- SRODATA dupok size=9
	0x0000 00 07 62 75 63 6b 65 74 73                       ..buckets
type:.namedata.oldbuckets- SRODATA dupok size=12
	0x0000 00 0a 6f 6c 64 62 75 63 6b 65 74 73              ..oldbuckets
type:.namedata.nevacuate- SRODATA dupok size=11
	0x0000 00 09 6e 65 76 61 63 75 61 74 65                 ..nevacuate
type:.namedata.extra- SRODATA dupok size=7
	0x0000 00 05 65 78 74 72 61                             ..extra
type:noalg.map.hdr[string]int SRODATA dupok size=296
	0x0000 30 00 00 00 00 00 00 00 30 00 00 00 00 00 00 00  0.......0.......
	0x0010 3e 43 48 04 02 08 08 19 00 00 00 00 00 00 00 00  >CH.............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 09 00 00 00 00 00 00 00 09 00 00 00 00 00 00 00  ................
	0x0050 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0060 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0070 00 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0080 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0090 09 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x00a0 00 00 00 00 00 00 00 00 0a 00 00 00 00 00 00 00  ................
	0x00b0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x00c0 0c 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x00d0 00 00 00 00 00 00 00 00 10 00 00 00 00 00 00 00  ................
	0x00e0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x00f0 18 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0100 00 00 00 00 00 00 00 00 20 00 00 00 00 00 00 00  ........ .......
	0x0110 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0120 28 00 00 00 00 00 00 00                          (.......
	rel 32+8 t=1 runtime.gcbits.2c00000000000000+0
	rel 40+4 t=5 type:.namedata.*map.hdr[string]int-+0
	rel 44+4 t=-32763 type:*map.hdr[string]int+0
	rel 48+8 t=1 type:.importpath..+0
	rel 56+8 t=1 type:noalg.map.hdr[string]int+80
	rel 80+8 t=1 type:.namedata.count-+0
	rel 88+8 t=1 type:int+0
	rel 104+8 t=1 type:.namedata.flags-+0
	rel 112+8 t=1 type:uint8+0
	rel 128+8 t=1 type:.namedata.B.+0
	rel 136+8 t=1 type:uint8+0
	rel 152+8 t=1 type:.namedata.noverflow-+0
	rel 160+8 t=1 type:uint16+0
	rel 176+8 t=1 type:.namedata.hash0-+0
	rel 184+8 t=1 type:uint32+0
	rel 200+8 t=1 type:.namedata.buckets-+0
	rel 208+8 t=1 type:*map.bucket[string]int+0
	rel 224+8 t=1 type:.namedata.oldbuckets-+0
	rel 232+8 t=1 type:*map.bucket[string]int+0
	rel 248+8 t=1 type:.namedata.nevacuate-+0
	rel 256+8 t=1 type:uintptr+0
	rel 272+8 t=1 type:.namedata.extra-+0
	rel 280+8 t=1 type:unsafe.Pointer+0
type:.namedata.*map.iter[string]int- SRODATA dupok size=22
	0x0000 00 14 2a 6d 61 70 2e 69 74 65 72 5b 73 74 72 69  ..*map.iter[stri
	0x0010 6e 67 5d 69 6e 74                                ng]int
type:*map.iter[string]int SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 c8 4d 5b ca 08 08 08 36 00 00 00 00 00 00 00 00  .M[....6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.0100000000000000+0
	rel 40+4 t=5 type:.namedata.*map.iter[string]int-+0
	rel 48+8 t=1 type:noalg.map.iter[string]int+0
runtime.gcbits.ff00000000000000 SRODATA dupok size=8
	0x0000 ff 00 00 00 00 00 00 00                          ........
type:.namedata.key- SRODATA dupok size=5
	0x0000 00 03 6b 65 79                                   ..key
type:.namedata.elem- SRODATA dupok size=6
	0x0000 00 04 65 6c 65 6d                                ..elem
type:.namedata.t- SRODATA dupok size=3
	0x0000 00 01 74                                         ..t
type:.namedata.h- SRODATA dupok size=3
	0x0000 00 01 68                                         ..h
type:.namedata.bptr- SRODATA dupok size=6
	0x0000 00 04 62 70 74 72                                ..bptr
type:.namedata.oldoverflow- SRODATA dupok size=13
	0x0000 00 0b 6f 6c 64 6f 76 65 72 66 6c 6f 77           ..oldoverflow
type:.namedata.startBucket- SRODATA dupok size=13
	0x0000 00 0b 73 74 61 72 74 42 75 63 6b 65 74           ..startBucket
type:.namedata.offset- SRODATA dupok size=8
	0x0000 00 06 6f 66 66 73 65 74                          ..offset
type:.namedata.wrapped- SRODATA dupok size=9
	0x0000 00 07 77 72 61 70 70 65 64                       ..wrapped
type:.namedata.i- SRODATA dupok size=3
	0x0000 00 01 69                                         ..i
type:.namedata.bucket- SRODATA dupok size=8
	0x0000 00 06 62 75 63 6b 65 74                          ..bucket
type:.namedata.checkBucket- SRODATA dupok size=13
	0x0000 00 0b 63 68 65 63 6b 42 75 63 6b 65 74           ..checkBucket
type:noalg.map.iter[string]int SRODATA dupok size=440
	0x0000 60 00 00 00 00 00 00 00 40 00 00 00 00 00 00 00  `.......@.......
	0x0010 d2 53 1f 78 02 08 08 19 00 00 00 00 00 00 00 00  .S.x............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 0f 00 00 00 00 00 00 00 0f 00 00 00 00 00 00 00  ................
	0x0050 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0060 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0070 00 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0080 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0090 10 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x00a0 00 00 00 00 00 00 00 00 18 00 00 00 00 00 00 00  ................
	0x00b0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x00c0 20 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00   ...............
	0x00d0 00 00 00 00 00 00 00 00 28 00 00 00 00 00 00 00  ........(.......
	0x00e0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x00f0 30 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  0...............
	0x0100 00 00 00 00 00 00 00 00 38 00 00 00 00 00 00 00  ........8.......
	0x0110 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0120 40 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  @...............
	0x0130 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00  ........H.......
	0x0140 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0150 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  I...............
	0x0160 00 00 00 00 00 00 00 00 4a 00 00 00 00 00 00 00  ........J.......
	0x0170 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0180 4b 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  K...............
	0x0190 00 00 00 00 00 00 00 00 50 00 00 00 00 00 00 00  ........P.......
	0x01a0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x01b0 58 00 00 00 00 00 00 00                          X.......
	rel 32+8 t=1 runtime.gcbits.ff00000000000000+0
	rel 40+4 t=5 type:.namedata.*map.iter[string]int-+0
	rel 44+4 t=-32763 type:*map.iter[string]int+0
	rel 48+8 t=1 type:.importpath..+0
	rel 56+8 t=1 type:noalg.map.iter[string]int+80
	rel 80+8 t=1 type:.namedata.key-+0
	rel 88+8 t=1 type:*string+0
	rel 104+8 t=1 type:.namedata.elem-+0
	rel 112+8 t=1 type:*int+0
	rel 128+8 t=1 type:.namedata.t-+0
	rel 136+8 t=1 type:unsafe.Pointer+0
	rel 152+8 t=1 type:.namedata.h-+0
	rel 160+8 t=1 type:*map.hdr[string]int+0
	rel 176+8 t=1 type:.namedata.buckets-+0
	rel 184+8 t=1 type:*map.bucket[string]int+0
	rel 200+8 t=1 type:.namedata.bptr-+0
	rel 208+8 t=1 type:*map.bucket[string]int+0
	rel 224+8 t=1 type:.namedata.overflow-+0
	rel 232+8 t=1 type:unsafe.Pointer+0
	rel 248+8 t=1 type:.namedata.oldoverflow-+0
	rel 256+8 t=1 type:unsafe.Pointer+0
	rel 272+8 t=1 type:.namedata.startBucket-+0
	rel 280+8 t=1 type:uintptr+0
	rel 296+8 t=1 type:.namedata.offset-+0
	rel 304+8 t=1 type:uint8+0
	rel 320+8 t=1 type:.namedata.wrapped-+0
	rel 328+8 t=1 type:bool+0
	rel 344+8 t=1 type:.namedata.B.+0
	rel 352+8 t=1 type:uint8+0
	rel 368+8 t=1 type:.namedata.i-+0
	rel 376+8 t=1 type:uint8+0
	rel 392+8 t=1 type:.namedata.bucket-+0
	rel 400+8 t=1 type:uintptr+0
	rel 416+8 t=1 type:.namedata.checkBucket-+0
	rel 424+8 t=1 type:uintptr+0
type:.importpath.fmt. SRODATA dupok size=5
	0x0000 00 03 66 6d 74                                   ..fmt
gclocals·D1/YcbyNumM1nqYyoY4wEQ== SRODATA dupok size=8
	0x0000 04 00 00 00 00 00 00 00                          ........
gclocals·U4gqutCvaJakzV/IJV0iLw== SRODATA dupok size=32
	0x0000 04 00 00 00 30 00 00 00 00 00 00 00 00 00 c0 02  ....0...........
	0x0010 00 00 00 00 00 fc 03 00 00 00 0a fc 03 00 00 00  ................
main.main.stkobj SRODATA static size=72
	0x0000 04 00 00 00 00 00 00 00 80 fe ff ff 20 00 00 00  ............ ...
	0x0010 20 00 00 00 00 00 00 00 a0 fe ff ff 30 00 00 00   ...........0...
	0x0020 30 00 00 00 00 00 00 00 d0 fe ff ff 60 00 00 00  0...........`...
	0x0030 40 00 00 00 00 00 00 00 30 ff ff ff d0 00 00 00  @.......0.......
	0x0040 d0 00 00 00 00 00 00 00                          ........
	rel 20+4 t=5 runtime.gcbits.0a00000000000000+0
	rel 36+4 t=5 runtime.gcbits.2c00000000000000+0
	rel 52+4 t=5 runtime.gcbits.ff00000000000000+0
	rel 68+4 t=5 runtime.gcbits.aaaa000200000000+0
gclocals·TjPuuCwdlCpTaRQGRKTrYw== SRODATA dupok size=10
	0x0000 02 00 00 00 02 00 00 00 03 00                    ..........
gclocals·J5F+7Qw7O7ve2QcWC7DpeQ== SRODATA dupok size=8
	0x0000 02 00 00 00 00 00 00 00                          ........
type:.eq.[2]interface {}.arginfo1 SRODATA static dupok size=3
	0x0000 08 08 ff                                         ...
type:.eq.[2]interface {}.argliveinfo SRODATA static dupok size=2
	0x0000 00 00                                            ..
