# command-line-arguments
main.main STEXT size=192 args=0x0 locals=0x68 funcid=0x0 align=0x0
	0x0000 00000 (/Users/yimin/Code/go-playground/cmd/interface/main.go:5)	TEXT	main.main(SB), ABIInternal, $112-0
	0x0000 00000 (/Users/yimin/Code/go-playground/cmd/interface/main.go:5)	MOVD	16(g), R16
	0x0004 00004 (/Users/yimin/Code/go-playground/cmd/interface/main.go:5)	PCDATA	$0, $-2
	0x0004 00004 (/Users/yimin/Code/go-playground/cmd/interface/main.go:5)	CMP	R16, RSP
	0x0008 00008 (/Users/yimin/Code/go-playground/cmd/interface/main.go:5)	BLS	176
	0x000c 00012 (/Users/yimin/Code/go-playground/cmd/interface/main.go:5)	PCDATA	$0, $-1
	0x000c 00012 (/Users/yimin/Code/go-playground/cmd/interface/main.go:5)	MOVD.W	R30, -112(RSP)
	0x0010 00016 (/Users/yimin/Code/go-playground/cmd/interface/main.go:5)	MOVD	R29, -8(RSP)
	0x0014 00020 (/Users/yimin/Code/go-playground/cmd/interface/main.go:5)	SUB	$8, RSP, R29
	0x0018 00024 (/Users/yimin/Code/go-playground/cmd/interface/main.go:5)	FUNCDATA	$0, gclocals·g2BeySu+wFnoycgXfElmcg==(SB)
	0x0018 00024 (/Users/yimin/Code/go-playground/cmd/interface/main.go:5)	FUNCDATA	$1, gclocals·/ydTHfVJHvKeH/UP4dRKSQ==(SB)
	0x0018 00024 (/Users/yimin/Code/go-playground/cmd/interface/main.go:5)	FUNCDATA	$2, main.main.stkobj(SB)
	0x0018 00024 (/Users/yimin/Code/go-playground/cmd/interface/main.go:7)	MOVD	$200, R0
	0x001c 00028 (/Users/yimin/Code/go-playground/cmd/interface/main.go:7)	PCDATA	$1, $0
	0x001c 00028 (/Users/yimin/Code/go-playground/cmd/interface/main.go:7)	CALL	runtime.convT64(SB)
	0x0020 00032 (/Users/yimin/Code/go-playground/cmd/interface/main.go:8)	STP	(ZR, ZR), main..autotmp_18-16(SP)
	0x0024 00036 (/Users/yimin/Code/go-playground/cmd/interface/main.go:8)	MOVD	$type:int(SB), R1
	0x002c 00044 (/Users/yimin/Code/go-playground/cmd/interface/main.go:8)	MOVD	R1, main..autotmp_18-16(SP)
	0x0030 00048 (/Users/yimin/Code/go-playground/cmd/interface/main.go:8)	MOVD	R0, main..autotmp_18-8(SP)
	0x0034 00052 (<unknown line number>)	NOP
	0x0034 00052 (<unknown line number>)	PCDATA	$0, $-3
	0x0034 00052 (/usr/local/go/src/fmt/print.go:314)	MOVD	os.Stdout(SB), R1
	0x003c 00060 (/usr/local/go/src/fmt/print.go:314)	PCDATA	$0, $-1
	0x003c 00060 (/usr/local/go/src/fmt/print.go:314)	MOVD	$go:itab.*os.File,io.Writer(SB), R0
	0x0044 00068 (/usr/local/go/src/fmt/print.go:314)	MOVD	$main..autotmp_18-16(SP), R2
	0x0048 00072 (/usr/local/go/src/fmt/print.go:314)	MOVD	$1, R3
	0x004c 00076 (/usr/local/go/src/fmt/print.go:314)	MOVD	R3, R4
	0x0050 00080 (/usr/local/go/src/fmt/print.go:314)	CALL	fmt.Fprintln(SB)
	0x0054 00084 (/Users/yimin/Code/go-playground/cmd/interface/main.go:11)	MOVD	$go:string."Go"(SB), R1
	0x005c 00092 (/Users/yimin/Code/go-playground/cmd/interface/main.go:11)	MOVD	R1, main..autotmp_19-32(SP)
	0x0060 00096 (/Users/yimin/Code/go-playground/cmd/interface/main.go:11)	MOVD	$2, R1
	0x0064 00100 (/Users/yimin/Code/go-playground/cmd/interface/main.go:11)	MOVD	R1, main..autotmp_19-24(SP)
	0x0068 00104 (/Users/yimin/Code/go-playground/cmd/interface/main.go:11)	MOVD	main..autotmp_19-32(SP), R0
	0x006c 00108 (/Users/yimin/Code/go-playground/cmd/interface/main.go:11)	CALL	runtime.convTstring(SB)
	0x0070 00112 (/Users/yimin/Code/go-playground/cmd/interface/main.go:12)	STP	(ZR, ZR), main..autotmp_23-48(SP)
	0x0074 00116 (/Users/yimin/Code/go-playground/cmd/interface/main.go:12)	PCDATA	$0, $-4
	0x0074 00116 (/Users/yimin/Code/go-playground/cmd/interface/main.go:12)	MOVD	go:itab.main.Gopher,main.coder+8(SB), R1
	0x007c 00124 (/Users/yimin/Code/go-playground/cmd/interface/main.go:12)	PCDATA	$0, $-1
	0x007c 00124 (/Users/yimin/Code/go-playground/cmd/interface/main.go:12)	MOVD	R1, main..autotmp_23-48(SP)
	0x0080 00128 (/Users/yimin/Code/go-playground/cmd/interface/main.go:12)	MOVD	R0, main..autotmp_23-40(SP)
	0x0084 00132 (<unknown line number>)	NOP
	0x0084 00132 (<unknown line number>)	PCDATA	$0, $-3
	0x0084 00132 (/usr/local/go/src/fmt/print.go:314)	MOVD	os.Stdout(SB), R1
	0x008c 00140 (/usr/local/go/src/fmt/print.go:314)	PCDATA	$0, $-1
	0x008c 00140 (/usr/local/go/src/fmt/print.go:314)	MOVD	$go:itab.*os.File,io.Writer(SB), R0
	0x0094 00148 (/usr/local/go/src/fmt/print.go:314)	MOVD	$main..autotmp_23-48(SP), R2
	0x0098 00152 (/usr/local/go/src/fmt/print.go:314)	MOVD	$1, R3
	0x009c 00156 (/usr/local/go/src/fmt/print.go:314)	MOVD	R3, R4
	0x00a0 00160 (/usr/local/go/src/fmt/print.go:314)	CALL	fmt.Fprintln(SB)
	0x00a4 00164 (/Users/yimin/Code/go-playground/cmd/interface/main.go:13)	LDP	-8(RSP), (R29, R30)
	0x00a8 00168 (/Users/yimin/Code/go-playground/cmd/interface/main.go:13)	ADD	$112, RSP
	0x00ac 00172 (/Users/yimin/Code/go-playground/cmd/interface/main.go:13)	RET	(R30)
	0x00b0 00176 (/Users/yimin/Code/go-playground/cmd/interface/main.go:13)	NOP
	0x00b0 00176 (/Users/yimin/Code/go-playground/cmd/interface/main.go:5)	PCDATA	$1, $-1
	0x00b0 00176 (/Users/yimin/Code/go-playground/cmd/interface/main.go:5)	PCDATA	$0, $-2
	0x00b0 00176 (/Users/yimin/Code/go-playground/cmd/interface/main.go:5)	MOVD	R30, R3
	0x00b4 00180 (/Users/yimin/Code/go-playground/cmd/interface/main.go:5)	CALL	runtime.morestack_noctxt(SB)
	0x00b8 00184 (/Users/yimin/Code/go-playground/cmd/interface/main.go:5)	PCDATA	$0, $-1
	0x00b8 00184 (/Users/yimin/Code/go-playground/cmd/interface/main.go:5)	JMP	0
	0x0000 90 0b 40 f9 ff 63 30 eb 49 05 00 54 fe 0f 19 f8  ..@..c0.I..T....
	0x0010 fd 83 1f f8 fd 23 00 d1 00 19 80 d2 00 00 00 94  .....#..........
	0x0020 ff ff 05 a9 01 00 00 90 21 00 00 91 e1 2f 00 f9  ........!..../..
	0x0030 e0 33 00 f9 1b 00 00 90 61 03 40 f9 00 00 00 90  .3......a.@.....
	0x0040 00 00 00 91 e2 63 01 91 e3 03 40 b2 e4 03 03 aa  .....c....@.....
	0x0050 00 00 00 94 01 00 00 90 21 00 00 91 e1 27 00 f9  ........!....'..
	0x0060 e1 03 7f b2 e1 2b 00 f9 e0 27 40 f9 00 00 00 94  .....+...'@.....
	0x0070 ff ff 03 a9 1b 00 00 90 61 03 40 f9 e1 1f 00 f9  ........a.@.....
	0x0080 e0 23 00 f9 1b 00 00 90 61 03 40 f9 00 00 00 90  .#......a.@.....
	0x0090 00 00 00 91 e2 e3 00 91 e3 03 40 b2 e4 03 03 aa  ..........@.....
	0x00a0 00 00 00 94 fd fb 7f a9 ff c3 01 91 c0 03 5f d6  .............._.
	0x00b0 e3 03 1e aa 00 00 00 94 d2 ff ff 17 00 00 00 00  ................
	rel 0+0 t=23 type:int+0
	rel 0+0 t=23 type:*os.File+0
	rel 0+0 t=23 type:main.Gopher+0
	rel 0+0 t=23 type:*os.File+0
	rel 28+4 t=9 runtime.convT64+0
	rel 36+8 t=3 type:int+0
	rel 52+8 t=41 os.Stdout+0
	rel 60+8 t=3 go:itab.*os.File,io.Writer+0
	rel 80+4 t=9 fmt.Fprintln+0
	rel 84+8 t=3 go:string."Go"+0
	rel 108+4 t=9 runtime.convTstring+0
	rel 116+8 t=41 go:itab.main.Gopher,main.coder+8
	rel 132+8 t=41 os.Stdout+0
	rel 140+8 t=3 go:itab.*os.File,io.Writer+0
	rel 160+4 t=9 fmt.Fprintln+0
	rel 180+4 t=9 runtime.morestack_noctxt+0
