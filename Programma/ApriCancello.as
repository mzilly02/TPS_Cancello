opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 9453"

opt pagewidth 120

	opt lm

	processor	16F88
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 6 "C:\Users\matti\Documents\Scuola\Classi\5a_AUTELT\TPS\Apertura_Cancello\Programma\ApriCancello.c"
	psect config,class=CONFIG,delta=2 ;#
# 6 "C:\Users\matti\Documents\Scuola\Classi\5a_AUTELT\TPS\Apertura_Cancello\Programma\ApriCancello.c"
	dw 0x3F61 ;#
	FNROOT	_main
	FNCALL	intlevel1,_irq
	global	intlevel1
	FNROOT	intlevel1
	global	_ACT_TMR0
	global	_LMP_TMR0
	global	_STATO
	global	_PORTA
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:
_PORTA	set	5
	global	_PORTB
_PORTB	set	6
	global	_TMR0
_TMR0	set	1
	global	_CARRY
_CARRY	set	24
	global	_GIE
_GIE	set	95
	global	_RA0
_RA0	set	40
	global	_RA1
_RA1	set	41
	global	_RA2
_RA2	set	42
	global	_RA3
_RA3	set	43
	global	_RA4
_RA4	set	44
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_RB2
_RB2	set	50
	global	_TMR0IE
_TMR0IE	set	93
	global	_TMR0IF
_TMR0IF	set	90
	global	_ANSEL
_ANSEL	set	155
	global	_OPTION_REG
_OPTION_REG	set	129
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_PS0
_PS0	set	1032
	global	_PS1
_PS1	set	1033
	global	_PS2
_PS2	set	1034
	global	_PSA
_PSA	set	1035
	global	_T0CS
_T0CS	set	1037
	global	_EEADR
_EEADR	set	269
	global	_EEDATA
_EEDATA	set	268
	global	_EECON1
_EECON1	set	396
	global	_EECON2
_EECON2	set	397
	global	_RD
_RD	set	3168
	global	_WR
_WR	set	3169
	global	_WREN
_WREN	set	3170
	file	"ApriCancello.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_ACT_TMR0:
       ds      2

_LMP_TMR0:
       ds      2

_STATO:
       ds      1

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
	clrf	((__pbssCOMMON)+4)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_irq
?_irq:	; 0 bytes @ 0x0
	global	??_irq
??_irq:	; 0 bytes @ 0x0
	ds	4
	global	??_main
??_main:	; 0 bytes @ 0x4
	ds	1
;;Data sizes: Strings 0, constant 0, data 0, bss 5, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      5      10
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   None.
;;
;; Critical Paths under _irq in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
;;
;; Critical Paths under _irq in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _irq in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _irq in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.
;;
;; Critical Paths under _irq in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 1     1      0       0
;;                                              4 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 0
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (1) _irq                                                  4     4      0       0
;;                                              0 COMMON     4     4      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;
;; _irq (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      5       A       1       71.4%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       0       2        0.0%
;;ABS                  0      0       A       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0       A      12        0.0%

	global	_main
psect	maintext

;; *************** function _main *****************
;; Defined at:
;;		line 35 in file "C:\Users\matti\Documents\Scuola\Classi\5a_AUTELT\TPS\Apertura_Cancello\Programma\ApriCancello.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\matti\Documents\Scuola\Classi\5a_AUTELT\TPS\Apertura_Cancello\Programma\ApriCancello.c"
	line	35
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 7
; Regs used in _main: [wreg-fsr0h+status,2+status,0]
	line	38
	
l1614:	
;ApriCancello.c: 38: ANSEL = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(155)^080h	;volatile
	line	39
;ApriCancello.c: 39: OPTION_REG = 0;
	clrf	(129)^080h	;volatile
	line	42
	
l1616:	
;ApriCancello.c: 42: TRISA = 0b00011111;
	movlw	(01Fh)
	movwf	(133)^080h	;volatile
	line	43
	
l1618:	
;ApriCancello.c: 43: PORTA = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	44
	
l1620:	
;ApriCancello.c: 44: TRISB = 0b00000000;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	45
	
l1622:	
;ApriCancello.c: 45: PORTB = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	56
	
l1624:	
;ApriCancello.c: 56: T0CS = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1037/8)^080h,(1037)&7
	line	57
	
l1626:	
;ApriCancello.c: 57: PSA = 0;
	bcf	(1035/8)^080h,(1035)&7
	line	59
	
