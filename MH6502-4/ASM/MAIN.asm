;  __  __   _    _     __    _____    ___    ___  
; |  \/  | | |  | |   / /   | ____|  / _ \  |__ \ 
; | \  / | | |__| |  / /_   | |__   | | | |    ) |
; | |\/| | |  __  | | '_ \  |___ \  | | | |   / / 
; | |  | | | |  | | | (_) |  ___) | | |_| |  / /_ 
; |_|  |_| |_|  |_|  \___/  |____/   \___/  |____|
;
;
; Links to processor, peripherals and other logic chips
;	- W65C02 CPU: (https://westerndesigncenter.com/wdc/documentation/w65c02s.pdf)
;	- W65C22 VIA: (https://westerndesigncenter.com/wdc/documentation/w65c22.pdf)
;	- R65C51 ACIA: (https://downloads.reactivemicro.com/Electronics/Interface%20Adapters/R65C51.pdf)
;	- M48T02 NVRAM/RTC: (https://www.st.com/resource/en/datasheet/m48t02.pdf)
;	- TMS9918A VDP: (http://www1.cs.columbia.edu/~sedwards/papers/TMS9918.pdf)
;	- AY-3-8910 PSG: (https://downloads.reactivemicro.com/Electronics/Sound/AY-3-8913%20Data%20Sheet%20v2.pdf)
;	- ATF16V8B EEPLD: (http://ww1.microchip.com/downloads/en/devicedoc/atmel-0364-pld-atf16v8b-8bq-8bql-datasheet.pdf)
;	- ATF22V10C EEPLD: (http://ww1.microchip.com/downloads/en/devicedoc/doc0735.pdf)
;
; ASCII text: https://www.messletters.com/en/big-text/ (big, standard)
;
; Assembler used: vasm 1.8g
; Arguments: vasm6502_oldstyle -Fbin -dotdir -chklabels -nocase -wdc02 %1

; Editor used: Notepad++
; Tabstop set at 8

; ----------------------------------------------------------------------------------------------------------------------
; VARIABLES
; ----------------------------------------------------------------------------------------------------------------------

; LOCAL
BANKRAM_NO	=	$00		; Current RAM bank (1-byte)
TEMP		=	$01		; Generic (2-bytes)
GET_TEMP	=	$03		; Temporary variable to 2nd level get byte or word commands (2-bytes)
MON_TEMP	=	$05		; Temporary variable to 1st level monitor command (2-bytes)
DIAG_TEMP	=	$0400		; Temporary variable for ZeroPage and StackPage memory test (1-byte)

; PARSE
PARSE_IN_BUFF_POS=	$07
PARSE_ERROR_PTR	=	$08

; FIND
BYTE1		=	$09
BYTE2		=	$0A
BYTE3		=	$0B
BYTE4		=	$0C
BYTE5		=	$0D
BYTE6		=	$0E
BYTE7		=	$0F
BYTE8		=	$10
NO_OF_BYTES	=	$11
FIND_EOT	=	$12

; GLOBAL
CUR_ADDR	=	$13		; Current address (2-bytes)
SRC_ADDR	=	$15		; Source/Start address (2-bytes)
DES_ADDR	=	$17		; Destination/End address (2-bytes)
WORD		=	$18		; 16-bit variable (2-bytes)
ERROR_PTR	=	$1A		; Error pointer for command line (1-byte)
BIN		=	$1B		; Hexadecimal number to be converted (2-bytes)
BCD		=	$1D		; Binary coded decimal (3-bytes)

; KEYBOARD
KB_WPTR		=	$20		; Keyboard write pointer (1-byte)
KB_RPTR		=	$21		; Keyboard read pointer (1-byte)
KB_BUFFER	=	$0200		; Keyboard buffer (256-bytes)

; STRING
IN_BUFFER	=	$0300		; Command line input buffer (256-bytes)

; TIMERS
TICKS		=	$22		; 32-bit counter (4-bytes)
TOGGLE_TIME	=	$26		; (1-byte)

; DISASSEMBLER
OPCODE		=	$27		; Opcode (1-byte)
OPERAND1	=	$28		; First operand byte (single byte, or LSB of 16-bit address) (1-byte)
OPERAND2	=	$29		; Second operand byte (MSB of 16-bit address) (1-byte)
ADDR_MODE	=	$2A		; Addressing mode (1-byte)

; LCD
LCD_PTR		=	$2B		; (1-byte)

; MOUSE
MS_DATA		=	$2C		; Mouse buttons (1-byte)
MS_X		=	$2D		; Mouse X movement (1-byte)
MS_Y		=	$2E		; Mouse Y movement (1-byte)

; NES
NES_CTRL1	=	$2F		; NES controller 1 buttons (1-byte)
NES_CTRL2	=	$30		; NES controller 2 buttons (1-byte)

; Processor variables
PROC_A		=	$31		; Accumulator (1-byte)
PROC_X		=	$32		; X register (1-byte)
PROC_Y		=	$33		; Y register (1-byte)
PROC_FLAGS	=	$34		; Processor flags (1-byte)
PROC_PC		=	$35		; Program counter (2-byte)

; Intel Hex variables
RECORD_LENGTH	=	$36		; Record length in bytes (1-byte)
START		=	$37		; Start address (2-bytes)
RECORD_TYPE	=	$38		; Record type (1-byte)
CHECKSUM	=	$39		; Record checksum accumulator (1-byte)
DOWNLOAD_FAIL	=	$3A		; Flag for download failure (1-byte)

; VDP variables
VDP_PATTERN_INIT=	$3B		; (2-bytes)
VDP_X_POS	=	$3C		; (1-byte)
VDP_Y_POS	=	$3D		; (1-byte)

; PSG variables
PSG_TABLE_PTR	=	$3E		; (1-byte)
PSG_TABLE_DB	=	$3F		; (1-byte)

; ----------------------------------------------------------------------------------------------------------------------
; CONSTANTS
; ----------------------------------------------------------------------------------------------------------------------

; Keystrokes
EOF		=	$00		; EOF, NULL
BS		=	$08		; Backspace
TAB		=	$09		; Horizontal Tab
CR		=	$0D		; Carriage return
LF		=	$0A		; Line feed
ESC		=	$1B		; Escape

; Display specific
COLUMNS		=	40		; Number of columns the display has
ROWS		=	24		; Number of lines the display has
BYTES_PER_LINE	=	8		; Number of bytes per line to display in the read command

;Time specific
SHORT		=	"S"		; Short time format (2022-02-16)
MEDIUM		=	"M"		; Medium time format (February 16, 2022)
LONG		=	"L"		; Long date format (Wednesday, February 16, 2022)

; Memory location
START_RAM	=	$0200		; Start location of SRAM (excluding zero page and stack page)
END_RAM		=	$75FF		; End location of SRAM
;START_BANKRAM	=	$5600
;END_BANKRAM	=	$75FF
;NUMBER_OF_BANKS	=	512/8		; 512K / 8K = 64 pages
START_NVRAM	=	$7800		; Start location of NVRAM
END_NVRAM	=	$7FF7		; End location of NVRAM (excluding RTC area)
ENTRY_POINT	=	$1000		; Intel Hex LOAD entry point default location

; Disassemble addressing modes
IMP		=	1		; Implicit
IMM		=	2		; Immediate: #$00
REL		=	3		; PC-relative: $00
ZP		=	4		; Zeropage: $00
ZPX		=	5		; Zeropage X: $00,X
ZPY		=	6		; Zeropage Y: $00,Y
IZP		=	7		; Indirect zeropage: ($00)
IZX		=	8		; Indirect zeropage X: ($00,X)
IZY		=	9		; Indirect zeropage Y: ($00,Y)
ZPR		=	10		; Zeropage (PC-relative): $00,$00
ABS		=	11		; Absolute: $0000
ABX		=	12		; Absolute X: $0000,X
ABY		=	13		; Absolute Y: $0000,Y
IND		=	14		; Indirect: ($0000)
IAX		=	15		; Indirect X: ($0000,X)
IAY		=	16		; Indirect Y: ($0000),Y

; Miscellaneous
LIFE_LED	=	$80		; VIA1 PA7 (Peripheral life LED timer tick set to...)


; ----------------------------------------------------------------------------------------------------------------------
; MACROS
; ----------------------------------------------------------------------------------------------------------------------

printString: .macro STR_PTR
	phx
	phy
	ldx	#<\STR_PTR		; Get LSB address of msg
	ldy	#>\STR_PTR		; Get MSB address of msg
	jsr	print_string		; Write message
	ply
	plx
.endmacro

; ----------------------------------------------------------------------------------------------------------------------
; SETUP SYSTEM
; ----------------------------------------------------------------------------------------------------------------------

	.org	$8000			; Reserved for I/O space (256 bytes)
	
setup:
	sei				; Disable interrupts
	cld				; Clear decimal mode (binary mode arithmetic)

	; Initialize stack (zero out page)
	ldx	#$00			; Reset pointer
init_stackpage:
	stz	$0100,x			; Zero out address $0100 + X
	inx				; Point to next memory location
	bne	init_stackpage		; Loop until Z reaches zero
	ldx	#$FF			; Initialize stack to ($01FF)
	txs				; Set the stack register

	; Initialize all variables in zero page
	ldx	#$00			; Reset pointer
init_zeropage:
	stz	$00,x			; Zero out address $0100 + X
	inx				; Point to next memory location
	bne	init_zeropage		; Loop until Z reaches zero
	lda	#$10			; Load default user space page
	sta	PROC_PC+1		; Save in registers PC

	; Initialize I/O
	jsr	acia_init		; Initialize all ACIAs
	;jsr	lcd_init		; Initialize LCD
	jsr	vdp_init		; Initialize VDP
	jsr	psg_init		; Initialize PSG with start up tone				
	jsr	via_init		; Initialize all VIAs
	cli				; Enable interrupt

	; Print welcome message on terminal
	jsr	clear_screen		; Clear terminal's screen
	printString welcome_msg		; *MACRO*
	
	; Print date and time on terminal
	lda	#LONG			; Long date format
	jsr	print_date
	lda	#" "
	jsr	print_char
	jsr	print_char
	jsr	print_char
	lda	#12			; 12 hour format
	jsr	print_time
	lda	#CR			; Change line
	jsr	print_char		;
	jsr	print_char		;
	

; ----------------------------------------------------------------------------------------------------------------------
; MAIN PROGRAM LOOP
; ----------------------------------------------------------------------------------------------------------------------

main:
	jsr	command_prompt		; Print prompt, constituting of current address and a "greater than" character

	jsr	read_prompt		; Read a line from input device to IN_BUFFER
	bcc	main			; If no characters in buffer, then loop to command prompt

	jsr	parse			; Parse string and execute commands
	bra	main


; ----------------------------------------------------------------------------------------------------------------------
; INCLUDES
; ----------------------------------------------------------------------------------------------------------------------

	.include "monitor.asm"
	.include "io.asm"
	;.include "lcd.asm"
	.include "vdp.asm"
	.include "psg.asm"
	.include "basic.asm"
	.include "isr.asm"
	.include "data.asm"
	

; ----------------------------------------------------------------------------------------------------------------------
; JUMP TABLE
; ----------------------------------------------------------------------------------------------------------------------

	.org	$FF00

jump_table:
	.word	clear_screen
	.word	delete_char
	.word	goto_xy
	.word	millis
	.word	nibble2numeric
	.word	print_byte
	.word	print_char
	.word	print_date
	.word	print_lower_nibble
	.word	print_upper_nibble
	.word	print_string
	.word	print_time
	.word	read_char
	.word	read_keyboard
	.word	read_string
	.word	uppercase

; ----------------------------------------------------------------------------------------------------------------------
; INTERRUPT VECTORS
; ----------------------------------------------------------------------------------------------------------------------

	.org 	$FFFA
	
	.word	nmi			; NMI vector
	.word 	setup			; Reset vector
	.word 	irq			; IRQ vector