main.Gopher.code STEXT size=144 args=0x10 locals=0x58 funcid=0x0 align=0x0
	0x0000 00000 (/Users/yimin/Code/go-playground/cmd/interface/main.go:24)	TEXT	main.Gopher.code(SB), ABIInternal, $96-16
	0x0000 00000 (/Users/yimin/Code/go-playground/cmd/interface/main.go:24)	MOVD	16(g), R16
	0x0004 00004 (/Users/yimin/Code/go-playground/cmd/interface/main.go:24)	PCDATA	$0, $-2
	0x0004 00004 (/Users/yimin/Code/go-playground/cmd/interface/main.go:24)	CMP	R16, RSP
	0x0008 00008 (/Users/yimin/Code/go-playground/cmd/interface/main.go:24)	BLS	108
	0x000c 00012 (/Users/yimin/Code/go-playground/cmd/interface/main.go:24)	PCDATA	$0, $-1
	0x000c 00012 (/Users/yimin/Code/go-playground/cmd/interface/main.go:24)	MOVD.W	R30, -96(RSP)
	0x0010 00016 (/Users/yimin/Code/go-playground/cmd/interface/main.go:24)	MOVD	R29, -8(RSP)
	0x0014 00020 (/Users/yimin/Code/go-playground/cmd/interface/main.go:24)	SUB	$8, RSP, R29
	0x0018 00024 (/Users/yimin/Code/go-playground/cmd/interface/main.go:24)	MOVD	R0, main.p(FP)
	0x001c 00028 (/Users/yimin/Code/go-playground/cmd/interface/main.go:24)	FUNCDATA	$0, gclocals·ZzMiPAiVBg7DJ6dh/CjSag==(SB)
	0x001c 00028 (/Users/yimin/Code/go-playground/cmd/interface/main.go:24)	FUNCDATA	$1, gclocals·dHp8Husql0+svUGjZaZFhw==(SB)
	0x001c 00028 (/Users/yimin/Code/go-playground/cmd/interface/main.go:24)	FUNCDATA	$2, main.Gopher.code.stkobj(SB)
	0x001c 00028 (/Users/yimin/Code/go-playground/cmd/interface/main.go:24)	FUNCDATA	$5, main.Gopher.code.arginfo1(SB)
	0x001c 00028 (/Users/yimin/Code/go-playground/cmd/interface/main.go:24)	FUNCDATA	$6, main.Gopher.code.argliveinfo(SB)
	0x001c 00028 (/Users/yimin/Code/go-playground/cmd/interface/main.go:24)	PCDATA	$3, $1
	0x001c 00028 (/Users/yimin/Code/go-playground/cmd/interface/main.go:25)	STP	(ZR, ZR), main..autotmp_10-16(SP)
	0x0020 00032 (/Users/yimin/Code/go-playground/cmd/interface/main.go:25)	PCDATA	$1, $1
	0x0020 00032 (/Users/yimin/Code/go-playground/cmd/interface/main.go:25)	CALL	runtime.convTstring(SB)
	0x0024 00036 (/Users/yimin/Code/go-playground/cmd/interface/main.go:25)	MOVD	$type:string(SB), R2
	0x002c 00044 (/Users/yimin/Code/go-playground/cmd/interface/main.go:25)	MOVD	R2, main..autotmp_10-16(SP)
	0x0030 00048 (/Users/yimin/Code/go-playground/cmd/interface/main.go:25)	MOVD	R0, main..autotmp_10-8(SP)
	0x0034 00052 (<unknown line number>)	NOP
	0x0034 00052 (<unknown line number>)	PCDATA	$0, $-3
	0x0034 00052 (/usr/local/go/src/fmt/print.go:233)	MOVD	os.Stdout(SB), R1
	0x003c 00060 (/usr/local/go/src/fmt/print.go:233)	PCDATA	$0, $-1
	0x003c 00060 (/usr/local/go/src/fmt/print.go:233)	MOVD	$go:itab.*os.File,io.Writer(SB), R0
	0x0044 00068 (/usr/local/go/src/fmt/print.go:233)	MOVD	$go:string."I am coding %s language\n"(SB), R2
	0x004c 00076 (/usr/local/go/src/fmt/print.go:233)	MOVD	$24, R3
	0x0050 00080 (/usr/local/go/src/fmt/print.go:233)	MOVD	$main..autotmp_10-16(SP), R4
	0x0054 00084 (/usr/local/go/src/fmt/print.go:233)	MOVD	$1, R5
	0x0058 00088 (/usr/local/go/src/fmt/print.go:233)	MOVD	R5, R6
	0x005c 00092 (/usr/local/go/src/fmt/print.go:233)	PCDATA	$1, $2
	0x005c 00092 (/usr/local/go/src/fmt/print.go:233)	CALL	fmt.Fprintf(SB)
	0x0060 00096 (/Users/yimin/Code/go-playground/cmd/interface/main.go:26)	LDP	-8(RSP), (R29, R30)
	0x0064 00100 (/Users/yimin/Code/go-playground/cmd/interface/main.go:26)	ADD	$96, RSP
	0x0068 00104 (/Users/yimin/Code/go-playground/cmd/interface/main.go:26)	RET	(R30)
	0x006c 00108 (/Users/yimin/Code/go-playground/cmd/interface/main.go:26)	NOP
	0x006c 00108 (/Users/yimin/Code/go-playground/cmd/interface/main.go:24)	PCDATA	$1, $-1
	0x006c 00108 (/Users/yimin/Code/go-playground/cmd/interface/main.go:24)	PCDATA	$0, $-2
	0x006c 00108 (/Users/yimin/Code/go-playground/cmd/interface/main.go:24)	MOVD	R0, 8(RSP)
	0x0070 00112 (/Users/yimin/Code/go-playground/cmd/interface/main.go:24)	MOVD	R1, 16(RSP)
	0x0074 00116 (/Users/yimin/Code/go-playground/cmd/interface/main.go:24)	MOVD	R30, R3
	0x0078 00120 (/Users/yimin/Code/go-playground/cmd/interface/main.go:24)	CALL	runtime.morestack_noctxt(SB)
	0x007c 00124 (/Users/yimin/Code/go-playground/cmd/interface/main.go:24)	MOVD	8(RSP), R0
	0x0080 00128 (/Users/yimin/Code/go-playground/cmd/interface/main.go:24)	MOVD	16(RSP), R1
	0x0084 00132 (/Users/yimin/Code/go-playground/cmd/interface/main.go:24)	PCDATA	$0, $-1
	0x0084 00132 (/Users/yimin/Code/go-playground/cmd/interface/main.go:24)	JMP	0
	0x0000 90 0b 40 f9 ff 63 30 eb 29 03 00 54 fe 0f 1a f8  ..@..c0.)..T....
	0x0010 fd 83 1f f8 fd 23 00 d1 e0 37 00 f9 ff ff 04 a9  .....#...7......
	0x0020 00 00 00 94 02 00 00 90 42 00 00 91 e2 27 00 f9  ........B....'..
	0x0030 e0 2b 00 f9 1b 00 00 90 61 03 40 f9 00 00 00 90  .+......a.@.....
	0x0040 00 00 00 91 02 00 00 90 42 00 00 91 e3 07 7d b2  ........B.....}.
	0x0050 e4 23 01 91 e5 03 40 b2 e6 03 05 aa 00 00 00 94  .#....@.........
	0x0060 fd fb 7f a9 ff 83 01 91 c0 03 5f d6 e0 07 00 f9  .........._.....
	0x0070 e1 0b 00 f9 e3 03 1e aa 00 00 00 94 e0 07 40 f9  ..............@.
	0x0080 e1 0b 40 f9 df ff ff 17 00 00 00 00 00 00 00 00  ..@.............
	rel 0+0 t=23 type:string+0
	rel 0+0 t=23 type:*os.File+0
	rel 32+4 t=9 runtime.convTstring+0
	rel 36+8 t=3 type:string+0
	rel 52+8 t=41 os.Stdout+0
	rel 60+8 t=3 go:itab.*os.File,io.Writer+0
	rel 68+8 t=3 go:string."I am coding %s language\n"+0
	rel 92+4 t=9 fmt.Fprintf+0
	rel 120+4 t=9 runtime.morestack_noctxt+0
