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


; Asynchronous Communications Interface Adapter (ACIA) - DCE
ACIA1		=	$7700		; Base address of ACIA1
ACIA1_DATA	=	ACIA1		; Data register
ACIA1_STATUS	=	ACIA1+1		; Read: Status Register, Write: Programmed Reset
ACIA1_CMD	=	ACIA1+2		; Command Register
ACIA1_CTRL	=	ACIA1+3		; Control Register

; Asynchronous Communications Interface Adapter (ACIA) - DTE
ACIA2		=	$7704		; Base address of ACIA1
ACIA2_DATA	=	ACIA2		; Data register
ACIA2_STATUS	=	ACIA2+1		; Read: Status Register, Write: Programmed Reset
ACIA2_CMD	=	ACIA2+2		; Command Register
ACIA2_CTRL	=	ACIA2+3		; Control Register

; Asynchronous Communications Interface Adapter (ACIA) - Serial TTL
ACIA3		=	$7708		; Base address of ACIA1
ACIA3_DATA	=	ACIA3		; Data register
ACIA3_STATUS	=	ACIA3+1		; Read: Status Register, Write: Programmed Reset
ACIA3_CMD	=	ACIA3+2		; Command Register
ACIA3_CTRL	=	ACIA3+3		; Control Register

; Versatile Interface Adapter (VIA) - PS/2 keyboard & mouse, and NES controllers. With interrupt driven switches
VIA1		=	$7710		; Base address of VIA1
VIA1_PORTB	=	VIA1		; Data I/O register for port B
VIA1_PORTA	=	VIA1+1		; Data I/O register for port A
VIA1_DDRB	=	VIA1+2		; Data Direction of port B
VIA1_DDRA	=	VIA1+3		; Data Direction of port A
VIA1_T1CL	=	VIA1+4		; Timer 1 [read = Counter] [write = Latches] (low order)
VIA1_T1CH	=	VIA1+5		; Timer 1 Counter (high order)
VIA1_T1LL	=	VIA1+6		; Timer 1 Latches (low order)
VIA1_T1LH	=	VIA1+7		; Timer 1 Latches (high order)
VIA1_T2CL	=	VIA1+8		; Timer 2 [read = Counter] [write = Latches] (low order)
VIA1_T2CH	=	VIA1+9		; Timer 2 Counter (high order)
VIA1_SR		=	VIA1+10		; Shift Register
VIA1_ACR	=	VIA1+11		; Auxiliary Control Register
VIA1_PCR	=	VIA1+12		; Peripheral Control Register
VIA1_IFR	=	VIA1+13		; Interrupt Flag Register
VIA1_IER	=	VIA1+14		; Interrupt Enable Register
VIA1_PORTA_NH	=	VIA1+15		; Same as PORT_A but with no handshake

; Versatile Interface Adapter (VIA) - 8-bit LCD with SPI on mini-DIN
VIA2		=	$7720		; Base address of VIA1
VIA2_PORTB	=	VIA2		; Data I/O register for port B
VIA2_PORTA	=	VIA2+1		; Data I/O register for port A
VIA2_DDRB	=	VIA2+2		; Data Direction of port B
VIA2_DDRA	=	VIA2+3		; Data Direction of port A
VIA2_T1CL	=	VIA2+4		; Timer 1 [read = Counter] [write = Latches] (low order)
VIA2_T1CH	=	VIA2+5		; Timer 1 Counter (high order)
VIA2_T1LL	=	VIA2+6		; Timer 1 Latches (low order)
VIA2_T1LH	=	VIA2+7		; Timer 1 Latches (high order)
VIA2_T2CL	=	VIA2+8		; Timer 2 [read = Counter] [write = Latches] (low order)
VIA2_T2CH	=	VIA2+9		; Timer 2 Counter (high order)
VIA2_SR		=	VIA2+10		; Shift Register
VIA2_ACR	=	VIA2+11		; Auxiliary Control Register
VIA2_PCR	=	VIA2+12		; Peripheral Control Register
VIA2_IFR	=	VIA2+13		; Interrupt Flag Register
VIA2_IER	=	VIA2+14		; Interrupt Enable Register
VIA2_PORTA_NH	=	VIA2+15		; Same as PORT_A but with no handshake

; LCD declarations
LCD_COLUMNS	=	16
LCD_ROWS	=	2
LCD_CS1		=	%00001000	; CS1 on certain 128x64 displays (not in use for current display)
LCD_CS2		=	%00010000	; CS2 on certain 128x64 displays (not in use for current display)
LCD_DI		=	%00100000	; Register Select bit: 1 = Data register, 0 = Instruction/address counter register
LCD_RW		=	%01000000	; Read (1) / Write (0)
LCD_E		=	%10000000	; Enable bit for the display
LCD_DATA	=	VIA2_PORTB	; Data or Instruction to pass to LCD
LCD_CTRL	=	VIA2_PORTA	; Control pins (E, RW, DI)