l1628:	
;ApriCancello.c: 59: PS0 = 1;
	bsf	(1032/8)^080h,(1032)&7
	line	60
	
l1630:	
;ApriCancello.c: 60: PS1 = 1;
	bsf	(1033/8)^080h,(1033)&7
	line	61
	
l1632:	
;ApriCancello.c: 61: PS2 = 1;
	bsf	(1034/8)^080h,(1034)&7
	line	64
;ApriCancello.c: 64: TMR0 = 60;
	movlw	(03Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(1)	;volatile
	line	67
	
l1634:	
;ApriCancello.c: 67: TMR0IE = 1;
	bsf	(93/8),(93)&7
	line	69
	
l1636:	
;ApriCancello.c: 69: GIE = 1;
	bsf	(95/8),(95)&7
	line	71
	
l1638:	
;ApriCancello.c: 71: STATO = 0;
	clrf	(_STATO)
	goto	l1710
	line	74
;ApriCancello.c: 74: while (1)
	
l607:	
	line	77
;ApriCancello.c: 75: {
;ApriCancello.c: 77: switch(STATO)
	goto	l1710
	line	79
;ApriCancello.c: 78: {
;ApriCancello.c: 79: case 0:
	
l609:	
	line	81
;ApriCancello.c: 81: RB1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(49/8),(49)&7
	line	82
;ApriCancello.c: 82: RB2 = 0;
	bcf	(50/8),(50)&7
	line	85
;ApriCancello.c: 85: if (RA0 == 1)
	btfss	(40/8),(40)&7
	goto	u11
	goto	u10
u11:
	goto	l1710
u10:
	line	87
	
l1640:	
;ApriCancello.c: 86: {
;ApriCancello.c: 87: STATO = 1;
	clrf	(_STATO)
	bsf	status,0
	rlf	(_STATO),f
	goto	l1710
	line	88
	
l610:	
	line	89
;ApriCancello.c: 88: }
;ApriCancello.c: 89: break;
	goto	l1710
	line	91
;ApriCancello.c: 91: case 1:
	
l612:	
	line	93
;ApriCancello.c: 93: if(RB0 == 0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(48/8),(48)&7
	goto	u21
	goto	u20
u21:
	goto	l613
u20:
	line	96
	
l1642:	
;ApriCancello.c: 94: {
;ApriCancello.c: 96: RB0 = 1;
	bsf	(48/8),(48)&7
	line	97
	
l1644:	
;ApriCancello.c: 97: LMP_TMR0 = 20;
	movlw	low(014h)
	movwf	(_LMP_TMR0)
	movlw	high(014h)
	movwf	((_LMP_TMR0))+1
	line	98
;ApriCancello.c: 98: }
	goto	l1648
	line	99
	
l613:	
	line	102
;ApriCancello.c: 99: else
;ApriCancello.c: 100: {
;ApriCancello.c: 102: RB0 = 0;
	bcf	(48/8),(48)&7
	line	103
	
l1646:	
;ApriCancello.c: 103: LMP_TMR0 = 20;
	movlw	low(014h)
	movwf	(_LMP_TMR0)
	movlw	high(014h)
	movwf	((_LMP_TMR0))+1
	goto	l1648
	line	104
	
l614:	
	line	107
	
l1648:	
;ApriCancello.c: 104: }
;ApriCancello.c: 107: RB1 = 1;
	bsf	(49/8),(49)&7
	line	108
	
l1650:	
;ApriCancello.c: 108: RB2 = 0;
	bcf	(50/8),(50)&7
	line	111
	
l1652:	
;ApriCancello.c: 111: if (RA0 == 1)
	btfss	(40/8),(40)&7
	goto	u31
	goto	u30
u31:
	goto	l1656
u30:
	line	113
	
l1654:	
;ApriCancello.c: 112: {
;ApriCancello.c: 113: STATO = 4;
	movlw	(04h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_STATO)
	goto	l1656
	line	114
	
l615:	
	line	117
	
l1656:	
;ApriCancello.c: 114: }
;ApriCancello.c: 117: if (RA1 == 0)
	btfsc	(41/8),(41)&7
	goto	u41
	goto	u40
u41:
	goto	l1660
u40:
	line	119
	
l1658:	
;ApriCancello.c: 118: {
;ApriCancello.c: 119: STATO = 5;
	movlw	(05h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_STATO)
	goto	l1660
	line	120
	
l616:	
	line	123
	
l1660:	
;ApriCancello.c: 120: }
;ApriCancello.c: 123: if (RA3 == 0)
	btfsc	(43/8),(43)&7
	goto	u51
	goto	u50
u51:
	goto	l1710
u50:
	line	126
	
l1662:	
;ApriCancello.c: 124: {
;ApriCancello.c: 126: RB1 = 0;
	bcf	(49/8),(49)&7
	line	127
;ApriCancello.c: 127: RB2 = 0;
	bcf	(50/8),(50)&7
	line	129
;ApriCancello.c: 129: RB0 = 0;
	bcf	(48/8),(48)&7
	line	130
	
l1664:	
;ApriCancello.c: 130: STATO = 2;
	movlw	(02h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_STATO)
	goto	l1710
	line	131
	
l617:	
	line	132
;ApriCancello.c: 131: }
;ApriCancello.c: 132: break;
	goto	l1710
	line	134
;ApriCancello.c: 134: case 2:
	
l618:	
	line	136
;ApriCancello.c: 136: if (RA0 == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(40/8),(40)&7
	goto	u61
	goto	u60
u61:
	goto	l1668
u60:
	line	138
	
l1666:	
;ApriCancello.c: 137: {
;ApriCancello.c: 138: STATO = 3;
	movlw	(03h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_STATO)
	goto	l1668
	line	139
	
l619:	
	line	142
	
l1668:	
;ApriCancello.c: 139: }
;ApriCancello.c: 142: if (ACT_TMR0 == 0)
	movf	((_ACT_TMR0+1)),w
	iorwf	((_ACT_TMR0)),w
	skipz
	goto	u71
	goto	u70
u71:
	goto	l1710
u70:
	line	144
	
l1670:	
;ApriCancello.c: 143: {
;ApriCancello.c: 144: ACT_TMR0 = 600;
	movlw	low(0258h)
	movwf	(_ACT_TMR0)
	movlw	high(0258h)
	movwf	((_ACT_TMR0))+1
	line	145
;ApriCancello.c: 145: STATO = 3;
	movlw	(03h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_STATO)
	goto	l1710
	line	146
	
l620:	
	line	147
;ApriCancello.c: 146: }
;ApriCancello.c: 147: break;
	goto	l1710
	line	149
;ApriCancello.c: 149: case 3:
	
l621:	
	line	151
;ApriCancello.c: 151: if(RB0 == 0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(48/8),(48)&7
	goto	u81
	goto	u80
u81:
	goto	l622
u80:
	line	154
	
l1672:	
;ApriCancello.c: 152: {
;ApriCancello.c: 154: RB0 = 1;
	bsf	(48/8),(48)&7
	line	155
	
l1674:	
;ApriCancello.c: 155: LMP_TMR0 = 20;
	movlw	low(014h)
	movwf	(_LMP_TMR0)
	movlw	high(014h)
	movwf	((_LMP_TMR0))+1
	line	156
;ApriCancello.c: 156: }
	goto	l1678
	line	157
	
l622:	
	line	160
;ApriCancello.c: 157: else
;ApriCancello.c: 158: {
;ApriCancello.c: 160: RB0 = 0;
	bcf	(48/8),(48)&7
	line	161
	
l1676:	
;ApriCancello.c: 161: LMP_TMR0 = 20;
	movlw	low(014h)
	movwf	(_LMP_TMR0)
	movlw	high(014h)
	movwf	((_LMP_TMR0))+1
	goto	l1678
	line	162
	
l623:	
	line	165
	
l1678:	
;ApriCancello.c: 162: }
;ApriCancello.c: 165: RB1 = 0;
	bcf	(49/8),(49)&7
	line	166
	
l1680:	
;ApriCancello.c: 166: RB2 = 1;
	bsf	(50/8),(50)&7
	line	169
	
l1682:	
;ApriCancello.c: 169: if (RA0 == 1 || RA2 == 0)
	btfsc	(40/8),(40)&7
	goto	u91
	goto	u90
u91:
	goto	l626
u90:
	
l1684:	
	btfsc	(42/8),(42)&7
	goto	u101
	goto	u100
u101:
	goto	l1692
u100:
	
l626:	
	line	172
;ApriCancello.c: 170: {
;ApriCancello.c: 172: RB1 = 0;
	bcf	(49/8),(49)&7
	line	173
;ApriCancello.c: 173: RB2 = 0;
	bcf	(50/8),(50)&7
	line	176
	
l1686:	
;ApriCancello.c: 176: if (ACT_TMR0 == 0)
	movf	((_ACT_TMR0+1)),w
	iorwf	((_ACT_TMR0)),w
	skipz
	goto	u111
	goto	u110
u111:
	goto	l1692
u110:
	line	178
	
l1688:	
;ApriCancello.c: 177: {
;ApriCancello.c: 178: ACT_TMR0 = 40;
	movlw	low(028h)
	movwf	(_ACT_TMR0)
	movlw	high(028h)
	movwf	((_ACT_TMR0))+1
	line	179
	
l1690:	
;ApriCancello.c: 179: STATO = 1;
	clrf	(_STATO)
	bsf	status,0
	rlf	(_STATO),f
	goto	l1692
	line	180
	
l627:	
	goto	l1692
	line	181
	
l624:	
	line	184
	
l1692:	
;ApriCancello.c: 180: }
;ApriCancello.c: 181: }
;ApriCancello.c: 184: if (RA1 == 0)
	btfsc	(41/8),(41)&7
	goto	u121
	goto	u120
u121:
	goto	l1696
u120:
	line	186
	
l1694:	
;ApriCancello.c: 185: {
;ApriCancello.c: 186: STATO = 5;
	movlw	(05h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_STATO)
	goto	l1696
	line	187
	
l628:	
	line	190
	
l1696:	
;ApriCancello.c: 187: }
;ApriCancello.c: 190: if (RA4 == 0)
	btfsc	(44/8),(44)&7
	goto	u131
	goto	u130
u131:
	goto	l1710
u130:
	line	193
	
l1698:	
;ApriCancello.c: 191: {
;ApriCancello.c: 193: RB1 = 0;
	bcf	(49/8),(49)&7
	line	194
;ApriCancello.c: 194: RB2 = 0;
	bcf	(50/8),(50)&7
	line	196
;ApriCancello.c: 196: RB0 = 0;
	bcf	(48/8),(48)&7
	line	197
;ApriCancello.c: 197: STATO = 0;
	clrf	(_STATO)
	goto	l1710
	line	198
	
l629:	
	line	199
;ApriCancello.c: 198: }
;ApriCancello.c: 199: break;
	goto	l1710
	line	201
;ApriCancello.c: 201: case 4:
	
l630:	
	line	203
;ApriCancello.c: 203: RB1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(49/8),(49)&7
	line	204
;ApriCancello.c: 204: RB2 = 0;
	bcf	(50/8),(50)&7
	line	207
	
l1700:	
;ApriCancello.c: 207: if (ACT_TMR0 == 0)
	movf	((_ACT_TMR0+1)),w
	iorwf	((_ACT_TMR0)),w
	skipz
	goto	u141
	goto	u140
u141:
	goto	l1710
u140:
	line	209
	
l1702:	
;ApriCancello.c: 208: {
;ApriCancello.c: 209: ACT_TMR0 = 200;
	movlw	low(0C8h)
	movwf	(_ACT_TMR0)
	movlw	high(0C8h)
	movwf	((_ACT_TMR0))+1
	line	210
	
l1704:	
;ApriCancello.c: 210: STATO = 1;
	clrf	(_STATO)
	bsf	status,0
	rlf	(_STATO),f
	goto	l1710
	line	211
	
l631:	
	line	212
;ApriCancello.c: 211: }
;ApriCancello.c: 212: break;
	goto	l1710
	line	214
;ApriCancello.c: 214: case 5:
	
l632:	
	line	216
;ApriCancello.c: 216: RB1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(49/8),(49)&7
	line	217
;ApriCancello.c: 217: RB2 = 0;
	bcf	(50/8),(50)&7
	line	220
;ApriCancello.c: 220: RB0 = 1;
	bsf	(48/8),(48)&7
	line	223
;ApriCancello.c: 223: if (RA0 == 1)
	btfss	(40/8),(40)&7
	goto	u151
	goto	u150
u151:
	goto	l1710
u150:
	line	225
	
l1706:	
;ApriCancello.c: 224: {
;ApriCancello.c: 225: STATO = 1;
	clrf	(_STATO)
	bsf	status,0
	rlf	(_STATO),f
	goto	l1710
	line	226
	
l633:	
	line	227
;ApriCancello.c: 226: }
;ApriCancello.c: 227: break;
	goto	l1710
	line	229
;ApriCancello.c: 229: default:
	
l634:	
	line	230
;ApriCancello.c: 230: STATO = 0;
	clrf	(_STATO)
	line	231
;ApriCancello.c: 231: break;
	goto	l1710
	line	232
	
l1708:	
;ApriCancello.c: 232: }
	goto	l1710
	line	77
	
l608:	
	
l1710:	
	movf	(_STATO),w
	; Switch size 1, requested type "space"
; Number of cases is 6, Range of values is 0 to 5
; switch strategies available:
; Name         Instructions Cycles
; direct_byte           19     7 (fixed)
; simple_byte           19    10 (average)
; jumptable            260     6 (fixed)
; rangetable            10     6 (fixed)
; spacedrange           18     9 (fixed)
; locatedrange           6     3 (fixed)
;	Chosen strategy is direct_byte

	movwf fsr
	movlw	6
	subwf	fsr,w
skipnc
goto l634
movlw high(S2604)
movwf pclath
	clrc
	rlf fsr,w
	addlw low(S2604)
	movwf pc
psect	swtext1,local,class=CONST,delta=2
global __pswtext1
__pswtext1:
S2604:
	ljmp	l609
	ljmp	l612
	ljmp	l618
	ljmp	l621
	ljmp	l630
	ljmp	l632
psect	maintext

	line	232
	
l611:	
	goto	l1710
	line	234
	
l635:	
	line	74
	goto	l1710
	
l636:	
	line	235
	
l637:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_irq
psect	text71,local,class=CODE,delta=2
global __ptext71
__ptext71:

;; *************** function _irq *****************
;; Defined at:
;;		line 239 in file "C:\Users\matti\Documents\Scuola\Classi\5a_AUTELT\TPS\Apertura_Cancello\Programma\ApriCancello.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text71
	file	"C:\Users\matti\Documents\Scuola\Classi\5a_AUTELT\TPS\Apertura_Cancello\Programma\ApriCancello.c"
	line	239
	global	__size_of_irq
	__size_of_irq	equ	__end_of_irq-_irq
	
_irq:	
	opt	stack 7
; Regs used in _irq: [wreg]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_irq+0)
	movf	fsr0,w
	movwf	(??_irq+1)
	movf	pclath,w
	movwf	(??_irq+2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_irq+3)
	ljmp	_irq
psect	text71
	line	241
	
i1l1716:	
;ApriCancello.c: 241: if (TMR0IF == 1)
	btfss	(90/8),(90)&7
	goto	u16_21
	goto	u16_20
u16_21:
	goto	i1l643
u16_20:
	line	244
	
i1l1718:	
;ApriCancello.c: 242: {
;ApriCancello.c: 244: TMR0IF = 0;
	bcf	(90/8),(90)&7
	line	248
	
i1l1720:	
;ApriCancello.c: 248: TMR0 = 60;
	movlw	(03Ch)
	movwf	(1)	;volatile
	line	251
;ApriCancello.c: 251: if (LMP_TMR0 > 0)
	movf	(_LMP_TMR0+1),w
	iorwf	(_LMP_TMR0),w
	skipnz
	goto	u17_21
	goto	u17_20
u17_21:
	goto	i1l641
u17_20:
	line	252
	
i1l1722:	
;ApriCancello.c: 252: LMP_TMR0--;
	movlw	low(01h)
	subwf	(_LMP_TMR0),f
	movlw	high(01h)
	skipc
	decf	(_LMP_TMR0+1),f
	subwf	(_LMP_TMR0+1),f
	
i1l641:	
	line	254
;ApriCancello.c: 254: if (ACT_TMR0 > 0)
	movf	(_ACT_TMR0+1),w
	iorwf	(_ACT_TMR0),w
	skipnz
	goto	u18_21
	goto	u18_20
u18_21:
	goto	i1l643
u18_20:
	line	255
	
i1l1724:	
;ApriCancello.c: 255: ACT_TMR0--;
	movlw	low(01h)
	subwf	(_ACT_TMR0),f
	movlw	high(01h)
	skipc
	decf	(_ACT_TMR0+1),f
	subwf	(_ACT_TMR0+1),f
	goto	i1l643
	
i1l642:	
	goto	i1l643
	line	257
	
i1l640:	
	line	258
	
i1l643:	
	movf	(??_irq+3),w
	movwf	btemp+1
	movf	(??_irq+2),w
	movwf	pclath
	movf	(??_irq+1),w
	movwf	fsr0
	swapf	(??_irq+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_irq
	__end_of_irq:
;; =============== function _irq ends ============

	signat	_irq,88
psect	text72,local,class=CODE,delta=2
global __ptext72
__ptext72:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