main.Gopher.debug STEXT size=144 args=0x10 locals=0x58 funcid=0x0 align=0x0
	0x0000 00000 (/Users/yimin/Code/go-playground/cmd/interface/main.go:28)	TEXT	main.Gopher.debug(SB), ABIInternal, $96-16
	0x0000 00000 (/Users/yimin/Code/go-playground/cmd/interface/main.go:28)	MOVD	16(g), R16
	0x0004 00004 (/Users/yimin/Code/go-playground/cmd/interface/main.go:28)	PCDATA	$0, $-2
	0x0004 00004 (/Users/yimin/Code/go-playground/cmd/interface/main.go:28)	CMP	R16, RSP
	0x0008 00008 (/Users/yimin/Code/go-playground/cmd/interface/main.go:28)	BLS	108
	0x000c 00012 (/Users/yimin/Code/go-playground/cmd/interface/main.go:28)	PCDATA	$0, $-1
	0x000c 00012 (/Users/yimin/Code/go-playground/cmd/interface/main.go:28)	MOVD.W	R30, -96(RSP)
	0x0010 00016 (/Users/yimin/Code/go-playground/cmd/interface/main.go:28)	MOVD	R29, -8(RSP)
	0x0014 00020 (/Users/yimin/Code/go-playground/cmd/interface/main.go:28)	SUB	$8, RSP, R29
	0x0018 00024 (/Users/yimin/Code/go-playground/cmd/interface/main.go:28)	MOVD	R0, main.p(FP)
	0x001c 00028 (/Users/yimin/Code/go-playground/cmd/interface/main.go:28)	FUNCDATA	$0, gclocals·ZzMiPAiVBg7DJ6dh/CjSag==(SB)
	0x001c 00028 (/Users/yimin/Code/go-playground/cmd/interface/main.go:28)	FUNCDATA	$1, gclocals·dHp8Husql0+svUGjZaZFhw==(SB)
	0x001c 00028 (/Users/yimin/Code/go-playground/cmd/interface/main.go:28)	FUNCDATA	$2, main.Gopher.debug.stkobj(SB)
	0x001c 00028 (/Users/yimin/Code/go-playground/cmd/interface/main.go:28)	FUNCDATA	$5, main.Gopher.debug.arginfo1(SB)
	0x001c 00028 (/Users/yimin/Code/go-playground/cmd/interface/main.go:28)	FUNCDATA	$6, main.Gopher.debug.argliveinfo(SB)
	0x001c 00028 (/Users/yimin/Code/go-playground/cmd/interface/main.go:28)	PCDATA	$3, $1
	0x001c 00028 (/Users/yimin/Code/go-playground/cmd/interface/main.go:29)	STP	(ZR, ZR), main..autotmp_10-16(SP)
	0x0020 00032 (/Users/yimin/Code/go-playground/cmd/interface/main.go:29)	PCDATA	$1, $1
	0x0020 00032 (/Users/yimin/Code/go-playground/cmd/interface/main.go:29)	CALL	runtime.convTstring(SB)
	0x0024 00036 (/Users/yimin/Code/go-playground/cmd/interface/main.go:29)	MOVD	$type:string(SB), R2
	0x002c 00044 (/Users/yimin/Code/go-playground/cmd/interface/main.go:29)	MOVD	R2, main..autotmp_10-16(SP)
	0x0030 00048 (/Users/yimin/Code/go-playground/cmd/interface/main.go:29)	MOVD	R0, main..autotmp_10-8(SP)
	0x0034 00052 (<unknown line number>)	NOP
	0x0034 00052 (<unknown line number>)	PCDATA	$0, $-3
	0x0034 00052 (/usr/local/go/src/fmt/print.go:233)	MOVD	os.Stdout(SB), R1
	0x003c 00060 (/usr/local/go/src/fmt/print.go:233)	PCDATA	$0, $-1
	0x003c 00060 (/usr/local/go/src/fmt/print.go:233)	MOVD	$go:itab.*os.File,io.Writer(SB), R0
	0x0044 00068 (/usr/local/go/src/fmt/print.go:233)	MOVD	$go:string."I am debuging %s language\n"(SB), R2
	0x004c 00076 (/usr/local/go/src/fmt/print.go:233)	MOVD	$26, R3
	0x0050 00080 (/usr/local/go/src/fmt/print.go:233)	MOVD	$main..autotmp_10-16(SP), R4
	0x0054 00084 (/usr/local/go/src/fmt/print.go:233)	MOVD	$1, R5
	0x0058 00088 (/usr/local/go/src/fmt/print.go:233)	MOVD	R5, R6
	0x005c 00092 (/usr/local/go/src/fmt/print.go:233)	PCDATA	$1, $2
	0x005c 00092 (/usr/local/go/src/fmt/print.go:233)	CALL	fmt.Fprintf(SB)
	0x0060 00096 (/Users/yimin/Code/go-playground/cmd/interface/main.go:30)	LDP	-8(RSP), (R29, R30)
	0x0064 00100 (/Users/yimin/Code/go-playground/cmd/interface/main.go:30)	ADD	$96, RSP
	0x0068 00104 (/Users/yimin/Code/go-playground/cmd/interface/main.go:30)	RET	(R30)
	0x006c 00108 (/Users/yimin/Code/go-playground/cmd/interface/main.go:30)	NOP
	0x006c 00108 (/Users/yimin/Code/go-playground/cmd/interface/main.go:28)	PCDATA	$1, $-1
	0x006c 00108 (/Users/yimin/Code/go-playground/cmd/interface/main.go:28)	PCDATA	$0, $-2
	0x006c 00108 (/Users/yimin/Code/go-playground/cmd/interface/main.go:28)	MOVD	R0, 8(RSP)
	0x0070 00112 (/Users/yimin/Code/go-playground/cmd/interface/main.go:28)	MOVD	R1, 16(RSP)
	0x0074 00116 (/Users/yimin/Code/go-playground/cmd/interface/main.go:28)	MOVD	R30, R3
	0x0078 00120 (/Users/yimin/Code/go-playground/cmd/interface/main.go:28)	CALL	runtime.morestack_noctxt(SB)
	0x007c 00124 (/Users/yimin/Code/go-playground/cmd/interface/main.go:28)	MOVD	8(RSP), R0
	0x0080 00128 (/Users/yimin/Code/go-playground/cmd/interface/main.go:28)	MOVD	16(RSP), R1
	0x0084 00132 (/Users/yimin/Code/go-playground/cmd/interface/main.go:28)	PCDATA	$0, $-1
	0x0084 00132 (/Users/yimin/Code/go-playground/cmd/interface/main.go:28)	JMP	0
	0x0000 90 0b 40 f9 ff 63 30 eb 29 03 00 54 fe 0f 1a f8  ..@..c0.)..T....
	0x0010 fd 83 1f f8 fd 23 00 d1 e0 37 00 f9 ff ff 04 a9  .....#...7......
	0x0020 00 00 00 94 02 00 00 90 42 00 00 91 e2 27 00 f9  ........B....'..
	0x0030 e0 2b 00 f9 1b 00 00 90 61 03 40 f9 00 00 00 90  .+......a.@.....
	0x0040 00 00 00 91 02 00 00 90 42 00 00 91 43 03 80 d2  ........B...C...
	0x0050 e4 23 01 91 e5 03 40 b2 e6 03 05 aa 00 00 00 94  .#....@.........
	0x0060 fd fb 7f a9 ff 83 01 91 c0 03 5f d6 e0 07 00 f9  .........._.....
	0x0070 e1 0b 00 f9 e3 03 1e aa 00 00 00 94 e0 07 40 f9  ..............@.
	0x0080 e1 0b 40 f9 df ff ff 17 00 00 00 00 00 00 00 00  ..@.............
	rel 0+0 t=23 type:string+0
	rel 0+0 t=23 type:*os.File+0
	rel 32+4 t=9 runtime.convTstring+0
	rel 36+8 t=3 type:string+0
	rel 52+8 t=41 os.Stdout+0
	rel 60+8 t=3 go:itab.*os.File,io.Writer+0
	rel 68+8 t=3 go:string."I am debuging %s language\n"+0
	rel 92+4 t=9 fmt.Fprintf+0
	rel 120+4 t=9 runtime.morestack_noctxt+0