; RTC declarations			(numbers are BCD)
RTC_YEAR	=	$7FFF		; 00-99  (b7-b4 = tens)
RTC_MONTH	=	$7FFE		; 1-12   (b4 = tens))
RTC_DATE	=	$7FFD		; 1-31   (b5-b4 = tens)
RTC_DAY		=	$7FFC		; 1-7    (b6 = Frequency Test, 0 for normal operation)
RTC_HOURS	=	$7FFB		; 00-23  (b5-b4 = tens)
RTC_MINUTES	=	$7FFA		; 00-59  (b6-b4 = tens)
RTC_SECONDS	=	$7FF9		; 00-59  (b7 = Stop bit, b6-b4 = tens)
RTC_CTRL	=	$7FF8		;        (b7 = Write, b6 = Read, b5 = Sign, b4-b0 = Calibration)

; MISCELANEOUS
INT_SEL		=	$770E		; Priority Interrupt
BANK_SEL	=	$770F		; Bank Select

; ----------------------------------------------------------------------------------------------------------------------
; VARIABLES
; ----------------------------------------------------------------------------------------------------------------------

; LOCAL
BANKRAM_NO	=	$00		; Current RAM bank
TEMP		=	$01		; Generic (2-bytes)
GET_TEMP	=	$03		; Temporary variable to 2nd level get byte or word commands
MON_TEMP	=	$05		; Temporary variable to 1st level monitor command (2-bytes)
DIAG_TEMP	=	$0400		; Temporary variable for ZeroPage and StackPage memory test

; PARSE
PARSE_IN_BUFF_POS	=	MON_TEMP	;
PARSE_ERROR_PTR		=	MON_TEMP+1	;

; FIND
BYTE1		=	MON_TEMP+2	;
BYTE2		=	MON_TEMP+3	;
BYTE3		=	MON_TEMP+4	;
BYTE4		=	MON_TEMP+5	;
BYTE5		=	MON_TEMP+6	;
BYTE6		=	MON_TEMP+7	;
BYTE7		=	MON_TEMP+8	;
BYTE8		=	MON_TEMP+9	;
NO_OF_BYTES	=	MON_TEMP+10	;
MATCH		=	$3C

; GLOBAL
CUR_ADDR	=	$10		; Current address (2-bytes)
SRC_ADDR	=	$12		; Source/Start address (2-bytes)
DES_ADDR	=	$14		; Destination/End address (2-bytes)
WORD		=	$16		; 16-bit variable (2-bytes)
ERROR_PTR	=	$18		; Error pointer for command line (1-byte)
BIN		=	$19		; Hexadecimal number to be converted (2-bytes)
BCD		=	$1B		; Binary coded decimal (3-bytes)

; KEYBOARD
KB_WPTR		=	$1E		; Keyboard write pointer
KB_RPTR		=	$1F		; Keyboard read pointer
KB_BUFFER	=	$0200		; Keyboard buffer (256 bytes)

; STRING
IN_BUFFER	=	$0300		; Command line input buffer (34-bytes)

; TIMERS
TICKS		=	$20		; 32-bit counter (4-bytes)
TOGGLE_TIME	=	$24 		; 

; DISASSEMBLER
OPCODE		=	$25		; Opcode
OPERAND1	=	$26		; First operand byte (single byte, or LSB of 16-bit address)
OPERAND2	=	$27		; Second operand byte (MSB of 16-bit address)
ADDR_MODE	=	$28		; Addressing mode

; MISCELLANEOUS

LCD_PTR		=	$29		; (1-byte)

; MOUSE
MS_DATA		=	$2A
MS_X		=	$2B
MS_Y		=	$2C

; NES
NES_CTRL1	=	$2D
NES_CTRL2	=	$2E

; Processor variables
PROC_A		=	$30		; Accumulator
PROC_X		=	$31		; X register
PROC_Y		=	$32		; Y register
PROC_FLAGS	=	$33		; Processor flags
PROC_PC		=	$34		; Program counter

; Intel Hex variables
RECORD_LENGTH	=	$36		; Record length in bytes
START		=	$37		; 2-bytes
RECORD_TYPE	=	$39		; Record type
CHECKSUM	=	$3A		; Record checksum accumulator
DOWNLOAD_FAIL	=	$3B		; Flag for download failure


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
END_RAM		=	$55FF		; End location of SRAM
START_BANKRAM	=	$5600
END_BANKRAM	=	$75FF
NUMBER_OF_BANKS	=	512/8		; 512K / 8K = 64 pages
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

	; Set RAM Bank to bank 0
	stz	BANK_SEL
	
	; Initialize I/O
	jsr	acia_init		; Initialize all ACIAs
	;jsr	lcd_init		; Initialize LCD
	jsr	via_init		; Initialize all VIAs
	cli				; Enable interrupt
	
	; Print BIOS information on LCD
	;ldx	#<lcd_bios_msg		; Get LSB address of msg;
	;ldy	#>lcd_bios_msg		; Get MSB address of msg
	;jsr	lcd_print_string	; Write message

	; Print welcome message on terminal
	jsr	clear_screen		; Clear terminal's screen
	ldx	#<welcome_msg		; Get LSB address of msg
	ldy	#>welcome_msg		; Get MSB address of msg
	jsr	print_string		; Write message
	
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
	;.include "vdp.asm"
	;.include "psg.asm"
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