main.coder.code STEXT dupok size=128 args=0x10 locals=0x18 funcid=0x15 align=0x0
	0x0000 00000 (<autogenerated>:1)	TEXT	main.coder.code(SB), DUPOK|WRAPPER|ABIInternal, $32-16
	0x0000 00000 (<autogenerated>:1)	MOVD	16(g), R16
	0x0004 00004 (<autogenerated>:1)	PCDATA	$0, $-2
	0x0004 00004 (<autogenerated>:1)	CMP	R16, RSP
	0x0008 00008 (<autogenerated>:1)	BLS	64
	0x000c 00012 (<autogenerated>:1)	PCDATA	$0, $-1
	0x000c 00012 (<autogenerated>:1)	MOVD.W	R30, -32(RSP)
	0x0010 00016 (<autogenerated>:1)	MOVD	R29, -8(RSP)
	0x0014 00020 (<autogenerated>:1)	SUB	$8, RSP, R29
	0x0018 00024 (<autogenerated>:1)	MOVD	32(g), R16
	0x001c 00028 (<autogenerated>:1)	CBNZ	R16, 92
	0x0020 00032 (<autogenerated>:1)	NOP
	0x0020 00032 (<autogenerated>:1)	MOVD	R0, main..this(FP)
	0x0024 00036 (<autogenerated>:1)	MOVD	R1, main..this+8(FP)
	0x0028 00040 (<autogenerated>:1)	FUNCDATA	$0, gclocals·IuErl7MOXaHVn7EZYWzfFA==(SB)
	0x0028 00040 (<autogenerated>:1)	FUNCDATA	$1, gclocals·J5F+7Qw7O7ve2QcWC7DpeQ==(SB)
	0x0028 00040 (<autogenerated>:1)	FUNCDATA	$5, main.coder.code.arginfo1(SB)
	0x0028 00040 (<autogenerated>:1)	FUNCDATA	$6, main.coder.code.argliveinfo(SB)
	0x0028 00040 (<autogenerated>:1)	PCDATA	$3, $1
	0x0028 00040 (<autogenerated>:1)	MOVD	24(R0), R2
	0x002c 00044 (<autogenerated>:1)	MOVD	R1, R0
	0x0030 00048 (<autogenerated>:1)	PCDATA	$1, $1
	0x0030 00048 (<autogenerated>:1)	CALL	(R2)
	0x0034 00052 (<autogenerated>:1)	LDP	-8(RSP), (R29, R30)
	0x0038 00056 (<autogenerated>:1)	ADD	$32, RSP
	0x003c 00060 (<autogenerated>:1)	RET	(R30)
	0x0040 00064 (<autogenerated>:1)	NOP
	0x0040 00064 (<autogenerated>:1)	PCDATA	$1, $-1
	0x0040 00064 (<autogenerated>:1)	PCDATA	$0, $-2
	0x0040 00064 (<autogenerated>:1)	MOVD	R0, 8(RSP)
	0x0044 00068 (<autogenerated>:1)	MOVD	R1, 16(RSP)
	0x0048 00072 (<autogenerated>:1)	MOVD	R30, R3
	0x004c 00076 (<autogenerated>:1)	CALL	runtime.morestack_noctxt(SB)
	0x0050 00080 (<autogenerated>:1)	MOVD	8(RSP), R0
	0x0054 00084 (<autogenerated>:1)	MOVD	16(RSP), R1
	0x0058 00088 (<autogenerated>:1)	PCDATA	$0, $-1
	0x0058 00088 (<autogenerated>:1)	JMP	0
	0x005c 00092 (<autogenerated>:1)	MOVD	(R16), R17
	0x0060 00096 (<autogenerated>:1)	ADD	$40, RSP, R20
	0x0064 00100 (<autogenerated>:1)	CMP	R17, R20
	0x0068 00104 (<autogenerated>:1)	BNE	32
	0x006c 00108 (<autogenerated>:1)	ADD	$8, RSP, R20
	0x0070 00112 (<autogenerated>:1)	MOVD	R20, (R16)
	0x0074 00116 (<autogenerated>:1)	JMP	32
	0x0000 90 0b 40 f9 ff 63 30 eb c9 01 00 54 fe 0f 1e f8  ..@..c0....T....
	0x0010 fd 83 1f f8 fd 23 00 d1 90 13 40 f9 10 02 00 b5  .....#....@.....
	0x0020 e0 17 00 f9 e1 1b 00 f9 02 0c 40 f9 e0 03 01 aa  ..........@.....
	0x0030 40 00 3f d6 fd fb 7f a9 ff 83 00 91 c0 03 5f d6  @.?..........._.
	0x0040 e0 07 00 f9 e1 0b 00 f9 e3 03 1e aa 00 00 00 94  ................
	0x0050 e0 07 40 f9 e1 0b 40 f9 ea ff ff 17 11 02 40 f9  ..@...@.......@.
	0x0060 f4 a3 00 91 9f 02 11 eb c1 fd ff 54 f4 23 00 91  ...........T.#..
	0x0070 14 02 00 f9 eb ff ff 17 00 00 00 00 00 00 00 00  ................
	rel 0+0 t=24 type:main.coder+96
	rel 48+0 t=10 +0
	rel 76+4 t=9 runtime.morestack_noctxt+0
main.coder.debug STEXT dupok size=128 args=0x10 locals=0x18 funcid=0x15 align=0x0
	0x0000 00000 (<autogenerated>:1)	TEXT	main.coder.debug(SB), DUPOK|WRAPPER|ABIInternal, $32-16
	0x0000 00000 (<autogenerated>:1)	MOVD	16(g), R16
	0x0004 00004 (<autogenerated>:1)	PCDATA	$0, $-2
	0x0004 00004 (<autogenerated>:1)	CMP	R16, RSP
	0x0008 00008 (<autogenerated>:1)	BLS	64
	0x000c 00012 (<autogenerated>:1)	PCDATA	$0, $-1
	0x000c 00012 (<autogenerated>:1)	MOVD.W	R30, -32(RSP)
	0x0010 00016 (<autogenerated>:1)	MOVD	R29, -8(RSP)
	0x0014 00020 (<autogenerated>:1)	SUB	$8, RSP, R29
	0x0018 00024 (<autogenerated>:1)	MOVD	32(g), R16
	0x001c 00028 (<autogenerated>:1)	CBNZ	R16, 92
	0x0020 00032 (<autogenerated>:1)	NOP
	0x0020 00032 (<autogenerated>:1)	MOVD	R0, main..this(FP)
	0x0024 00036 (<autogenerated>:1)	MOVD	R1, main..this+8(FP)
	0x0028 00040 (<autogenerated>:1)	FUNCDATA	$0, gclocals·IuErl7MOXaHVn7EZYWzfFA==(SB)
	0x0028 00040 (<autogenerated>:1)	FUNCDATA	$1, gclocals·J5F+7Qw7O7ve2QcWC7DpeQ==(SB)
	0x0028 00040 (<autogenerated>:1)	FUNCDATA	$5, main.coder.debug.arginfo1(SB)
	0x0028 00040 (<autogenerated>:1)	FUNCDATA	$6, main.coder.debug.argliveinfo(SB)
	0x0028 00040 (<autogenerated>:1)	PCDATA	$3, $1
	0x0028 00040 (<autogenerated>:1)	MOVD	32(R0), R2
	0x002c 00044 (<autogenerated>:1)	MOVD	R1, R0
	0x0030 00048 (<autogenerated>:1)	PCDATA	$1, $1
	0x0030 00048 (<autogenerated>:1)	CALL	(R2)
	0x0034 00052 (<autogenerated>:1)	LDP	-8(RSP), (R29, R30)
	0x0038 00056 (<autogenerated>:1)	ADD	$32, RSP
	0x003c 00060 (<autogenerated>:1)	RET	(R30)
	0x0040 00064 (<autogenerated>:1)	NOP
	0x0040 00064 (<autogenerated>:1)	PCDATA	$1, $-1
	0x0040 00064 (<autogenerated>:1)	PCDATA	$0, $-2
	0x0040 00064 (<autogenerated>:1)	MOVD	R0, 8(RSP)
	0x0044 00068 (<autogenerated>:1)	MOVD	R1, 16(RSP)
	0x0048 00072 (<autogenerated>:1)	MOVD	R30, R3
	0x004c 00076 (<autogenerated>:1)	CALL	runtime.morestack_noctxt(SB)
	0x0050 00080 (<autogenerated>:1)	MOVD	8(RSP), R0
	0x0054 00084 (<autogenerated>:1)	MOVD	16(RSP), R1
	0x0058 00088 (<autogenerated>:1)	PCDATA	$0, $-1
	0x0058 00088 (<autogenerated>:1)	JMP	0
	0x005c 00092 (<autogenerated>:1)	MOVD	(R16), R17
	0x0060 00096 (<autogenerated>:1)	ADD	$40, RSP, R20
	0x0064 00100 (<autogenerated>:1)	CMP	R17, R20
	0x0068 00104 (<autogenerated>:1)	BNE	32
	0x006c 00108 (<autogenerated>:1)	ADD	$8, RSP, R20
	0x0070 00112 (<autogenerated>:1)	MOVD	R20, (R16)
	0x0074 00116 (<autogenerated>:1)	JMP	32
	0x0000 90 0b 40 f9 ff 63 30 eb c9 01 00 54 fe 0f 1e f8  ..@..c0....T....
	0x0010 fd 83 1f f8 fd 23 00 d1 90 13 40 f9 10 02 00 b5  .....#....@.....
	0x0020 e0 17 00 f9 e1 1b 00 f9 02 10 40 f9 e0 03 01 aa  ..........@.....
	0x0030 40 00 3f d6 fd fb 7f a9 ff 83 00 91 c0 03 5f d6  @.?..........._.
	0x0040 e0 07 00 f9 e1 0b 00 f9 e3 03 1e aa 00 00 00 94  ................
	0x0050 e0 07 40 f9 e1 0b 40 f9 ea ff ff 17 11 02 40 f9  ..@...@.......@.
	0x0060 f4 a3 00 91 9f 02 11 eb c1 fd ff 54 f4 23 00 91  ...........T.#..
	0x0070 14 02 00 f9 eb ff ff 17 00 00 00 00 00 00 00 00  ................
	rel 0+0 t=24 type:main.coder+104
	rel 48+0 t=10 +0
	rel 76+4 t=9 runtime.morestack_noctxt+0
main.(*Gopher).code STEXT dupok size=192 args=0x8 locals=0x58 funcid=0x15 align=0x0
	0x0000 00000 (<autogenerated>:1)	TEXT	main.(*Gopher).code(SB), DUPOK|WRAPPER|ABIInternal, $96-8
	0x0000 00000 (<autogenerated>:1)	MOVD	16(g), R16
	0x0004 00004 (<autogenerated>:1)	PCDATA	$0, $-2
	0x0004 00004 (<autogenerated>:1)	CMP	R16, RSP
	0x0008 00008 (<autogenerated>:1)	BLS	136
	0x000c 00012 (<autogenerated>:1)	PCDATA	$0, $-1
	0x000c 00012 (<autogenerated>:1)	MOVD.W	R30, -96(RSP)
	0x0010 00016 (<autogenerated>:1)	MOVD	R29, -8(RSP)
	0x0014 00020 (<autogenerated>:1)	SUB	$8, RSP, R29
	0x0018 00024 (<autogenerated>:1)	MOVD	32(g), R16
	0x001c 00028 (<autogenerated>:1)	CBNZ	R16, 156
	0x0020 00032 (<autogenerated>:1)	NOP
	0x0020 00032 (<autogenerated>:1)	FUNCDATA	$0, gclocals·ZzMiPAiVBg7DJ6dh/CjSag==(SB)
	0x0020 00032 (<autogenerated>:1)	FUNCDATA	$1, gclocals·dHp8Husql0+svUGjZaZFhw==(SB)
	0x0020 00032 (<autogenerated>:1)	FUNCDATA	$2, main.(*Gopher).code.stkobj(SB)
	0x0020 00032 (<autogenerated>:1)	FUNCDATA	$5, main.(*Gopher).code.arginfo1(SB)
	0x0020 00032 (<autogenerated>:1)	FUNCDATA	$6, main.(*Gopher).code.argliveinfo(SB)
	0x0020 00032 (<autogenerated>:1)	PCDATA	$3, $1
	0x0020 00032 (<autogenerated>:1)	CBZ	R0, 128
	0x0024 00036 (<autogenerated>:1)	MOVD	(R0), R2
	0x0028 00040 (<autogenerated>:1)	MOVD	8(R0), R1
	0x002c 00044 (<unknown line number>)	NOP
	0x002c 00044 (/Users/yimin/Code/go-playground/cmd/interface/main.go:25)	STP	(ZR, ZR), main..autotmp_11-16(SP)
	0x0030 00048 (/Users/yimin/Code/go-playground/cmd/interface/main.go:25)	MOVD	R2, R0
	0x0034 00052 (/Users/yimin/Code/go-playground/cmd/interface/main.go:25)	PCDATA	$1, $1
	0x0034 00052 (/Users/yimin/Code/go-playground/cmd/interface/main.go:25)	CALL	runtime.convTstring(SB)
	0x0038 00056 (/Users/yimin/Code/go-playground/cmd/interface/main.go:25)	MOVD	$type:string(SB), R2
	0x0040 00064 (/Users/yimin/Code/go-playground/cmd/interface/main.go:25)	MOVD	R2, main..autotmp_11-16(SP)
	0x0044 00068 (/Users/yimin/Code/go-playground/cmd/interface/main.go:25)	MOVD	R0, main..autotmp_11-8(SP)
	0x0048 00072 (<unknown line number>)	NOP
	0x0048 00072 (<unknown line number>)	PCDATA	$0, $-3
	0x0048 00072 (/usr/local/go/src/fmt/print.go:233)	MOVD	os.Stdout(SB), R1
	0x0050 00080 (/usr/local/go/src/fmt/print.go:233)	PCDATA	$0, $-1
	0x0050 00080 (/usr/local/go/src/fmt/print.go:233)	MOVD	$go:itab.*os.File,io.Writer(SB), R0
	0x0058 00088 (/usr/local/go/src/fmt/print.go:233)	MOVD	$go:string."I am coding %s language\n"(SB), R2
	0x0060 00096 (/usr/local/go/src/fmt/print.go:233)	MOVD	$24, R3
	0x0064 00100 (/usr/local/go/src/fmt/print.go:233)	MOVD	$main..autotmp_11-16(SP), R4
	0x0068 00104 (/usr/local/go/src/fmt/print.go:233)	MOVD	$1, R5
	0x006c 00108 (/usr/local/go/src/fmt/print.go:233)	MOVD	R5, R6
	0x0070 00112 (/usr/local/go/src/fmt/print.go:233)	PCDATA	$1, $2
	0x0070 00112 (/usr/local/go/src/fmt/print.go:233)	CALL	fmt.Fprintf(SB)
	0x0074 00116 (<autogenerated>:1)	LDP	-8(RSP), (R29, R30)
	0x0078 00120 (<autogenerated>:1)	ADD	$96, RSP
	0x007c 00124 (<autogenerated>:1)	RET	(R30)
	0x0080 00128 (<autogenerated>:1)	CALL	runtime.panicwrap(SB)
	0x0084 00132 (<autogenerated>:1)	HINT	$0
	0x0088 00136 (<autogenerated>:1)	NOP
	0x0088 00136 (<autogenerated>:1)	PCDATA	$1, $-1
	0x0088 00136 (<autogenerated>:1)	PCDATA	$0, $-2
	0x0088 00136 (<autogenerated>:1)	MOVD	R0, 8(RSP)
	0x008c 00140 (<autogenerated>:1)	MOVD	R30, R3
	0x0090 00144 (<autogenerated>:1)	CALL	runtime.morestack_noctxt(SB)
	0x0094 00148 (<autogenerated>:1)	MOVD	8(RSP), R0
	0x0098 00152 (<autogenerated>:1)	PCDATA	$0, $-1
	0x0098 00152 (<autogenerated>:1)	JMP	0
	0x009c 00156 (<autogenerated>:1)	MOVD	(R16), R17
	0x00a0 00160 (<autogenerated>:1)	ADD	$104, RSP, R20
	0x00a4 00164 (<autogenerated>:1)	CMP	R17, R20
	0x00a8 00168 (<autogenerated>:1)	BNE	32
	0x00ac 00172 (<autogenerated>:1)	ADD	$8, RSP, R20
	0x00b0 00176 (<autogenerated>:1)	MOVD	R20, (R16)
	0x00b4 00180 (<autogenerated>:1)	JMP	32
	0x0000 90 0b 40 f9 ff 63 30 eb 09 04 00 54 fe 0f 1a f8  ..@..c0....T....
	0x0010 fd 83 1f f8 fd 23 00 d1 90 13 40 f9 10 04 00 b5  .....#....@.....
	0x0020 00 03 00 b4 02 00 40 f9 01 04 40 f9 ff ff 04 a9  ......@...@.....
	0x0030 e0 03 02 aa 00 00 00 94 02 00 00 90 42 00 00 91  ............B...
	0x0040 e2 27 00 f9 e0 2b 00 f9 1b 00 00 90 61 03 40 f9  .'...+......a.@.
	0x0050 00 00 00 90 00 00 00 91 02 00 00 90 42 00 00 91  ............B...
	0x0060 e3 07 7d b2 e4 23 01 91 e5 03 40 b2 e6 03 05 aa  ..}..#....@.....
	0x0070 00 00 00 94 fd fb 7f a9 ff 83 01 91 c0 03 5f d6  .............._.
	0x0080 00 00 00 94 1f 20 03 d5 e0 07 00 f9 e3 03 1e aa  ..... ..........
	0x0090 00 00 00 94 e0 07 40 f9 da ff ff 17 11 02 40 f9  ......@.......@.
	0x00a0 f4 a3 01 91 9f 02 11 eb c1 fb ff 54 f4 23 00 91  ...........T.#..
	0x00b0 14 02 00 f9 db ff ff 17 00 00 00 00 00 00 00 00  ................
	rel 0+0 t=23 type:string+0
	rel 0+0 t=23 type:*os.File+0
	rel 52+4 t=9 runtime.convTstring+0
	rel 56+8 t=3 type:string+0
	rel 72+8 t=41 os.Stdout+0
	rel 80+8 t=3 go:itab.*os.File,io.Writer+0
	rel 88+8 t=3 go:string."I am coding %s language\n"+0
	rel 112+4 t=9 fmt.Fprintf+0
	rel 128+4 t=9 runtime.panicwrap+0
	rel 144+4 t=9 runtime.morestack_noctxt+0
main.(*Gopher).debug STEXT dupok size=192 args=0x8 locals=0x58 funcid=0x15 align=0x0
	0x0000 00000 (<autogenerated>:1)	TEXT	main.(*Gopher).debug(SB), DUPOK|WRAPPER|ABIInternal, $96-8
	0x0000 00000 (<autogenerated>:1)	MOVD	16(g), R16
	0x0004 00004 (<autogenerated>:1)	PCDATA	$0, $-2
	0x0004 00004 (<autogenerated>:1)	CMP	R16, RSP
	0x0008 00008 (<autogenerated>:1)	BLS	136
	0x000c 00012 (<autogenerated>:1)	PCDATA	$0, $-1
	0x000c 00012 (<autogenerated>:1)	MOVD.W	R30, -96(RSP)
	0x0010 00016 (<autogenerated>:1)	MOVD	R29, -8(RSP)
	0x0014 00020 (<autogenerated>:1)	SUB	$8, RSP, R29
	0x0018 00024 (<autogenerated>:1)	MOVD	32(g), R16
	0x001c 00028 (<autogenerated>:1)	CBNZ	R16, 156
	0x0020 00032 (<autogenerated>:1)	NOP
	0x0020 00032 (<autogenerated>:1)	FUNCDATA	$0, gclocals·ZzMiPAiVBg7DJ6dh/CjSag==(SB)
	0x0020 00032 (<autogenerated>:1)	FUNCDATA	$1, gclocals·dHp8Husql0+svUGjZaZFhw==(SB)
	0x0020 00032 (<autogenerated>:1)	FUNCDATA	$2, main.(*Gopher).debug.stkobj(SB)
	0x0020 00032 (<autogenerated>:1)	FUNCDATA	$5, main.(*Gopher).debug.arginfo1(SB)
	0x0020 00032 (<autogenerated>:1)	FUNCDATA	$6, main.(*Gopher).debug.argliveinfo(SB)
	0x0020 00032 (<autogenerated>:1)	PCDATA	$3, $1
	0x0020 00032 (<autogenerated>:1)	CBZ	R0, 128
	0x0024 00036 (<autogenerated>:1)	MOVD	(R0), R2
	0x0028 00040 (<autogenerated>:1)	MOVD	8(R0), R1
	0x002c 00044 (<unknown line number>)	NOP
	0x002c 00044 (/Users/yimin/Code/go-playground/cmd/interface/main.go:29)	STP	(ZR, ZR), main..autotmp_11-16(SP)
	0x0030 00048 (/Users/yimin/Code/go-playground/cmd/interface/main.go:29)	MOVD	R2, R0
	0x0034 00052 (/Users/yimin/Code/go-playground/cmd/interface/main.go:29)	PCDATA	$1, $1
	0x0034 00052 (/Users/yimin/Code/go-playground/cmd/interface/main.go:29)	CALL	runtime.convTstring(SB)
	0x0038 00056 (/Users/yimin/Code/go-playground/cmd/interface/main.go:29)	MOVD	$type:string(SB), R2
	0x0040 00064 (/Users/yimin/Code/go-playground/cmd/interface/main.go:29)	MOVD	R2, main..autotmp_11-16(SP)
	0x0044 00068 (/Users/yimin/Code/go-playground/cmd/interface/main.go:29)	MOVD	R0, main..autotmp_11-8(SP)
	0x0048 00072 (<unknown line number>)	NOP
	0x0048 00072 (<unknown line number>)	PCDATA	$0, $-3
	0x0048 00072 (/usr/local/go/src/fmt/print.go:233)	MOVD	os.Stdout(SB), R1
	0x0050 00080 (/usr/local/go/src/fmt/print.go:233)	PCDATA	$0, $-1
	0x0050 00080 (/usr/local/go/src/fmt/print.go:233)	MOVD	$go:itab.*os.File,io.Writer(SB), R0
	0x0058 00088 (/usr/local/go/src/fmt/print.go:233)	MOVD	$go:string."I am debuging %s language\n"(SB), R2
	0x0060 00096 (/usr/local/go/src/fmt/print.go:233)	MOVD	$26, R3
	0x0064 00100 (/usr/local/go/src/fmt/print.go:233)	MOVD	$main..autotmp_11-16(SP), R4
	0x0068 00104 (/usr/local/go/src/fmt/print.go:233)	MOVD	$1, R5
	0x006c 00108 (/usr/local/go/src/fmt/print.go:233)	MOVD	R5, R6
	0x0070 00112 (/usr/local/go/src/fmt/print.go:233)	PCDATA	$1, $2
	0x0070 00112 (/usr/local/go/src/fmt/print.go:233)	CALL	fmt.Fprintf(SB)
	0x0074 00116 (<autogenerated>:1)	LDP	-8(RSP), (R29, R30)
	0x0078 00120 (<autogenerated>:1)	ADD	$96, RSP
	0x007c 00124 (<autogenerated>:1)	RET	(R30)
	0x0080 00128 (<autogenerated>:1)	CALL	runtime.panicwrap(SB)
	0x0084 00132 (<autogenerated>:1)	HINT	$0
	0x0088 00136 (<autogenerated>:1)	NOP
	0x0088 00136 (<autogenerated>:1)	PCDATA	$1, $-1
	0x0088 00136 (<autogenerated>:1)	PCDATA	$0, $-2
	0x0088 00136 (<autogenerated>:1)	MOVD	R0, 8(RSP)
	0x008c 00140 (<autogenerated>:1)	MOVD	R30, R3
	0x0090 00144 (<autogenerated>:1)	CALL	runtime.morestack_noctxt(SB)
	0x0094 00148 (<autogenerated>:1)	MOVD	8(RSP), R0
	0x0098 00152 (<autogenerated>:1)	PCDATA	$0, $-1
	0x0098 00152 (<autogenerated>:1)	JMP	0
	0x009c 00156 (<autogenerated>:1)	MOVD	(R16), R17
	0x00a0 00160 (<autogenerated>:1)	ADD	$104, RSP, R20
	0x00a4 00164 (<autogenerated>:1)	CMP	R17, R20
	0x00a8 00168 (<autogenerated>:1)	BNE	32
	0x00ac 00172 (<autogenerated>:1)	ADD	$8, RSP, R20
	0x00b0 00176 (<autogenerated>:1)	MOVD	R20, (R16)
	0x00b4 00180 (<autogenerated>:1)	JMP	32
	0x0000 90 0b 40 f9 ff 63 30 eb 09 04 00 54 fe 0f 1a f8  ..@..c0....T....
	0x0010 fd 83 1f f8 fd 23 00 d1 90 13 40 f9 10 04 00 b5  .....#....@.....
	0x0020 00 03 00 b4 02 00 40 f9 01 04 40 f9 ff ff 04 a9  ......@...@.....
	0x0030 e0 03 02 aa 00 00 00 94 02 00 00 90 42 00 00 91  ............B...
	0x0040 e2 27 00 f9 e0 2b 00 f9 1b 00 00 90 61 03 40 f9  .'...+......a.@.
	0x0050 00 00 00 90 00 00 00 91 02 00 00 90 42 00 00 91  ............B...
	0x0060 43 03 80 d2 e4 23 01 91 e5 03 40 b2 e6 03 05 aa  C....#....@.....
	0x0070 00 00 00 94 fd fb 7f a9 ff 83 01 91 c0 03 5f d6  .............._.
	0x0080 00 00 00 94 1f 20 03 d5 e0 07 00 f9 e3 03 1e aa  ..... ..........
	0x0090 00 00 00 94 e0 07 40 f9 da ff ff 17 11 02 40 f9  ......@.......@.
	0x00a0 f4 a3 01 91 9f 02 11 eb c1 fb ff 54 f4 23 00 91  ...........T.#..
	0x00b0 14 02 00 f9 db ff ff 17 00 00 00 00 00 00 00 00  ................
	rel 0+0 t=23 type:string+0
	rel 0+0 t=23 type:*os.File+0
	rel 52+4 t=9 runtime.convTstring+0
	rel 56+8 t=3 type:string+0
	rel 72+8 t=41 os.Stdout+0
	rel 80+8 t=3 go:itab.*os.File,io.Writer+0
	rel 88+8 t=3 go:string."I am debuging %s language\n"+0
	rel 112+4 t=9 fmt.Fprintf+0
	rel 128+4 t=9 runtime.panicwrap+0
	rel 144+4 t=9 runtime.morestack_noctxt+0
go:cuinfo.producer.main SDWARFCUINFO dupok size=0
	0x0000 2d 73 68 61 72 65 64 20 72 65 67 61 62 69        -shared regabi
runtime.memequal64·f SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 runtime.memequal64+0
runtime.gcbits.0100000000000000 SRODATA dupok size=8
	0x0000 01 00 00 00 00 00 00 00                          ........
type:.namedata.*func()- SRODATA dupok size=9
	0x0000 00 07 2a 66 75 6e 63 28 29                       ..*func()
type:*func() SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 75 ac 29 27 08 08 08 36 00 00 00 00 00 00 00 00  u.)'...6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.0100000000000000+0
	rel 40+4 t=5 type:.namedata.*func()-+0
	rel 48+8 t=1 type:func()+0
type:func() SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 fe fa b9 80 02 08 08 33 00 00 00 00 00 00 00 00  .......3........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00                                      ....
	rel 32+8 t=1 runtime.gcbits.0100000000000000+0
	rel 40+4 t=5 type:.namedata.*func()-+0
	rel 44+4 t=-32763 type:*func()+0
runtime.interequal·f SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 runtime.interequal+0
type:.namedata.*main.coder- SRODATA dupok size=13
	0x0000 00 0b 2a 6d 61 69 6e 2e 63 6f 64 65 72           ..*main.coder
type:*main.coder SRODATA size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 f8 3e 9e 86 08 08 08 36 00 00 00 00 00 00 00 00  .>.....6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.0100000000000000+0
	rel 40+4 t=5 type:.namedata.*main.coder-+0
	rel 48+8 t=1 type:main.coder+0
runtime.gcbits.0200000000000000 SRODATA dupok size=8
	0x0000 02 00 00 00 00 00 00 00                          ........
type:.importpath.main. SRODATA dupok size=6
	0x0000 00 04 6d 61 69 6e                                ..main
type:.namedata.code- SRODATA dupok size=6
	0x0000 00 04 63 6f 64 65                                ..code
type:.namedata.debug- SRODATA dupok size=7
	0x0000 00 05 64 65 62 75 67                             ..debug
type:main.coder SRODATA size=112
	0x0000 10 00 00 00 00 00 00 00 10 00 00 00 00 00 00 00  ................
	0x0010 f0 5b ab a1 07 08 08 14 00 00 00 00 00 00 00 00  .[..............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 02 00 00 00 00 00 00 00 02 00 00 00 00 00 00 00  ................
	0x0050 00 00 00 00 00 00 00 00 20 00 00 00 00 00 00 00  ........ .......
	0x0060 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 24+8 t=1 runtime.interequal·f+0
	rel 32+8 t=1 runtime.gcbits.0200000000000000+0
	rel 40+4 t=5 type:.namedata.*main.coder-+0
	rel 44+4 t=5 type:*main.coder+0
	rel 48+8 t=1 type:.importpath.main.+0
	rel 56+8 t=1 type:main.coder+96
	rel 80+4 t=5 type:.importpath.main.+0
	rel 96+4 t=5 type:.namedata.code-+0
	rel 100+4 t=5 type:func()+0
	rel 104+4 t=5 type:.namedata.debug-+0
	rel 108+4 t=5 type:func()+0
runtime.strequal·f SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 runtime.strequal+0
type:.namedata.*main.Gopher. SRODATA dupok size=14
	0x0000 01 0c 2a 6d 61 69 6e 2e 47 6f 70 68 65 72        ..*main.Gopher
type:.namedata.*func(*main.Gopher)- SRODATA dupok size=21
	0x0000 00 13 2a 66 75 6e 63 28 2a 6d 61 69 6e 2e 47 6f  ..*func(*main.Go
	0x0010 70 68 65 72 29                                   pher)
type:*func(*main.Gopher) SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 c5 2d 6b d8 08 08 08 36 00 00 00 00 00 00 00 00  .-k....6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.0100000000000000+0
	rel 40+4 t=5 type:.namedata.*func(*main.Gopher)-+0
	rel 48+8 t=1 type:func(*main.Gopher)+0
type:func(*main.Gopher) SRODATA dupok size=64
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 cf 85 af 4f 02 08 08 33 00 00 00 00 00 00 00 00  ...O...3........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 01 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 32+8 t=1 runtime.gcbits.0100000000000000+0
	rel 40+4 t=5 type:.namedata.*func(*main.Gopher)-+0
	rel 44+4 t=-32763 type:*func(*main.Gopher)+0
	rel 56+8 t=1 type:*main.Gopher+0
type:*main.Gopher SRODATA size=104
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 7f d7 5b 47 09 08 08 36 00 00 00 00 00 00 00 00  ..[G...6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 02 00 00 00  ................
	0x0040 10 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0050 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0060 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.0100000000000000+0
	rel 40+4 t=5 type:.namedata.*main.Gopher.+0
	rel 48+8 t=1 type:main.Gopher+0
	rel 56+4 t=5 type:.importpath.main.+0
	rel 72+4 t=5 type:.namedata.code-+0
	rel 76+4 t=26 type:func()+0
	rel 80+4 t=26 main.(*Gopher).code+0
	rel 84+4 t=26 main.(*Gopher).code+0
	rel 88+4 t=5 type:.namedata.debug-+0
	rel 92+4 t=26 type:func()+0
	rel 96+4 t=26 main.(*Gopher).debug+0
	rel 100+4 t=26 main.(*Gopher).debug+0
type:.namedata.*func(main.Gopher)- SRODATA dupok size=20
	0x0000 00 12 2a 66 75 6e 63 28 6d 61 69 6e 2e 47 6f 70  ..*func(main.Gop
	0x0010 68 65 72 29                                      her)
type:*func(main.Gopher) SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 75 58 c5 b3 08 08 08 36 00 00 00 00 00 00 00 00  uX.....6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.0100000000000000+0
	rel 40+4 t=5 type:.namedata.*func(main.Gopher)-+0
	rel 48+8 t=1 type:func(main.Gopher)+0
type:func(main.Gopher) SRODATA dupok size=64
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 80 f7 7d aa 02 08 08 33 00 00 00 00 00 00 00 00  ..}....3........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 01 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 32+8 t=1 runtime.gcbits.0100000000000000+0
	rel 40+4 t=5 type:.namedata.*func(main.Gopher)-+0
	rel 44+4 t=-32763 type:*func(main.Gopher)+0
	rel 56+8 t=1 type:main.Gopher+0
type:.namedata.language- SRODATA dupok size=10
	0x0000 00 08 6c 61 6e 67 75 61 67 65                    ..language
type:main.Gopher SRODATA size=152
	0x0000 10 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 97 61 33 82 07 08 08 19 00 00 00 00 00 00 00 00  .a3.............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 01 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00  ................
	0x0050 00 00 00 00 02 00 00 00 28 00 00 00 00 00 00 00  ........(.......
	0x0060 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0070 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0080 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0090 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.strequal·f+0
	rel 32+8 t=1 runtime.gcbits.0100000000000000+0
	rel 40+4 t=5 type:.namedata.*main.Gopher.+0
	rel 44+4 t=5 type:*main.Gopher+0
	rel 48+8 t=1 type:.importpath.main.+0
	rel 56+8 t=1 type:main.Gopher+96
	rel 80+4 t=5 type:.importpath.main.+0
	rel 96+8 t=1 type:.namedata.language-+0
	rel 104+8 t=1 type:string+0
	rel 120+4 t=5 type:.namedata.code-+0
	rel 124+4 t=26 type:func()+0
	rel 128+4 t=26 main.(*Gopher).code+0
	rel 132+4 t=26 main.Gopher.code+0
	rel 136+4 t=5 type:.namedata.debug-+0
	rel 140+4 t=26 type:func()+0
	rel 144+4 t=26 main.(*Gopher).debug+0
	rel 148+4 t=26 main.Gopher.debug+0
go:itab.main.Gopher,main.coder SRODATA dupok size=40
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 97 61 33 82 00 00 00 00 00 00 00 00 00 00 00 00  .a3.............
	0x0020 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 type:main.coder+0
	rel 8+8 t=1 type:main.Gopher+0
	rel 24+8 t=-32767 main.(*Gopher).code+0
	rel 32+8 t=-32767 main.(*Gopher).debug+0
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
go:info.fmt.Printf$abstract SDWARFABSFCN dupok size=54
	0x0000 05 66 6d 74 2e 50 72 69 6e 74 66 00 01 01 13 66  .fmt.Printf....f
	0x0010 6f 72 6d 61 74 00 00 00 00 00 00 13 61 00 00 00  ormat.......a...
	0x0020 00 00 00 13 6e 00 01 00 00 00 00 13 65 72 72 00  ....n.......err.
	0x0030 01 00 00 00 00 00                                ......
	rel 0+0 t=22 type:[]interface {}+0
	rel 0+0 t=22 type:error+0
	rel 0+0 t=22 type:int+0
	rel 0+0 t=22 type:string+0
	rel 23+4 t=31 go:info.string+0
	rel 31+4 t=31 go:info.[]interface {}+0
	rel 39+4 t=31 go:info.int+0
	rel 49+4 t=31 go:info.error+0
go:info.main.Gopher.code$abstract SDWARFABSFCN dupok size=29
	0x0000 05 6d 61 69 6e 2e 47 6f 70 68 65 72 2e 63 6f 64  .main.Gopher.cod
	0x0010 65 00 01 01 13 70 00 00 00 00 00 00 00           e....p.......
	rel 24+4 t=31 go:info.main.Gopher+0
go:info.main.Gopher.debug$abstract SDWARFABSFCN dupok size=30
	0x0000 05 6d 61 69 6e 2e 47 6f 70 68 65 72 2e 64 65 62  .main.Gopher.deb
	0x0010 75 67 00 01 01 13 70 00 00 00 00 00 00 00        ug....p.......
	rel 25+4 t=31 go:info.main.Gopher+0
main..inittask SNOPTRDATA size=32
	0x0000 00 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00  ................
	0x0010 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 24+8 t=1 fmt..inittask+0
go:string."Go" SRODATA dupok size=2
	0x0000 47 6f                                            Go
go:string."I am coding %s language\n" SRODATA dupok size=24
	0x0000 49 20 61 6d 20 63 6f 64 69 6e 67 20 25 73 20 6c  I am coding %s l
	0x0010 61 6e 67 75 61 67 65 0a                          anguage.
go:string."I am debuging %s language\n" SRODATA dupok size=26
	0x0000 49 20 61 6d 20 64 65 62 75 67 69 6e 67 20 25 73  I am debuging %s
	0x0010 20 6c 61 6e 67 75 61 67 65 0a                     language.
runtime.nilinterequal·f SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 runtime.nilinterequal+0
type:.namedata.*[1]interface {}- SRODATA dupok size=18
	0x0000 00 10 2a 5b 31 5d 69 6e 74 65 72 66 61 63 65 20  ..*[1]interface 
	0x0010 7b 7d                                            {}
type:*[1]interface {} SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 a8 0e 57 36 08 08 08 36 00 00 00 00 00 00 00 00  ..W6...6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.0100000000000000+0
	rel 40+4 t=5 type:.namedata.*[1]interface {}-+0
	rel 48+8 t=1 type:[1]interface {}+0
type:[1]interface {} SRODATA dupok size=72
	0x0000 10 00 00 00 00 00 00 00 10 00 00 00 00 00 00 00  ................
	0x0010 6e 20 6a 3d 02 08 08 11 00 00 00 00 00 00 00 00  n j=............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 01 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.nilinterequal·f+0
	rel 32+8 t=1 runtime.gcbits.0200000000000000+0
	rel 40+4 t=5 type:.namedata.*[1]interface {}-+0
	rel 44+4 t=-32763 type:*[1]interface {}+0
	rel 48+8 t=1 type:interface {}+0
	rel 56+8 t=1 type:[]interface {}+0
type:.importpath.fmt. SRODATA dupok size=5
	0x0000 00 03 66 6d 74                                   ..fmt
gclocals·g2BeySu+wFnoycgXfElmcg== SRODATA dupok size=8
	0x0000 01 00 00 00 00 00 00 00                          ........
gclocals·/ydTHfVJHvKeH/UP4dRKSQ== SRODATA dupok size=9
	0x0000 01 00 00 00 06 00 00 00 00                       .........
main.main.stkobj SRODATA static size=56
	0x0000 03 00 00 00 00 00 00 00 d0 ff ff ff 10 00 00 00  ................
	0x0010 10 00 00 00 00 00 00 00 e0 ff ff ff 10 00 00 00  ................
	0x0020 08 00 00 00 00 00 00 00 f0 ff ff ff 10 00 00 00  ................
	0x0030 10 00 00 00 00 00 00 00                          ........
	rel 20+4 t=5 runtime.gcbits.0200000000000000+0
	rel 36+4 t=5 runtime.gcbits.0100000000000000+0
	rel 52+4 t=5 runtime.gcbits.0200000000000000+0
gclocals·ZzMiPAiVBg7DJ6dh/CjSag== SRODATA dupok size=11
	0x0000 03 00 00 00 01 00 00 00 01 00 00                 ...........
gclocals·dHp8Husql0+svUGjZaZFhw== SRODATA dupok size=11
	0x0000 03 00 00 00 02 00 00 00 00 02 00                 ...........
main.Gopher.code.stkobj SRODATA static size=24
	0x0000 01 00 00 00 00 00 00 00 f0 ff ff ff 10 00 00 00  ................
	0x0010 10 00 00 00 00 00 00 00                          ........
	rel 20+4 t=5 runtime.gcbits.0200000000000000+0
main.Gopher.code.arginfo1 SRODATA static dupok size=9
	0x0000 fe fe 00 08 08 08 fd fd ff                       .........
main.Gopher.code.argliveinfo SRODATA static dupok size=2
	0x0000 00 00                                            ..
main.Gopher.debug.stkobj SRODATA static size=24
	0x0000 01 00 00 00 00 00 00 00 f0 ff ff ff 10 00 00 00  ................
	0x0010 10 00 00 00 00 00 00 00                          ........
	rel 20+4 t=5 runtime.gcbits.0200000000000000+0
main.Gopher.debug.arginfo1 SRODATA static dupok size=9
	0x0000 fe fe 00 08 08 08 fd fd ff                       .........
main.Gopher.debug.argliveinfo SRODATA static dupok size=2
	0x0000 00 00                                            ..
gclocals·IuErl7MOXaHVn7EZYWzfFA== SRODATA dupok size=10
	0x0000 02 00 00 00 02 00 00 00 02 00                    ..........
gclocals·J5F+7Qw7O7ve2QcWC7DpeQ== SRODATA dupok size=8
	0x0000 02 00 00 00 00 00 00 00                          ........
main.coder.code.arginfo1 SRODATA static dupok size=7
	0x0000 fe 00 08 08 08 fd ff                             .......
main.coder.code.argliveinfo SRODATA static dupok size=2
	0x0000 00 00                                            ..
main.coder.debug.arginfo1 SRODATA static dupok size=7
	0x0000 fe 00 08 08 08 fd ff                             .......
main.coder.debug.argliveinfo SRODATA static dupok size=2
	0x0000 00 00                                            ..
main.(*Gopher).code.stkobj SRODATA static size=24
	0x0000 01 00 00 00 00 00 00 00 f0 ff ff ff 10 00 00 00  ................
	0x0010 10 00 00 00 00 00 00 00                          ........
	rel 20+4 t=5 runtime.gcbits.0200000000000000+0
main.(*Gopher).code.arginfo1 SRODATA static dupok size=3
	0x0000 00 08 ff                                         ...
main.(*Gopher).code.argliveinfo SRODATA static dupok size=2
	0x0000 00 00                                            ..
main.(*Gopher).debug.stkobj SRODATA static size=24
	0x0000 01 00 00 00 00 00 00 00 f0 ff ff ff 10 00 00 00  ................
	0x0010 10 00 00 00 00 00 00 00                          ........
	rel 20+4 t=5 runtime.gcbits.0200000000000000+0
main.(*Gopher).debug.arginfo1 SRODATA static dupok size=3
	0x0000 00 08 ff                                         ...
main.(*Gopher).debug.argliveinfo SRODATA static dupok size=2
	0x0000 00 00                                            ..
