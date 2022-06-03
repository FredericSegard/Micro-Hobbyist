; Asynchronous Communications Interface Adapter (ACIA) - DCE
ACIA1		=	$7700		; Base address of ACIA1
ACIA1_DATA	=	ACIA1		; Data register
ACIA1_STATUS	=	ACIA1+1		; Read: Status Register, Write: Programmed Reset
ACIA1_CMD	=	ACIA1+2		; Command Register
ACIA1_CTRL	=	ACIA1+3		; Control Register

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

; LOCAL
BANKRAM_NO	=	$00		; Current RAM bank
TEMP		=	$01		; Generic (2-bytes)
GET_TEMP	=	$03		; Temporary variable to 2nd level get byte or word commands
MON_TEMP	=	$05		; Temporary variable to 1st level monitor command (2-bytes)
DIAG_TEMP	=	$0340		; Temporary variable for ZeroPage and StackPage memory test

; PARSE
PARSE_IN_BUFF_POS	=	MON_TEMP	;
PARSE_ERROR_PTR		=	MON_TEMP+1	;

; GLOBAL
CUR_ADDR	=	$10		; Current address (2-bytes)
SRC_ADDR	=	$12		; Source/Start address (2-bytes)
DES_ADDR	=	$14		; Destination/End address (2-bytes)
WORD		=	$16		; 16-bit variable (2-bytes)
ERROR_PTR	=	$18		; Error pointer for command line (1-byte)
BIN		=	$19		; Hexadecimal number to be converted (2-bytes)
BCD		=	$1B		; Binary coded decimal (3-bytes)

; TIMERS
TICKS		=	$30		; 32-bit counter (4-bytes)
TOGGLE_TIME	=	$34		; 

; KEYBOARD
KB_WPTR		=	$20		; Keyboard write pointer
KB_RPTR		=	$21		; Keyboard read pointer
KB_BUFFER	=	$0200		; Keyboard buffer (256 bytes)

; MOUSE
MS_DATA		=	$46
MS_X		=	$47
MS_Y		=	$48

; NES
NES_CTRL1	=	$49
NES_CTRL2	=	$4A

; Processor variables
PROC_A		=	$50		; Accumulator
PROC_X		=	$51		; X register
PROC_Y		=	$52		; Y register
PROC_FLAGS	=	$53		; Processor flags
PROC_PC		=	$54		; Program counter

; Intel Hex variables
RECORD_LENGTH	=	$56		; Record length in bytes
START		=	$57		; 2-bytes
RECORD_TYPE	=	$59		; Record type
CHECKSUM	=	$5A		; Record checksum accumulator
DOWNLOAD_FAIL	=	$5B		; Flag for download failure

; DISASSEMBLER
OPCODE		=	$5C		; Opcode
OPERAND1	=	$5D		; First operand byte (single byte, or LSB of 16-bit address)
OPERAND2	=	$5E		; Second operand byte (MSB of 16-bit address)
ADDR_MODE	=	$5F		; Addressing mode

; STRING
IN_BUFFER	=	$0300		; Command line input buffer (34-bytes)




; Keystrokes
BS		=	$08		; Backspace
TAB		=	$09		; Horizontal Tab
CR		=	$0D		; Carriage return
LF		=	$0A		; Line feed
ESC		=	$1B		; Escape (to exit)

; Display specific
COLUMNS		=	40		; Number of columns the display has
ROWS		=	24		; Number of lines the display has
BYTES_PER_LINE	=	8		; Number of bytes per line to display in the read command

;Time specific
SHORT		=	"S"		; Short time format (2022-02-16)
MEDIUM		=	"M"		; Medium time format (February 16, 2022)
LONG		=	"L"		; Long date format (Wednesday, February 16, 2022)

; Miscellaneous
LIFE_LED	=	$80		; VIA1 PA7 (Peripheral life LED timer tick set to...)

; Memory location
START_RAM	=	$0200		; Start location of SRAM (excluding zero page and stack page)
END_RAM		=	$55FF		; End location of SRAM
START_BANKRAM	=	$5600
END_BANKRAM	=	$75FF
NUMBER_OF_BANKS	=	1 ;512/8		; 512K / 8K = 64 pages
START_NVRAM	=	$7800		; Start location of NVRAM
END_NVRAM	=	$7FF7		; End location of NVRAM (excluding RTC area)
ENTRY_POINT	=	$1000		; Intel Hex LOAD entry point default location

; Disassemble addressing modes
IMP		=	1		; Implicite
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





	.org	$8000

setup:
	sei				; Set interrupt inhibit bit
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

	; Initialize I/O
	jsr	acia_init		; Initialize all ACIAs
	;jsr	via_init
	;cli

	; Print welcome message on terminal
	ldx	#<welcome_msg		; Get LSB address of msg
	ldy	#>welcome_msg		; Get MSB address of msg
	jsr	print_string		; Write message

	; Print date and time on terminal
	;lda	#LONG			; Long date format
	;jsr	print_date
	;lda	#" "
	;jsr	print_char
	;jsr	print_char
	;jsr	print_char
	;lda	#12			; 12 hour format
	;jsr	print_time
	;lda	#CR			; Change line
	;jsr	print_char		;
	;jsr	print_char		;	
	
main:
	jsr	command_prompt		; Print prompt, constinuting of current address and a "greater than" character

	jsr	read_prompt		; Read a line from input device to IN_BUFFER
	bcc	main			; If no characters in buffer, then loop to command prompt

	jsr	parse			; Parse string and execute commands
	bra	main

	

;                 _                   _           _   _
;   __ _    ___  (_)   __ _          (_)  _ __   (_) | |_
;  / _` |  / __| | |  / _` |         | | | '_ \  | | | __|
; | (_| | | (__  | | | (_| |         | | | | | | | | | |_
;  \__,_|  \___| |_|  \__,_|  _____  |_| |_| |_| |_|  \__|
;                            |_____|
;
; Initialize ACIA
; ----------------------------------------------------------------------------------------------------------------------

acia_init:

	; INITIALIZE ACIA 1
	stz	ACIA1_STATUS		; Software reset
	lda 	#%00011111		; 1 stop bit, 8 data bits, 19200 baud
	sta 	ACIA1_CTRL
	lda 	#%00001011		; No parity, normal echo, no RTS, DTR low
	sta 	ACIA1_CMD

	rts


;              _       _
;   __ _    __| |   __| |  _ __    ___   ___   ___
;  / _` |  / _` |  / _` | | '__|  / _ \ / __| / __|
; | (_| | | (_| | | (_| | | |    |  __/ \__ \ \__ \
;  \__,_|  \__,_|  \__,_| |_|     \___| |___/ |___/
;
; Set current address
; ----------------------------------------------------------------------------------------------------------------------

address:
	lda	IN_BUFFER,y		; Read a character from the input buffer
	beq	address_default		; Is it end of buffer (0)? Yes, so use default address (CUR_ADDR)
	cmp	#" "			; Is it the space delimiter?
	beq	address_get		; Yes it is. Then go read an address
	jsr	syntax_error		; If anything else, print a syntax error
	rts				; End of routine

address_default:			; IF NO ADDRESS PROVIDED, GET CUR ADDRESS USED +1
	stz	CUR_ADDR+1		; Set MSB address as 00
	stz	CUR_ADDR		; Set LSB address as 00
	rts				;

address_get:				; GET START ADDRESS
	jsr	skip_spaces		; skip leading spaces if any
	jsr	get_word		; Get address from the input buffer
	bcc	address_error		; Error in address
	lda	WORD+1			; Store word as address
	sta	CUR_ADDR+1		;
	lda	WORD			;
	sta	CUR_ADDR		;
	rts
address_error:
	jsr	invalid_address
	rts


;  _       _           ____    _                  _
; | |__   (_)  _ __   |___ \  | |__     ___    __| |
; | '_ \  | | | '_ \    __) | | '_ \   / __|  / _` |
; | |_) | | | | | | |  / __/  | |_) | | (__  | (_| |
; |_.__/  |_| |_| |_| |_____| |_.__/   \___|  \__,_|
;
; Converts a binary numerical number and displays it as printable decimal
; Thanks to Andrew Jacobs for the code
; ----------------------------------------------------------------------------------------------------------------------
; INPUT: BIN = 8-bit binary value $00-$FF
; RETURNS: BCD = ones and tens
;          BCD+1 = hundreds

bin2bcd8:
	pha
	phx
	sed				; Switch to decimal calculation mode
	clc				; Clear carry bit
	lda	#0
	sta	BCD			; Clear out BCD variable
	sta	BCD+1			;
	ldx	#8
bin2bcd8_convert:
	asl	BIN			; Shift out one bit
	lda	BCD			; And add into result
	adc	BCD
	sta	BCD
	lda	BCD+1			; propagating any carry
	adc	BCD+1
	sta	BCD+1
	dex				; And repeat for the next bit
	bne	bin2bcd8_convert
	cld				; Back to binary calculation mode
	plx
	pla
	rts

bin2bcd16:
	pha
	phx
	sed				; Switch to decimal calculation mode
	clc				; Clear carry bit
	lda	#0
	sta	BCD			; Clear out BCD variable
	sta	BCD+1			;
	sta	BCD+2
	ldx	#16
bin2bcd16_convert:
	asl	BIN			; Shift out one bit
	rol	BIN+1
	lda	BCD			; And add into result
	adc	BCD
	sta	BCD
	lda	BCD+1			; ... propagating any carry
	adc	BCD+1
	sta	BCD+1
	lda	BCD+2			; ... thru whole result
	adc	BCD+2
	sta	BCD+2
	dex				; And repeat for the next bit
	bne	bin2bcd16_convert
	cld				; Back to binary calculation mode
	plx
	pla
	rts
	

;      _          _          _                           _                    
;   __| |   ___  | |   ___  | |_    ___            ___  | |__     __ _   _ __ 
;  / _` |  / _ \ | |  / _ \ | __|  / _ \          / __| | '_ \   / _` | | '__|
; | (_| | |  __/ | | |  __/ | |_  |  __/         | (__  | | | | | (_| | | |   
;  \__,_|  \___| |_|  \___|  \__|  \___|  _____   \___| |_| |_|  \__,_| |_|   
;                                        |_____|                              
;
; Delete one or many characters. Number of characters to delete is in Y (minimum is 1)
; ------------------------------------------------------------------------------------

delete_char:
	pha
delete_char_loop:
	lda	#BS			; Go back one character
	jsr	print_char
	lda	#" "			; Remove character
	jsr	print_char
	lda	#BS			; Go back again
	jsr	print_char
	dey				; Decrement number of charaters to delete
	bne	delete_char_loop	; If not reached number of characters deleted, continue delete
	pla
	rts



;      _   _                                         _     _
;   __| | (_)   __ _    __ _   _ __     ___    ___  | |_  (_)   ___   ___
;  / _` | | |  / _` |  / _` | | '_ \   / _ \  / __| | __| | |  / __| / __|
; | (_| | | | | (_| | | (_| | | | | | | (_) | \__ \ | |_  | | | (__  \__ \
;  \__,_| |_|  \__,_|  \__, | |_| |_|  \___/  |___/  \__| |_|  \___| |___/
;                      |___/
;
; Diagnose RAM and peripherals
; ----------------------------------------------------------------------------------------------------------------------
; DESTROYS: A, X, Y, MON_TEMP

diagnostics:
	sei				; Deactivate interrupts
	stz	DIAG_TEMP+1		; Used to detect skip test
	
; ZERO-PAGE RAM TEST
; ------------------
diag_zeropage:
	; PRINT MESSAGE
	ldx	#<diag_zeropage_msg	; Get LSB address of msg
	ldy	#>diag_zeropage_msg	; Get MSB address of msg
	jsr	print_string		; Display "Testing ZeroPage $0000-00FF"
	ldx	#$00			; Set start address pointer
diag_zeropage55:
	; TEST WITH 55
	lda	$00,x			; Load value stored at memory location pointed by x
	sta	DIAG_TEMP		; Save it
	lda	#$55			; Load value 55 test pattern
	sta	$00,x			; Store test pattern in memory location
	lda	$00,x			; Reload test pattern from memory
	cmp	#$55			; Compare it to the original test pattern
	beq	diag_zeropageAA		; If equal, test next pattern
	jmp	diag_error		; If not, print error, and end routine
diag_zeropageAA:
	; TEST WITH AA
	lda	#$AA			; Load value AA test pattern
	sta	$00,x			; Store test pattern in memory location
	lda	$00,x			; Reload test pattern from memory
	cmp	#$AA			; Compare it to the original test pattern
	beq	diag_zeropage_restore	; If equal, restore data back to ram
	jmp	diag_error		; If not, print error, and end routine
diag_zeropage_restore:
	; RESTORE DATA AND LOOP
	lda	DIAG_TEMP		; Restore data
	sta	$00,x			; Save value back to zeropage
	inx				; Increment address pointer
	bne	diag_zeropage55		; If rolled back to 0, then test stack RAM, else test next location
	jsr	diag_ok

; STACK PAGE RAM TEST
; -------------------
diag_stack:
	ldx	#<diag_stack_msg	; Get LSB address of msg
	ldy	#>diag_stack_msg	; Get MSB address of msg
	jsr	print_string		; Display "Testing StackPage $0100-01FF"
	ldx	#$00			; Set start address pointer
diag_stack55:
	lda	$0100,x			; Load value storet at memory location pointed by x
	sta	DIAG_TEMP		; Store it
	lda	#$55			; Load value 55 test pattern
	sta	$0100,x			; Store test pattern in memory location
	lda	$0100,x			; Reload test pattern from memory
	cmp	#$55			; Compare it to the original test pattern
	beq	diag_stackAA		; If equal, test next pattern
	jmp	diag_error		; If not, print error, and end routine
diag_stackAA:
	lda	#$AA			; Load value AA test pattern
	sta	$0100,x			; Store test pattern in memory location
	lda	$0100,x			; Reload test pattern from memory
	cmp	#$AA			; Compare it to the original test pattern
	beq	diag_stack_restore	; If equal, restore data back to ram
	jmp	diag_error		; If not, print error, and end routine
diag_stack_restore:
	lda	DIAG_TEMP		; Restore data from stack
	sta	$0100,x			; Save value back to stack
	inx				; Increment address pointer
	bne	diag_stack55		; If rolled back to 0, then test stack RAM, else test next location
	jsr	diag_ok
	
; SYSTEM RAM TEST
; ---------------
diag_ramtest:				; SYTEM RAM TEST
	ldx	#<diag_ramtest_msg	; Get LSB address of msg
	ldy	#>diag_ramtest_msg	; Get MSB address of msg
	jsr	print_string		; Display "Testing RAM $"
	lda	#>START_RAM		; Load start address (MSB)
	sta	CUR_ADDR+1		; Save start address accessed (MSB)
	jsr	print_byte		; Print MSB of start address
	lda	#<START_RAM		; Load start address (LSB)
	sta	CUR_ADDR		; Save start address accessed (LSB)
	jsr	print_byte		; Print LSB of start address
	lda	#"-"			;
	jsr	print_char		; Print dash
	lda	#>END_RAM		; Load end address (MSB)
	sta	DES_ADDR+1		; Save end address (MSB)
	jsr	print_byte		; Print MSB of end address
	lda	#<END_RAM		; Load end address (LSB)
	sta	DES_ADDR		; Save end address (LSB)
	jsr	print_byte		; Print LSB of end address
	lda	#":"			;
	jsr	print_char		; Print colon
	jsr	diag_memtest		; Execute RAM diagnostics
	bcc	diag_bankramtest
	jsr	diag_ok

; BANK RAM TEST
; -------------
diag_bankramtest:			; BANK RAM TEST
	lda	DIAG_TEMP+1
	beq	diag_bankramtest2
	jmp	diag_end

diag_bankramtest2:
	ldx	#<diag_bankramtest_msg	; Get LSB address of msg
	ldy	#>diag_bankramtest_msg	; Get MSB address of msg
	jsr	print_string		; Write message
	lda	#>START_BANKRAM		; Load start address (MSB)
	sta	CUR_ADDR+1		; Save start address accessed (MSB)
	jsr	print_byte		; Print MSB of start address
	lda	#<START_BANKRAM		; Load start address (LSB)
	sta	CUR_ADDR		; Save start address accessed (LSB)
	jsr	print_byte		; Print LSB of start address
	lda	#"-"			;
	jsr	print_char		; Print dash
	lda	#>END_BANKRAM		; Load end address (MSB)
	sta	DES_ADDR+1		; Save end address (MSB)
	jsr	print_byte		; Print MSB of end address
	lda	#<END_BANKRAM		; Load end address (LSB)
	sta	DES_ADDR		; Save end address (LSB)
	jsr	print_byte		; Print LSB of end address
	lda	#":"			;
	jsr	print_char		; Print colon
	lda	#" "			;
	jsr	print_char		; Print space

	ldx	#NUMBER_OF_BANKS	; Setup bank counter to point to first bank
diag_banktest:				;
	lda	#>START_BANKRAM		; Reload start address (MSB)
	sta	CUR_ADDR+1		; Save start address accessed (MSB)
	lda	#<START_BANKRAM		; Reload start address (LSB)
	sta	CUR_ADDR		; Save start address accessed (LSB)
	txa				; Transfer bank counter to A
	sta	BANK_SEL		; Change bank
	sta	BIN
	jsr	bin2bcd8
	lda	BCD
	jsr	print_byte		; Print space
	jsr	diag_memtest		; Execute current bank RAM diagnostics
	bcc	diag_end		; There was an error, exit
	ldy	#2			; Set backspace counter to 2
	jsr	delete_char		; Delete 2 characters from terminal
	dex				; Decrement bank numbers
	bne	diag_banktest		; If not finished, then continue testing more banks
	ldy	#1			; Set backspace counter to 1
	jsr	delete_char		; Delete a characters from terminal
	jsr	diag_ok

; NVRAM TEST
; ----------
diag_nvramtest:
	lda	DIAG_TEMP+1
	bne	diag_end

	ldx	#<diag_nvramtest_msg	; Get LSB address of msg
	ldy	#>diag_nvramtest_msg	; Get MSB address of msg
	jsr	print_string		; Display "Testing RAM $"
	lda	#>START_NVRAM		; Load start address (MSB)
	sta	CUR_ADDR+1		; Save start address accessed (MSB)
	jsr	print_byte		; Print MSB of start address
	lda	#<START_NVRAM		; Load start address (LSB)
	sta	CUR_ADDR		; Save start address accessed (LSB)
	jsr	print_byte		; Print LSB of start address
	lda	#"-"			;
	jsr	print_char		; Print dash
	lda	#>END_NVRAM		; Load end address (MSB)
	sta	DES_ADDR+1		; Save end address (MSB)
	jsr	print_byte		; Print MSB of end address
	lda	#<END_NVRAM		; Load end address (LSB)
	sta	DES_ADDR		; Save end address (LSB)
	jsr	print_byte		; Print LSB of end address
	lda	#":"			;
	jsr	print_char		; Print colon
	jsr	diag_memtest		; Execute RAM diagnostics
	bcc	diag_end
	jsr	diag_ok

diag_end:
	stz	CUR_ADDR		; Reset default address to $0000
	stz	CUR_ADDR+1		;
	;cli				; Restore interrupt

	rts
	
; Diagnostics subroutines

diag_memtest:
	; TEST MEMORY LOCATIONS
	lda	(CUR_ADDR)		; Read a byte from memory
	sta	MON_TEMP		; Store byte to retrieve it back later
	lda	#$55			; Load 55
	sta	DIAG_TEMP		; Save for diag_error
	sta	(CUR_ADDR)		; Store value
	lda	(CUR_ADDR)		; Read value
	cmp	#$55			; Is the result the same as the loaded value?
	beq	diag_memtest2		; Yes, go to next test
	jmp	diag_error		; No, print error
diag_memtest2:
	lda	#$AA			; Load AA
	sta	DIAG_TEMP		; Save for diag_error
	sta	(CUR_ADDR)		; Store value
	lda	(CUR_ADDR)		; Read value
	cmp	#$AA			; Is the result the same as the loaded value?
	beq	diag_memtest_ok		; Yes, go and print OK
	jmp	diag_error		; No, print error
diag_memtest_ok:
	lda	MON_TEMP		; Restore original byte
	sta	(CUR_ADDR)		; And write it back to memory

;	; HAS THE ESCAPE KEY BEEN PRESSED
;	jsr	read_char		; Get a character from the terminal, if available
;	bcs	diag_key_read		; If one is present, interpret keystroke
;	jsr	read_keyboard		; Get a character from the PS/2 keyboard buffer, if available
;	bcs	diag_key_read		; Loop until one is present
;	bra	diag_mem_test_continue
;diag_key_read:
;	cmp	#ESC
;	bne	diag_mem_test_continue
;	ldy	2
;	jsr	delete_char
;	jsr	diag_skip_test
;	inc	DIAG_TEMP+1
;	ldx	#0
;	sec
;	rts

;diag_mem_test_continue:
	lda	DES_ADDR+1
	cmp	CUR_ADDR+1
	bne	diag_memtest_next	;
	lda	DES_ADDR
	cmp	CUR_ADDR
	bne	diag_memtest_next	;
	sec
	rts

diag_memtest_next:
	jsr	inc_cur_addr		; Increment current address to next
	bra	diag_memtest

diag_skip_test:
	ldx	#<diag_skip_test_msg	; Get LSB address of msg
	ldy	#>diag_skip_test_msg	; Get MSB address of msg
	jsr	print_string		; Write message

diag_error:
	; PRINT ERROR MESAGE
	lda	#CR
	jsr	print_char		; Change line
	ldx	#<diag_ram_error_msg	; Get LSB address of msg
	ldy	#>diag_ram_error_msg	; Get MSB address of msg
	jsr	print_string		; Write message
	lda	CUR_ADDR+1		; Load the MSB address where the error is
	jsr	print_byte		; Print MSB
	lda	CUR_ADDR		; Load the LSB address where the error is
	jsr	print_byte		; Print LSB
	lda	#":"
	jsr	print_char		; Print colon
	lda	(CUR_ADDR)		; Get content located at address where error is
	jsr	print_byte		; Print the content
	ldx	#<diag_ram_error2_msg	; Get LSB address of msg
	ldy	#>diag_ram_error2_msg	; Get MSB address of msg
	jsr	print_string		; Write message
	lda	DIAG_TEMP		; Restore exected value from stack (was in X)
	jsr	print_byte		; Print expected result
	lda	#CR			;
	jsr	print_char		; Print carriage return
	clc				; Clear carry to declare error
	jmp	diag_end
	
diag_ok:
	; PRINT OK MESSAGE
	lda	#" "
	jsr	print_char
	lda	#"O"
	jsr	print_char
	lda	#"K"
	jsr	print_char
	lda	#CR
	jsr	print_char
	rts


;  ____    _                                                _       _        
; |  _ \  (_)  ___    __ _   ___   ___    ___   _ __ ___   | |__   | |   ___ 
; | | | | | | / __|  / _` | / __| / __|  / _ \ | '_ ` _ \  | '_ \  | |  / _ \
; | |_| | | | \__ \ | (_| | \__ \ \__ \ |  __/ | | | | | | | |_) | | | |  __/
; |____/  |_| |___/  \__,_| |___/ |___/  \___| |_| |_| |_| |_.__/  |_|  \___|
;                                                                            
; Disassembles code in memory
; ----------------------------------------------------------------------------------------------------------------------

disassemble:

; GET COMMAND LINE START ADDRESS IF ANY
; -------------------------------------
dis_read_cmd_line:			; CHECK FOR EOL AND " " DELIMITER
	lda	IN_BUFFER,y		; Read a character from the input buffer
	beq	dis_default_addr	; Is it end of buffer (0)? Yes, so use default address (CUR_ADDR)
	cmp	#" "			; Is it the space delimiter?
	beq	dis_start_addr		; Yes it is. Then go read an address
	jsr	syntax_error		; If anything else, print a syntax error
	jmp	disassemble_end		; Go to end of routine

dis_default_addr:			; IF NO ADDRESS PROVIDED, GET CUR ADDRESS USED
	lda	CUR_ADDR+1		; Read the MSB's last address used
	sta	SRC_ADDR+1		; Store it as the start address
	lda	CUR_ADDR		; Read the LSB's last address used
	sta	SRC_ADDR		; Store it as the start address
	bra	dis_start		; Go grab the end address, if there is one

dis_start_addr:				; GET START ADDRESS
	jsr	skip_spaces		; skip leading spaces if any
	jsr	get_word		; Get address from the input buffer
	bcs	dis_store_start		; Valid word is present, store address
	jsr	invalid_address		; Display invalid address message
	jmp	disassemble_end		; No valid word is present, then send end parsing

dis_store_start:			; STORE START ADDRESS
	lda	WORD			; Load LSB from get_word
	sta	SRC_ADDR		; Store LSB to start address register
	sta	CUR_ADDR		; Store it in the current address (LSB)
	lda	WORD+1			; Load MSB from get_word
	sta	SRC_ADDR+1		; Store MSB to start address register
	sta	CUR_ADDR+1		; Store it in the current address (MSB)

dis_start:
	stz	MON_TEMP+1		; Set line counter to 0

; PRINT ADDRESS, OPCODE AND OPERAND VALUES
dis_print_line:

	; PRINT ADDRESS
	lda	CUR_ADDR+1		; Load address MSB
	jsr	print_byte		; Prints MSB
	lda	CUR_ADDR		; Load address LSB
	jsr	print_byte		; Prints LSB
	lda	#":"			; Fetch colon ":" delimiter for byte display
	jsr	print_char		; Print it
	lda	#" "			; Fetch the space character
	jsr	print_char		; Print it
	
	; PRINT NUMERICAL OPCODE
	lda	(CUR_ADDR)		; Get opcode
	sta	OPCODE			; Save opcode for later use
	tax				; Keep x to get addressing mode later
	jsr	print_byte		; Print opcode byte
	lda	#" "			; Print a space...
	jsr	print_char		; ... to separate opcode from operand
	jsr	inc_cur_addr		; Go to next address

	; DETERMINE NUMBER OF BYTES FOR THAT INSTRUCTION
	lda	dis_addressing,x	; Get the addressing mode
	sta	ADDR_MODE		; Store addressing mode for later use
	cmp	#2			; Is it a 1-byte instruction?
	bcc	dis_print_7_spaces	; Yes, then print some spaces to align to mnemonic print
	cmp	#10			; Does instruction have a single byte operand?
	bcc	dis_print_1_operand	; Yes, print single-byte operand
	bra	dis_print_2_operands	; No, print a 2-byte operand

dis_print_1_operand:
	; READ OPERAND
	lda	(CUR_ADDR)		; Load operand
	sta	OPERAND1		; Store it in a variable for later use
	jsr	print_byte		; Output it to screen
	jsr	inc_cur_addr		; Go to next address
	bra	dis_print_5_spaces	; Print some spaces to align to mnemonic print

dis_print_2_operands:
	; READ TWO OPERANDS
	lda	(CUR_ADDR)		; Load first operand
	sta	OPERAND1		; Store it in a variable for later use
	jsr	print_byte		; Output it to screen
	lda	#" "			; Print a space
	jsr	print_char		;
	jsr	inc_cur_addr		; Go to next address
	lda	(CUR_ADDR)		; Load second operand
	sta	OPERAND2		; Store it in a variable for later use
	jsr	print_byte		; Output it to screen
	lda	#" "			; Print two spaces
	jsr	print_char		;
	jsr	print_char		;
	jsr	inc_cur_addr		; Go to next address
	bra	dis_print_mnemonic
	
dis_print_7_spaces:
	lda	#" "
	jsr	print_char
	jsr	print_char
dis_print_5_spaces:	
	lda	#" "
	jsr	print_char
	jsr	print_char
	jsr	print_char
	jsr	print_char
	jsr	print_char
	
; PRINT OPCODE'S MNEMONIC (OpCode mnemonics are divided into 4 tables of 64 opcodes, equaling 256 bytes per table)
dis_print_mnemonic:
	lda	OPCODE
	cmp	#$40			; Read first block of mnemonic
	bcc	dis_print_block1
	cmp	#$80			; Read second block of mnemonic
	bcc	dis_print_block2
	cmp	#$C0			; Read third block of mnemonic
	bcc	dis_print_block3
	bra	dis_print_block4	; Read fourth block of mnemonic

dis_print_block1:
	asl				; Multiply by 2, two times...
	asl				; ... to create a 4 byte offset
	tax				; Accumulator becomes the index
	lda	dis_mnemonic_blk1,x	; Load first character of mnemonic
	jsr	print_char		; Print it
	inx				; Point to next character
	lda	dis_mnemonic_blk1,x	; Load second character of mnemonic
	jsr	print_char		; Print it
	inx				; Point to next character
	lda	dis_mnemonic_blk1,x	; Load third character of mnemonic
	jsr	print_char		; Print it
	inx				; Point to next character
	lda	dis_mnemonic_blk1,x	; Load fourth character of mnemonic
	jsr	print_char		; Print it
	jmp	dis_addr_mode
	
dis_print_block2:
	sec				; Set carry bit
	sbc	#$40			; Offset to second table
	asl				; Multiply by 2, two times...
	asl				; ... to create a 4 byte offset
	tax				; Accumulator becomes the index
	lda	dis_mnemonic_blk2,x	; Load first character of mnemonic
	jsr	print_char		; Print it
	inx				; Point to next character
	lda	dis_mnemonic_blk2,x	; Load second character of mnemonic
	jsr	print_char		; Print it
	inx				; Point to next character
	lda	dis_mnemonic_blk2,x	; Load third character of mnemonic
	jsr	print_char		; Print it
	inx				; Point to next character
	lda	dis_mnemonic_blk2,x	; Load fourth character of mnemonic
	jsr	print_char		; Print it
	jmp	dis_addr_mode

dis_print_block3:
	sec				; Set carry bit
	sbc	#$80			; Offset to third table
	asl				; Multiply by 2, two times...
	asl				; ... to create a 4 byte offset
	tax				; Accumulator becomes the index
	lda	dis_mnemonic_blk3,x	; Load first character of mnemonic
	jsr	print_char		; Print it
	inx				; Point to next character
	lda	dis_mnemonic_blk3,x	; Load second character of mnemonic
	jsr	print_char		; Print it
	inx				; Point to next character
	lda	dis_mnemonic_blk3,x	; Load third character of mnemonic
	jsr	print_char		; Print it
	inx				; Point to next character
	lda	dis_mnemonic_blk3,x	; Load fourth character of mnemonic
	jsr	print_char		; Print it
	jmp	dis_addr_mode
	
dis_print_block4:
	sec				; Set carry bit
	sbc	#$C0			; Offset to fourth table
	asl				; Multiply by 2, two times...
	asl				; ... to create a 4 byte offset
	tax				; Accumulator becomes the index
	lda	dis_mnemonic_blk4,x	; Load first character of mnemonic
	jsr	print_char		; Print it
	inx				; Point to next character
	lda	dis_mnemonic_blk4,x	; Load second character of mnemonic
	jsr	print_char		; Print it
	inx				; Point to next character
	lda	dis_mnemonic_blk4,x	; Load third character of mnemonic
	jsr	print_char		; Print it
	inx				; Point to next character
	lda	dis_mnemonic_blk4,x	; Load fourth character of mnemonic
	jsr	print_char		; Print it

; PRINT OPERAND(S) IN CORRESPONDING ADDRESSING MODE FORMAT
dis_addr_mode:
	lda	#" "			; Print a space
	jsr	print_char
	lda	ADDR_MODE		; Get addressing mode and branch to appropriate addressing routine
dis_inv cmp	#0			; Invalid opcode
	bne	dis_imp
	jmp	dis_invalid		;
dis_imp	cmp	#IMP			;
	bne	dis_imm			;
	jmp	dis_implied		;
dis_imm	cmp	#IMM			;
	bne	dis_rel
	jmp	dis_immediate		;
dis_rel	cmp	#REL			;
	bne	dis_zp
	jmp	dis_relative		;
dis_zp	cmp	#ZP			;
	bne	dis_zpx
	jmp	dis_zeropage		;
dis_zpx	cmp	#ZPX
	bne	dis_zpy			;
	jmp	dis_zeropage_x		;
dis_zpy	cmp	#ZPY			;
	bne	dis_izp
	jmp	dis_zeropage_y		;
dis_izp	cmp	#IZP			;
	bne	dis_izx
	jmp	dis_indirect_zp		;
dis_izx	cmp	#IZX			;
	bne	dis_izy
	jmp	dis_indirect_zpx	;
dis_izy	cmp	#IZY			;
	bne	dis_zpr
	jmp	dis_indirect_zpy	;
dis_zpr	cmp	#ZPR			;
	bne	dis_abs
	jmp	dis_zeropage_relative	;
dis_abs	cmp	#ABS			;
	bne	dis_abx
	jmp	dis_absolute		;
dis_abx	cmp	#ABX			;
	bne	dis_aby
	jmp	dis_absolute_x		;
dis_aby	cmp	#ABY			;
	bne	dis_ind
	jmp	dis_absolute_y		;
dis_ind	cmp	#IND			;
	bne	dis_iax
	jmp	dis_indirect		;
dis_iax	cmp	#IAX			;
	bne	dis_iay
	jmp	dis_indirect_x		;
dis_iay	cmp	#IAY			;
	bne	dis_lop
	jmp	dis_indirect_y		;
dis_lop	jmp 	dis_lines_loop

	; INVALID
dis_invalid
	ldx	#9
	jsr	dis_spaces
	lda	OPCODE
	jsr	dis_print_ascii7
	jmp	dis_lines_loop

	; IMPLIED
dis_implied:
	ldx	#9
	jsr	dis_spaces
	lda	OPCODE
	jsr	dis_print_ascii7
	jmp	dis_lines_loop
	
	; IMMEDIATE: #$00 (ALSO PRINT ASCII VALUE IF IT'S IN A VALID RANGE)
dis_immediate:
	lda	#"#"
	jsr	print_char
	lda	#"$"
	jsr	print_char
	lda	OPERAND1
	jsr	print_byte
	ldx	#5
	jsr	dis_spaces
	lda	OPCODE
	jsr	dis_print_ascii7
	lda	OPERAND1
	jsr	dis_print_ascii7
	jmp	dis_lines_loop		; Print next line or end routine
	
	; RELATIVE: $00 (ALSO PRINTS DESTINATION ADDRESS)
dis_relative:
	lda	#"$"
	jsr	print_char
	lda	OPERAND1
	jsr	print_byte
	ldx	#6
	jsr	dis_spaces
	lda	OPCODE
	jsr	dis_print_ascii7
	lda	OPERAND1
	jsr	dis_print_ascii7
	jmp	dis_lines_loop		; Print next line or end routine	
	
	; ZEROPAGE: $00
dis_zeropage:
	lda	#"$"
	jsr	print_char
	lda	OPERAND1
	jsr	print_byte
	ldx	#6
	jsr	dis_spaces
	lda	OPCODE
	jsr	dis_print_ascii7
	lda	OPERAND1
	jsr	dis_print_ascii7
	jmp	dis_lines_loop		; Print next line or end routine
	
	; ZEROPAGE X INDEXED: $00,X
dis_zeropage_x:
	lda	#"$"
	jsr	print_char
	lda	OPERAND1
	jsr	print_byte
	lda	#","
	jsr	print_char
	lda	#"x"
	jsr	print_char
	ldx	#4
	jsr	dis_spaces
	lda	OPCODE
	jsr	dis_print_ascii7
	lda	OPERAND1
	jsr	dis_print_ascii7
	jmp	dis_lines_loop		; Print next line or end routine

	; ZEROPAGE Y INDEXED: $00,Y
dis_zeropage_y:
	lda	#"$"
	jsr	print_char
	lda	OPERAND1
	jsr	print_byte
	lda	#","
	jsr	print_char
	lda	#"y"
	jsr	print_char
	ldx	#4
	jsr	dis_spaces
	lda	OPCODE
	jsr	dis_print_ascii7
	lda	OPERAND1
	jsr	dis_print_ascii7

	jmp	dis_lines_loop		; Print next line or end routine	

	; INDIRECT ZEROPAGE: ($00)
dis_indirect_zp:
	lda	#"("
	jsr	print_char
	lda	#"$"
	jsr	print_char
	lda	OPERAND1
	jsr	print_byte
	lda	#")"
	jsr	print_char
	ldx	#4
	jsr	dis_spaces
	lda	OPCODE
	jsr	dis_print_ascii7
	lda	OPERAND1
	jsr	dis_print_ascii7
	jmp	dis_lines_loop		; Print next line or end routine
	
	; INDIRECT ZEROPAGE X INDEXED: ($00,X)
dis_indirect_zpx:
	lda	#"("
	jsr	print_char
	lda	#"$"
	jsr	print_char
	lda	OPERAND1
	jsr	print_byte
	lda	#","
	jsr	print_char
	lda	#"x"
	jsr	print_char
	lda	#")"
	jsr	print_char
	ldx	#2
	jsr	dis_spaces
	lda	OPCODE
	jsr	dis_print_ascii7
	lda	OPERAND1
	jsr	dis_print_ascii7
	jmp	dis_lines_loop		; Print next line or end routine
	
	; INDIRECT ZEROPAGE Y INDEXED: ($00),Y
dis_indirect_zpy:
	lda	#"("
	jsr	print_char
	lda	#"$"
	jsr	print_char
	lda	OPERAND1
	jsr	print_byte
	lda	#")"
	jsr	print_char
	lda	#","
	jsr	print_char
	lda	#"y"
	jsr	print_char
	ldx	#2
	jsr	dis_spaces
	lda	OPCODE
	jsr	dis_print_ascii7
	lda	OPERAND1
	jsr	dis_print_ascii7
	jmp	dis_lines_loop		; Print next line or end routine
	
	; ZEROPAGE RELATIVE: $00,$00 (ALSO PRINTS DESTINATION ADDRESS)
dis_zeropage_relative:
	lda	#"$"
	jsr	print_char
	lda	OPERAND1
	jsr	print_byte
	lda	#","
	jsr	print_char
	lda	#"$"
	jsr	print_char
	lda	OPERAND2
	jsr	print_byte
	ldx	#2
	jsr	dis_spaces
	lda	OPCODE
	jsr	dis_print_ascii7
	lda	OPERAND1
	jsr	dis_print_ascii7
	lda	OPERAND2
	jsr	dis_print_ascii7
	jmp	dis_lines_loop		; Print next line or end routine
	
	; ABSOLUTE: $0000
dis_absolute:
	lda	#"$"
	jsr	print_char
	lda	OPERAND2
	jsr	print_byte
	lda	OPERAND1
	jsr	print_byte
	ldx	#4
	jsr	dis_spaces
	lda	OPCODE
	jsr	dis_print_ascii7
	lda	OPERAND1
	jsr	dis_print_ascii7
	lda	OPERAND2
	jsr	dis_print_ascii7
	jmp	dis_lines_loop		; Print next line or end routine
	
	; ABSOLUTE X INDEXED: $0000,X
dis_absolute_x:
	lda	#"$"
	jsr	print_char
	lda	OPERAND2
	jsr	print_byte
	lda	OPERAND1
	jsr	print_byte
	lda	#","
	jsr	print_char
	lda	#"x"
	jsr	print_char
	ldx	#2
	jsr	dis_spaces
	lda	OPCODE
	jsr	dis_print_ascii7
	lda	OPERAND1
	jsr	dis_print_ascii7
	lda	OPERAND2
	jsr	dis_print_ascii7
	jmp	dis_lines_loop		; Print next line or end routine
	
	; ABSOLUTE Y INDEXED: $0000,Y
dis_absolute_y:
	lda	#"$"
	jsr	print_char
	lda	OPERAND2
	jsr	print_byte
	lda	OPERAND1
	jsr	print_byte
	lda	#","
	jsr	print_char
	lda	#"y"
	jsr	print_char
	ldx	#2
	jsr	dis_spaces
	lda	OPCODE
	jsr	dis_print_ascii7
	lda	OPERAND1
	jsr	dis_print_ascii7
	lda	OPERAND2
	jsr	dis_print_ascii7
	jmp	dis_lines_loop		; Print next line or end routine
	
	; INDIRECT: ($0000)
dis_indirect:
	lda	#"("
	jsr	print_char
	lda	#"$"
	jsr	print_char
	lda	OPERAND2
	jsr	print_byte
	lda	OPERAND1
	jsr	print_byte
	lda	#")"
	jsr	print_char
	ldx	#2
	jsr	dis_spaces
	lda	OPCODE
	jsr	dis_print_ascii7
	lda	OPERAND1
	jsr	dis_print_ascii7
	lda	OPERAND2
	jsr	dis_print_ascii7
	jmp	dis_lines_loop		; Print next line or end routine
	
	; INDIRECT X INDEXED: ($0000,X)
dis_indirect_x:
	lda	#"("
	jsr	print_char
	lda	#"$"
	jsr	print_char
	lda	OPERAND2
	jsr	print_byte
	lda	OPERAND1
	jsr	print_byte
	lda	#","
	jsr	print_char
	lda	#"x"
	jsr	print_char
	lda	#")"
	jsr	print_char
	ldx	#0
	jsr	dis_spaces
	lda	OPCODE
	jsr	dis_print_ascii7
	lda	OPERAND1
	jsr	dis_print_ascii7
	lda	OPERAND2
	jsr	dis_print_ascii7
	jmp	dis_lines_loop		; Print next line or end routine
	
	; INDIRECT Y INDEXED: ($0000),Y
dis_indirect_y:
	lda	#"("
	jsr	print_char
	lda	#"$"
	jsr	print_char
	lda	OPERAND2
	jsr	print_byte
	lda	OPERAND1
	jsr	print_byte
	jsr	print_char
	lda	#")"
	lda	#","
	jsr	print_char
	lda	#"y"
	jsr	print_char
	lda	#")"
	ldx	#0
	jsr	dis_spaces
	lda	OPCODE
	jsr	dis_print_ascii7
	lda	OPERAND1
	jsr	dis_print_ascii7
	lda	OPERAND2
	jsr	dis_print_ascii7

dis_lines_loop:
	lda	#CR			; Change line
	jsr	print_char		;
	inc	MON_TEMP+1		; Increment line number counter
	lda	MON_TEMP+1		; Has the line number counter...
	cmp	#ROWS-2			; ...reached the display size limit?
	beq	disassemble_end		; Yes, then end routine
	jmp	dis_print_line		; Else, print another line

disassemble_end:
	rts

; Disassemble subroutines

; TAB ALIGN AND PRINT SEPARATOR
dis_spaces:
	lda	#" "			; Load space character
	cpx	#0			; Is X = 0? (Space counter)
	beq	dis_spaces3		; Yes, then print separator
dis_spaces2:
	jsr	print_char		; Print space
	dex				; Decrement X
	bne	dis_spaces2		; If X is not 0, then loop to print another space
dis_spaces3:
	lda	#"|"			; Print separator character
	jsr	print_char		;
	lda	#" "			; Print a space
	jsr	print_char		;
	rts
	
; PRINT ASCII REPRESENTATION OF OPCODE/OPERAND(S) - (Useful for identifying text vs. code)
dis_print_ascii7:
	cmp	#" "			; ASCII decimal 32 (Space)
	bcc	d_lc1			; Is A < 20? Yes? Then print a dot
	cmp	#$7F			; ASCII decimal 127? (DEL)
	bcs	d_lc1			; Is A >= 127? Yes? Then print a dot
	bra	d_lc2			; Otherwise, returns ASCII value, or Accumulator as is
d_lc1:	lda	#"."			; It's an invalid character, replace it with a dot
d_lc2:	jsr	print_char		; Print valid character
	rts


;   __   _   _   _
;  / _| (_) | | | |          _ __ ___     ___   _ __ ___
; | |_  | | | | | |         | '_ ` _ \   / _ \ | '_ ` _ \
; |  _| | | | | | |         | | | | | | |  __/ | | | | | |
; |_|   |_| |_| |_|  _____  |_| |_| |_|  \___| |_| |_| |_|
;                   |_____|
;
; Fills a region of memory with a byte value
; ----------------------------------------------------------------------------------------------------------------------

fill_mem:
	; CHECK FOR EOL AND " " DELIMITER
	lda	IN_BUFFER,y		; Read a character from the input buffer
	bne	f_delim			; Not end of string...
	jmp	no_parameter		; Yes it is. Since nothing is specified, go print error, and exit
f_delim	cmp	#" "			; Is it the space delimiter?
	beq	fill_mem_start_addr	; Yes it is. Then go read an address
	jmp	syntax_error		; If anything else, print a syntax error, and exit

fill_mem_start_addr:			; GET START ADDRESS
	jsr	skip_spaces		; skip leading spaces
	jsr	get_word		; Get word (address) from the input buffer
	bcs	fill_mem_store_start	; If valid, then save addresses
	jmp	invalid_address		; Display invalid address message, and exit

fill_mem_store_start:			; STORE AND PRINT START ADDRESS
	lda	WORD+1			; Load MSB from get_word
	jsr	print_byte
	sta	CUR_ADDR+1		; Store MSB to start address register
	sta	SRC_ADDR+1		; Store MSB to start address register
	lda	WORD			; Load LSB from get_word
	jsr	print_byte
	sta	CUR_ADDR		; Store LSB to start address register
	sta	SRC_ADDR		; Store LSB to start address register
	lda	#"-"
	jsr	print_char

fill_mem_is_end_addr:			; IS THERE AN END ADDRESS?
	lda	IN_BUFFER,y		; Read a character from the input buffer
	bne	f2			; It's not the end of string
	jmp	no_parameter		; It's the end f the string, print error
f2	cmp	#" "			; Is the it a space delimiter?
	beq	fill_mem_end_addr	; It is, then get the byte
	jmp	no_parameter		; Print an error if no delimiter was detected

fill_mem_end_addr:			; GET END ADDRESSE
	iny				; Postition the index to next character
	jsr	skip_spaces		; skip leading spaces
	jsr	get_word		; Get address from the input buffer
	bcs	fill_mem_store_end	; Address is valid, so save addresses
	rts				; It's not, then end routine

fill_mem_store_end:			; STORE AND PRINT END ADDRESS
	lda	WORD+1			; Load MSB from get_address
	jsr	print_byte
	sta	DES_ADDR+1		; Store MSB to start address register
	lda	WORD			; Load LSB from get_address
	jsr	print_byte
	sta	DES_ADDR		; Store LSB to start address register
	lda	#":"
	jsr	print_char

fill_mem_is_byte:			; IS THERE A BYTE COMMING UP?
	lda	IN_BUFFER,y		; Read a character from the input buffer
	cmp	#0			; Is it the end of the string?
	beq	f_nopar			; Yes it is, Since no byte has been entered, print error
	cmp	#" "			; Is the it a space delimiter?
	beq	fill_mem_byte		; It is, then get the byte
f_nopar	jmp	no_parameter		; Print an error if no delimiter was detected

fill_mem_byte:				; GET BYTE
	iny				; Postition the index to next character
	jsr	skip_spaces		; skip leading spaces
	jsr	get_byte		; Get address from the input buffer
	bcs	fill_mem_memory		; Byte is valid, save byte
	rts				; It's not, then send end parsing

fill_mem_memory:
	sta	TEMP
	jsr	print_byte
	lda	#CR
	jsr	print_char
	;lda	SRC_ADDR+1
	;sta	CUR_ADDR+1
	;lda	SRC_ADDR
	;sta	CUR_ADDR
fill_mem_write_byte:
	lda	CUR_ADDR+1
	cmp	DES_ADDR+1
	bne	fill_mem_next
	lda	CUR_ADDR
	cmp	DES_ADDR
	beq	fill_mem_store_last
fill_mem_next:
	lda	TEMP
	sta	(CUR_ADDR)		; Store it in specified memory location
	nop
	lda	(CUR_ADDR)		; Read the byte just written
	cmp	TEMP			; Compare it to the actual byte
	bne	fill_mem_failed		; It they don't match, print an error
	jsr	inc_cur_addr		; Increment last address position for next byte
	bra	fill_mem_write_byte

fill_mem_store_last:			; STORE CUR BYTE ADDRESS, AND SET CUR ADDRESS TO START ADDRESS
					; --------------------------------------------------------------
	lda	TEMP
	sta	(CUR_ADDR)		; Store it in specified memory location
	nop
	lda	(CUR_ADDR)		; Read the byte just written
	cmp	TEMP			; Compare it to the actual byte
	bne	fill_mem_failed		; It they don't match, print an error

	lda	SRC_ADDR+1		; Load MSB from get_address
	sta	CUR_ADDR+1		; Store MSB to start address register
	lda	SRC_ADDR		; Load LSB from get_address
	sta	CUR_ADDR		; Store LSB to start address register
	rts

fill_mem_failed:
	ldx	#<cant_write_address	; Get LSB address
	ldy	#>cant_write_address	; Get MSB address
	jsr	print_string		; Write message
	lda	CUR_ADDR+1
	jsr	print_byte
	lda	CUR_ADDR
	jsr	print_byte
	lda	#CR
	jsr	print_char
	rts				; End subroutine


;                 _             _               _
;   __ _    ___  | |_          | |__    _   _  | |_    ___
;  / _` |  / _ \ | __|         | '_ \  | | | | | __|  / _ \
; | (_| | |  __/ | |_          | |_) | | |_| | | |_  |  __/
;  \__, |  \___|  \__|  _____  |_.__/   \__, |  \__|  \___|
;  |___/               |_____|          |___/

; Read from INPUT_BUFFER at Y, and converts 2 ASCII characters to a hex byte
; ----------------------------------------------------------------------------------------------------------------------
; INPUT:    IN_BUFFER @ Y containing 2 characters
; DESTROYS: GET_TEMP
; RETURNS:  Byte in A
;           Carry bit clear = hex digit is not valid
;           Carry bit set   = hex digit is valid

get_byte:
	jsr	get_nibble		; convert ASCII to hex nibble
	bcc	get_byte_end		; End routine if nibble is invalid
	asl				; push nibble to MSB
	asl				;
	asl				;
	asl				;
	sta	GET_TEMP		; Store A in GET_TEMP
	jsr	get_nibble		; convert ASCII to hex nibble
	bcc	get_byte_end		; End routine if nibble is invalid
	ora	GET_TEMP		; Join MSB and LSB into A
get_byte_end:
	rts


;                 _                     _   _       _       _
;   __ _    ___  | |_           _ __   (_) | |__   | |__   | |   ___
;  / _` |  / _ \ | __|         | '_ \  | | | '_ \  | '_ \  | |  / _ \
; | (_| | |  __/ | |_          | | | | | | | |_) | | |_) | | | |  __/
;  \__, |  \___|  \__|  _____  |_| |_| |_| |_.__/  |_.__/  |_|  \___|
;  |___/               |_____|

; Read from IN_BUFFER at Y, and converts the ASCII character to a hex value
; ----------------------------------------------------------------------------------------------------------------------
; INPUT:   IN_BUFFER @ Y containing 1 character
; RETURNS: Carry bit clear = hex digit is not valid
;          Carry bit set   = hex digit is valid in A

get_nibble:
	lda	IN_BUFFER,y		; Get character
	jsr	uppercase		; Convert A-F to uppercase
	; IS IT A VALID HEX CHARACTER?
	cmp	#"0"			; Filter anything bellow the ASCII 0
	bcc	get_nibble_error	; Is A less than "0"? Yes, then error
	cmp	#"F"+1			; Filter anything above the ASCII F
	bcs	get_nibble_error	; Is A greater than "F"? Yes, then error
	cmp	#"9"+1			; Filter anything above ASCII 9
	bcc	get_nibble_ok		; Is A is less or equal to "9"? Yes, then ok
	cmp	#"A"			; Filter anything below ASCII A
	bcs	get_nibble_ok		; Is A greater then or equal to "A"? Yes, then ok
get_nibble_error:
	clc				; Clear carry to indicate error
	rts				; End subroutine
get_nibble_ok:
	; OFFSET RESULT FROM ASCII VALUE to HEX VALUE
	sec				; Prepare for substraction
	sbc	#$30			; 
	cmp	#$0A			; Is it a decimal (0-9) digit?
	bcc	get_nibble_clear	; Yes
	sec
	sbc	#$07			; Alphabet offset to get A-F
get_nibble_clear:
	and	#$0F			; Clear upper nibble
	iny				; Increment command line buffer pointer
	inc	ERROR_PTR		; Increment pointer to next potential error location
	sec				; Set carry to indicate valid nibble
	rts				; End subroutine

	
;                 _                                           _
;   __ _    ___  | |_          __      __   ___    _ __    __| |
;  / _` |  / _ \ | __|         \ \ /\ / /  / _ \  | '__|  / _` |
; | (_| | |  __/ | |_           \ V  V /  | (_) | | |    | (_| |
;  \__, |  \___|  \__|  _____    \_/\_/    \___/  |_|     \__,_|
;  |___/               |_____|
;
; Get a character word (16-bit) from the terminal, and produce a valid hex word
; ----------------------------------------------------------------------------------------------------------------------
; INPUT:  IN_BUFFER @ Y
; OUTPUT: Carry bit clear = invalid word
;         Carry bit set =   valid word in WORD & WORD+1

get_word:
	pha
	phx
	sty	GET_TEMP		; Save for later usage
	ldx	#0			; Set counter to 0
get_word_count:				; IS THE WORD COMPOSED OF 1 to 4 CHARACTERS?
	lda	IN_BUFFER,y		; Load character
	cmp	#0			; Is it the end of the string?
	beq	get_word_endcount	; Yes, then stop counting
	cmp	#" "			; Is it the seperator delimiter?
	beq	get_word_endcount	; Yes, then stop counting
	iny				; Increment IN_BUFFER pointer
	inx				; Increment character count
	bra	get_word_count		; Get next character until end of string or separator delimiter
get_word_endcount:
	ldy	GET_TEMP		; Restore index pointer to start of word
get_word_count0;
	cpx	#0			; Is there an word specified?
	bne	get_word_count1		; Yes, then go to 1
	lda	CUR_ADDR		; Default word to current address (CUR_ADDR) if nothing is specified
	sta	WORD
	lda	CUR_ADDR+1
	sta	WORD+1
	sec
	bra	get_word_end		; End subroutine
get_word_count1:
	cpx	#1			; Is there just one digit?
	bne	get_word_count2		; No, then go to 2, else...
	jsr	get_nibble		; Get single character (nibble)
	bcc	get_word_error		; If nibble contains an illegal character, go to error
	sta	WORD			; Store it in the little endian part of the word
	stz	WORD+1			; Clear big endian part of the word
	sec
	bra	get_word_end		; End subroutine
get_word_count2:
	cpx	#2			; Is it just a 2 digit word?
	bne	get_word_count3		; No, then go to 3, else...
	jsr	get_byte		; Get a byte
	bcc	get_word_error		; If byte contains an illegal character, go to error
	sta	WORD			; Store it in the little endian part of the word
	stz	WORD+1			; Clear big endian part of the word
	sec
	bra	get_word_end		; End subroutine
get_word_count3:
	cpx	#3			; Is it a 3 digit word?
	bne	get_word_count4		; No, then go to 4, else...
	jsr	get_nibble		; Get the first character of a 3 digit word
	bcc	get_word_error		; If nibble contains an illegal character, go to error
	sta	WORD+1			; Store the nibble in the big endian portion of the word
	jsr	get_byte		; Get the little endian byte
	bcc	get_word_error		; If byte contains an illegal character, go to error
	sta	WORD			; Store the little endian portion of the word
	sec
	bra	get_word_end		; End subroutine
get_word_count4:
	cpx	#4			; Is it a 4 digit word?
	bne	get_word_error		; No, then flag an error, else...
	jsr	get_byte		; Get the big endian byte
	bcc	get_word_error		; If byte contains an illegal character, go to error
	sta	WORD+1			; Store the nibble in the big endian portion of the word
	jsr	get_byte		; Get the little endian byte
	bcc	get_word_error		; If byte contains an illegal character, go to error
	sta	WORD			; Store the little endian portion of the word
	sec				; Indicate that word is valid
	bra	get_word_end		; End subroutine
get_word_error:
	clc				; Clear Carry to indicate an error
get_word_end:
	plx
	pla
	rts



;   __ _    ___  
;  / _` |  / _ \ 
; | (_| | | (_) |
;  \__, |  \___/ 
;  |___/         
;
; Execute code at address specified, or at CUR_ADDR
; ----------------------------------------------------------------------------------------------------------------------

go_exec:
	lda	IN_BUFFER,y		; Read a character from the input buffer
	bne	go_get_addr		; It's not the end of string, get address
	jmp	(CUR_ADDR)		; Execute code at CUR_ADDR

go_get_addr:
pe1	cmp	#" "			; Is it the space delimiter?
	beq	go_at_addr		; Yes it is. Then go read an address
	jsr	syntax_error		; If anything else, print a syntax error
	rts				; End of routine

go_at_addr:				; GET START ADDRESS
	jsr	skip_spaces		; skip leading spaces
	jsr	get_word		; Get address from the input buffer
	bcs	go_addr			; Valid address
	jsr	invalid_address		; If there's an error in the address, print it
	bra	go_end

go_addr:
	jmp	(WORD)			; Execute code at specified address
	
go_end:
	rts


;  _              _
; | |__     ___  | |  _ __
; | '_ \   / _ \ | | | '_ \
; | | | | |  __/ | | | |_) |
; |_| |_|  \___| |_| | .__/
;                    |_|
;
; Prints help for various commands
; ----------------------------------------------------------------------------------------------------------------------
help:
	lda	IN_BUFFER,y		; Read a character from the input buffer
	bne	help_other		; End of string? No, go check if it's a space
	ldx	#<help_msg		; Get LSB address of msg
	ldy	#>help_msg		; Get MSB address of msg
	jsr	print_string		; Write message
	jmp	help_end		; End subroutine

help_other:				; IF NO SPACE DELIMITER IS PRESENT PRINT ERROR
	cmp	#" "			; Is it the space delimiter?
	beq	help_command		; Yes it is. Then go read an address
	jsr	syntax_error		; If not EOL or space, print syntax error
	jmp	help_end		; End subroutine

help_command:				; READ THE CHARACTER REPRESENTING THE COMMAND
	jsr	skip_spaces		; Skip leading spaces
	lda	IN_BUFFER,y		; Load a character
	jsr	uppercase

help_address:				; LOAD ADDRESS HELP
	cmp	#"$"			; Is it help for ADDRESS ($)
	bne	help_iomap		; No, goto next
	ldx	#<help_address_msg	; Get LSB address of msg
	ldy	#>help_address_msg	; Get MSB address of msg
	jsr	print_string		; Write message
	jmp	help_end		; End subroutine

help_iomap:				; LOAD IOMAP HELP
	cmp	#"!"			; Is it help for IOMAP
	bne	help_assemble		; No, goto next
	ldx	#<help_iomap_msg	; Get LSB address of msg
	ldy	#>help_iomap_msg	; Get MSB address of msg
	jsr	print_string		; Write message
	jmp	help_end		; End subroutine

help_assemble:				; ASSEMBLE COMMAND HELP
	cmp	#"A"			; Is it help for ASSEMBLE
	bne	help_basic		; No, goto next
	ldx	#<help_assemble_msg	; Get LSB address of msg
	ldy	#>help_assemble_msg	; Get MSB address of msg
	jsr	print_string		; Write message
	jmp	help_end		; End subroutine

help_basic:				; CONVERT COMMAND HELP
	cmp	#"B"			; Is it help for CONVERT
	bne	help_clock		; No, goto next
	ldx	#<help_basic_msg	; Get LSB address of msg
	ldy	#>help_basic_msg	; Get MSB address of msg
	jsr	print_string		; Write message
	jmp	help_end		; End subroutine

help_clock:				; CLOCK COMMAND HELP
	cmp	#"C"			; Is it help for CLOCK
	bne	help_disassemble	; No, goto next
	ldx	#<help_clock_msg	; Get LSB address of msg
	ldy	#>help_clock_msg	; Get MSB address of msg
	jsr	print_string		; Write message
	jmp	help_end		; End subroutine

help_disassemble:			; DISASSEMBLE COMMAND HELP
	cmp	#"D"			; Is it help for DISASSEMBLE
	bne	help_fill		; No, goto next
	ldx	#<help_disassemble_msg	; Get LSB address of msg
	ldy	#>help_disassemble_msg	; Get MSB address of msg
	jsr	print_string		; Write message
	jmp	help_end		; End subroutine

help_fill:				; FILL COMMAND HELP
	cmp	#"F"			; Is it help for FILL
	bne	help_go			; No, goto next
	ldx	#<help_fill_msg		; Get LSB address of msg
	ldy	#>help_fill_msg		; Get MSB address of msg
	jsr	print_string		; Write message
	jmp	help_end		; End subroutine

help_go:				; GO COMMAND HELP
	cmp	#"G"			; Is it help for GO
	bne	help_hunt		; No, goto next
	ldx	#<help_go_msg		; Get LSB address of msg
	ldy	#>help_go_msg		; Get MSB address of msg
	jsr	print_string		; Write message
	jmp	help_end		; End subroutine

help_hunt:				; LOAD COMMAND HELP
	cmp	#"H"			; Is it help for LOAD
	bne	help_load		; No, goto next
	ldx	#<help_hunt_msg		; Get LSB address of msg
	ldy	#>help_hunt_msg		; Get MSB address of msg
	jsr	print_string		; Write message
	bra	help_end		; End subroutine

help_load:				; LOAD COMMAND HELP
	cmp	#"L"			; Is it help for LOAD
	bne	help_memory		; No, goto next
	ldx	#<help_load_msg		; Get LSB address of msg
	ldy	#>help_load_msg		; Get MSB address of msg
	jsr	print_string		; Write message
	bra	help_end		; End subroutine

help_memory:				; MEMORY MAP COMMAND HELP
	cmp	#"M"			; Is it help for MEMORY
	bne	help_registers		; No, goto next
	ldx	#<help_memory_msg	; Get LSB address of msg
	ldy	#>help_memory_msg	; Get MSB address of msg
	jsr	print_string		; Write message
	bra	help_end		; End subroutine

help_registers:				; RGISTERS COMMAND HELP
	cmp	#"R"			; Is it help for REGISTERS
	bne	help_save		; No, goto next
	ldx	#<help_registers_msg	; Get LSB address of msg
	ldy	#>help_registers_msg	; Get MSB address of msg
	jsr	print_string		; Write message
	bra	help_end		; End subroutine

help_save:				; SAVE COMMAND HELP
	cmp	#"S"			; Is it help for SAVE
	bne	help_test		; No, goto next
	ldx	#<help_save_msg		; Get LSB address of msg
	ldy	#>help_save_msg		; Get MSB address of msg
	jsr	print_string		; Write message
	bra	help_end		; End subroutine

help_test:				; TEST COMMAND HELP
	cmp	#"T"			; Is it help for TEST
	bne	help_write		; No, goto next
	ldx	#<help_test_msg		; Get LSB address of msg
	ldy	#>help_test_msg		; Get MSB address of msg
	jsr	print_string		; Write message
	bra	help_end		; End subroutine

help_write:				; WRITE COMMAND HELP
	cmp	#"W"			; Is it help for WRITE
	bne	help_zero		; No, goto next
	ldx	#<help_write_msg	; Get LSB address of msg
	ldy	#>help_write_msg	; Get MSB address of msg
	jsr	print_string		; Write message
	bra	help_end		; End subroutine

help_zero:				; ZERO COMMAND HELP
	cmp	#"Z"			; Is it help for ZERO
	bne	help_not_valid		; No, goto next
	ldx	#<help_zero_msg		; Get LSB address of msg
	ldy	#>help_zero_msg		; Get MSB address of msg
	jsr	print_string		; Write message
	bra	help_end		; End subroutine

help_not_valid:
	ldx	#<help_not_valid_msg	; Get LSB address of msg
	ldy	#>help_not_valid_msg	; Get MSB address of msg
	jsr	print_string		; Write message

help_end:
	rts
	

;  _                                                                    _       _
; (_)  _ __     ___            ___   _   _   _ __            __ _    __| |   __| |  _ __
; | | | '_ \   / __|          / __| | | | | | '__|          / _` |  / _` |  / _` | | '__|
; | | | | | | | (__          | (__  | |_| | | |            | (_| | | (_| | | (_| | | |
; |_| |_| |_|  \___|  _____   \___|  \__,_| |_|     _____   \__,_|  \__,_|  \__,_| |_|
;                    |_____|                       |_____|
;
; Increment CUR_ADDR (16-bit address) - Does not roll-over
; ----------------------------------------------------------------------------------------------------------------------
; INPUT: CUR_ADDR and CUR_ADDR+1
; RETURNS: Carry bit clear = Did not increment. Already at $FFFF
;          Carry bit set =   Incremented

inc_cur_addr:
	pha
	lda	CUR_ADDR+1
	cmp	#$FF			; Is MSB = $FF?
	bne	inc_cur_addr_add	; No, then proceed to increment
	lda	CUR_ADDR
	cmp	#$FF			; Is LSB = $FF
	bne	inc_cur_addr_add	; No, then proceed to increment
	clc				; Carry clear indicate reached $FFFF
	pla
	rts
inc_cur_addr_add:
	clc				; Clear carry bit
	lda	CUR_ADDR		; Load LSB into A
	adc	#1			; Add 1
	sta	CUR_ADDR		; Store the result in LSB
	bcc	inc_cur_addr_end	; If result does not roll over(FF -> 00), then end subroutine
	inc	CUR_ADDR+1		; IF it does, then add 1 to MSB
inc_cur_addr_end:
	sec				; Carry set indicates incrementation done
	pla
	rts



mem_io_map:
	ldx	#<mem_io_map_msg	; Get LSB address of msg
	ldy	#>mem_io_map_msg	; Get MSB address of msg
	jsr	print_string		; Write message
	rts	



;  _           _            _           _                             _                       _
; (_)  _ __   | |_    ___  | |         | |__     ___  __  __         | |   ___     __ _    __| |
; | | | '_ \  | __|  / _ \ | |         | '_ \   / _ \ \ \/ /         | |  / _ \   / _` |  / _` |
; | | | | | | | |_  |  __/ | |         | | | | |  __/  >  <          | | | (_) | | (_| | | (_| |
; |_| |_| |_|  \__|  \___| |_|  _____  |_| |_|  \___| /_/\_\  _____  |_|  \___/   \__,_|  \__,_|
;                              |_____|                       |_____|
;
; Download Intel hex.  Start .org at $1000
; (From the 6502.org code repository with a little modification)
; ----------------------------------------------------------------------------------------------------------------------

intel_hex_load:
	stz	DOWNLOAD_FAIL		; Start by assuming no download failure
	ldx	#<starthex		; Get LSB address of message
	ldy	#>starthex		; Get MSB address of message
	jsr	print_string		; Write message
hex_get_record:
	jsr	read_char
	bcc	hex_get_record
	cmp	#ESC			; Has ESCAPE key been pressed?
	bne	hex_get_start		; Go check for record marker
	ldx	#<transferaborted	; Get LSB address of message
	ldy	#>transferaborted	; Get MSB address of message
	jsr	print_string		; Write message
	rts				; Exit
hex_get_start:
	cmp	#":"			; Start of record marker
	bne	hex_get_record		; not found yet
	
	; START OF RECORD MARKER HAS BEEN FOUND
	; READ RECORD LENGTH
	jsr	read_hex	  	; Get the record length
	sta	RECORD_LENGTH		; Save it the record length
	sta	CHECKSUM	  	; and save first byte of checksum

	; READ THE ADDRESS
	jsr	read_hex	  	; Get the high part of start address
	sta	START+1			;
	clc				;
	adc	CHECKSUM		; Add in the checksum
	sta	CHECKSUM		;
	jsr	read_hex		; Get the low part of the start address
	sta	START			;
	clc				;
	adc	CHECKSUM		; Add in the checksum
	sta	CHECKSUM		;
	
	; READ RECORD TYPE
	jsr	read_hex		; Get the record type
	sta	RECORD_TYPE		; and save it
	clc				;
	adc	CHECKSUM		; Add in the checksum
	sta	CHECKSUM		;
	lda	RECORD_TYPE		;
	beq	hex_get_data		; Get data
	cmp	#1
	beq	hex_end_of_file		; Get End of file record
	cmp	#2
	beq	hex_get_record		; Bypass remaining data of record, and get for next record
	
	; UNKNOWN RECORD TYPE
	ldx	#<unknownrecordtype	; Get LSB address of message
	ldy	#>unknownrecordtype	; Get MSB address of message
	jsr	print_string		; Write message
	lda	RECORD_TYPE		; Get record type
	jsr	print_byte		; Print it
	lda	#CR			; But we'll let it finish so as not to falsely start a new d/l from existing
	rts				; Exit if any other record type

	; GET RECORD TYPE 00 (DATA)
hex_get_data:
	ldx	RECORD_LENGTH		; Number of data bytes to write to memory
	ldy	#0		 	; Start offset at 0
hex_get_data_loop:
	jsr	read_hex		; Get the first/next/last data byte
	sta	(START),y		; Save it to RAM
	clc
	adc	CHECKSUM		; Add in the checksum
	sta	CHECKSUM		;
	iny				; Update data pointer
	dex				; Decrement count
	bne	hex_get_data_loop	; Continue transfering data until count is 0
	jsr	read_hex		; Get the checksum
	clc
	adc	CHECKSUM
	bne	hex_failure		; If failed, report it
	lda	#"."			; Character indicating record OK = '.'
	jsr	print_char		; Write it out
	jmp	hex_get_record		; Get next record

	; FAILED CHECKSUM, INDICATE RECORD THAT FAILED
hex_failure:
	lda	#'x'			; Character indicating record failure = 'F'
	sta	DOWNLOAD_FAIL		; Download failed if non-zero
	jsr	print_char		; write it out
	jmp	hex_get_record		; Wait for next record start

	; EOF RECORD (01)
hex_end_of_file:			; We've reached the end-of-record record
	jsr	read_hex		; Get the checksum
	clc
	adc	CHECKSUM		; Add previous checksum accumulator value
	beq	hex_download_check	; Checksum = 0 means we're OK!
	ldx	#<badrecordchecksum	; Get LSB address of message
	ldy	#>badrecordchecksum	; Get MSB address of message
	jsr	print_string		; Write message
	rts
	
	; PRINTS STATUS OF DOWNLOAD (SUCCESS OR FAILED)
hex_download_check:
	lda	DOWNLOAD_FAIL		;
	beq	hex_download_success	; Check D/L fail flag
	ldx	#<downloadfailed	; Get LSB address of message
	ldy	#>downloadfailed	; Get MSB address of message
	jsr	print_string		; Write message
	rts
hex_download_success:
	ldx	#<downloadsuccessful	; Get LSB address of message
	ldy	#>downloadsuccessful	; Get MSB address of message
	jsr	print_string		; Write message
	lda	#$10			; Set CUR_ADDR to $1000
	sta	CUR_ADDR+1		;
	stz	CUR_ADDR		;
	rts
	

;  _ __ ___     ___   _ __ ___     ___    _ __   _   _ 
; | '_ ` _ \   / _ \ | '_ ` _ \   / _ \  | '__| | | | |
; | | | | | | |  __/ | | | | | | | (_) | | |    | |_| |
; |_| |_| |_|  \___| |_| |_| |_|  \___/  |_|     \__, |
;                                                |___/ 
;
; Reads and displays a portion of memory (memory dump)
; ----------------------------------------------------------------------------------------------------------------------

; GET COMMAND LINE START ADDRESS IF ANY
; -------------------------------------
memory:					; CHECK FOR EOL AND " " DELIMITER
	lda	IN_BUFFER,y		; Read a character from the input buffer
	beq	memory_default_addr	; Is it end of buffer (0)? Yes, so use default address (CUR_ADDR)
	cmp	#" "			; Is it the space delimiter?
	beq	memory_start_addr	; Yes it is. Then go read an address
	jsr	syntax_error		; If anything else, print a syntax error
	jmp	memory_end		; Go to end of routine

memory_default_addr:			; IF NO ADDRESS PROVIDED, GET CUR ADDRESS USED +1
	lda	CUR_ADDR+1		; Read the MSB's last address used
	sta	SRC_ADDR+1		; Store it as the start address
	lda	CUR_ADDR		; Read the LSB's last address used
	sta	SRC_ADDR		; Store it as the start address
	bra	memory_hex_dump		; 

memory_start_addr:			; GET START ADDRESS
	jsr	skip_spaces		; skip leading spaces if any
	jsr	get_word		; Get address from the input buffer
	bcs	memory_store_start	; Valid word is present, store address
	jsr	invalid_address		; Display invalid address message
	jmp	memory_end		; No valid word is present, then send end parsing

memory_store_start:			; STORE START ADDRESS
	lda	WORD			; Load LSB from get_word
	sta	SRC_ADDR		; Store LSB to start address register
	sta	CUR_ADDR		; Store it in the current address (LSB)
	lda	WORD+1			; Load MSB from get_word
	sta	SRC_ADDR+1		; Store MSB to start address register
	sta	CUR_ADDR+1		; Store it in the current address (MSB)

memory_hex_dump:			; PRINT HEX DUMP
	stz	MON_TEMP+1		; Set line counter to 0
	
; PRINT ADDRESS, OPCODE AND OPERAND VALUES
memory_looplines:			; PRINT 16-BIT ADDRESS AT THE BEGINNING OF EACH LINE
	; PRINT ADDRESS
	lda	CUR_ADDR+1		; Load address MSB
	jsr	print_byte		; Prints MSB
	lda	CUR_ADDR		; Load address LSB
	jsr	print_byte		; Prints LSB
	lda	#":"			; Fetch colon ":" delimiter for byte display
	jsr	print_char		; Print it
	lda	#" "			; Fetch the space character
	jsr	print_char		; Print it

	ldx	#$00			; Set byte counter to 0
memory_loopbytes:			; PRINT X BYTES PER LINE
	stz	MON_TEMP
r_lb0:	jsr	memory_ffff		; Is address $FFFF?
	bcc	r_lb1			; No, then proceed to display the byte normally
	lda	#1			; Yes, is it the first time FFFF appears?
	cmp	MON_TEMP		;
	beq	r_lb1			;
	lda	#" "			; Else, if it's $FFF print spaces
	jsr	print_char		; One for the MSB
	jsr	print_char		; Another for the LSB
	jsr	print_char		; And lastly, the separator
	bra	r_lb2			; Proceed with the byte loop
r_lb1:	lda	(CUR_ADDR)		; Load byte from referenced address
	jsr	print_byte		; Print the byte
	lda	#" "			; Separate bytes with a space
	jsr	print_char		; Print the space separator
r_lb2:	jsr	inc_cur_addr		; Increment current address counter by one
	inx				; Increment byte counter
	cpx	#BYTES_PER_LINE		; Is it the predefined amount of bytes?
	bne	r_lb0			; No? Then contine printing bytes

memory_print_characters:		; PRINT CHARACTER REPRESENTATION OF BYTES
	lda	#"|"			; Fetch the pipe "|" separator character
	jsr	print_char		; Print it
	lda	#" "			; Fetch the space character
	jsr	print_char		; Print it
	lda	SRC_ADDR		; Reload start address
	sta	CUR_ADDR		; Into the temporary location
	lda	SRC_ADDR+1		; Reload start address
	sta	CUR_ADDR+1		; Into the temporary location
	ldx	#$00			; Reset counter to 0 to be the character counter

memory_loopchars:			; PRINT 8 CHARACTERS, OR 16 CHARACTERS PER LINE
	stz	MON_TEMP
r_lc:	jsr	memory_ffff		; Is address $FFFF?
	bcc	r_lc0			; No, then proceed to display the character normally
	lda	#1
	cmp	MON_TEMP
	beq	r_lc0
	lda	#" "			; Else,
	jsr	print_char		; print a space
	bra	r_lc3			; Proceed with character loop
r_lc0:	lda	(CUR_ADDR)		; Load character from referenced address
	cmp	#" "			; ASCII decimal 32 (Space)
	bcc	r_lc1			; Is A < 20? Yes? Then output error 0.
	cmp	#$7F			; ASCII decimal 127? (DEL)
	bcs	r_lc1			; Is A >= 127? Yes? Then output error 0.
	bra	r_lc2			; Otherwise, returns A as is.
r_lc1:	lda	#"."			; It's an invalid character, replace it with a dot
r_lc2:	jsr	print_char		; Print valid character
r_lc3:	jsr	inc_cur_addr		; Increment temp address by one
	inx				; Increment character counter
	cpx	#BYTES_PER_LINE		; Is it the predefined amount of characters?
	bne	r_lc			; No, then proceed to the next character
	lda	#CR			; Fetch the new line character
	jsr	print_char		; Print it
	inc	MON_TEMP+1			; Increment line counter

					; UPDATE ADDRESSES
	lda	CUR_ADDR		; Load last address LSB
	sta	SRC_ADDR		; Store it as the new start address LSB
	lda	CUR_ADDR+1		; Load last address LSB
	sta	SRC_ADDR+1		; Store it as the new start address LSB

					; IF $FFFF REACHED, THEN STOP DISPLAYING MORE LINES
	lda	MON_TEMP+1
	jsr	memory_ffff		; Is current address $FFFF?
	bcc	r_nxt			; No
	lda	#ROWS-2			; Else end printing lines

r_nxt:	cmp	#ROWS-2
	beq	memory_end
	jmp	memory_looplines	; Finished displaying lines

memory_end:				; IF CUR ADDRESS WAS $FFFF THEN ROLL OVER TO $0000
	jsr	memory_ffff		; Is current address $FFFF?
	bcc	r_e2
	stz	CUR_ADDR		; Set address to 0000
	stz	CUR_ADDR+1		; 
r_e2:	rts

; Check if end of address reached ($FFFF)
; Carry set if $FFFF
memory_ffff:
	pha
	lda	CUR_ADDR+1		; Load last address MSB
	cmp	#$FF			; Is it $FF?
	bne	rm_ffff_no		; No, then end routine
	lda	CUR_ADDR		; Load last address LSB
	cmp	#$FF			; Is it $FF?
	bne	rm_ffff_no		; No, then end routine
rm_ffff_yes:
	inc	MON_TEMP
	sec
	pla
	rts
rm_ffff_no:
	clc
	pla
	rts


;          _   _       _       _          ____                                              _
;  _ __   (_) | |__   | |__   | |   ___  |___ \   _ __    _   _   _ __ ___     ___   _ __  (_)   ___
; | '_ \  | | | '_ \  | '_ \  | |  / _ \   __) | | '_ \  | | | | | '_ ` _ \   / _ \ | '__| | |  / __|
; | | | | | | | |_) | | |_) | | | |  __/  / __/  | | | | | |_| | | | | | | | |  __/ | |    | | | (__
; |_| |_| |_| |_.__/  |_.__/  |_|  \___| |_____| |_| |_|  \__,_| |_| |_| |_|  \___| |_|    |_|  \___|
;
; Convert the ASCII nibble to numeric value from 0-F
; ----------------------------------------------------------------------------------------------------------------------
; Value to convert in A
; Returns nibble in A

nibble2numeric:
	cmp	#"9"+1		; See if it's 0-9 or 'A'..'F' (no lowercase yet)
	bcc	nib2num   	; If we borrowed, we lost the carry so 0..9
	sbc	#7+1		; Subtract off extra 7 (sbc subtracts off one less)
nib2num:			; If we fall through, carry is set unlike direct entry at nib2num
	sbc	#"0"-1  	; Subtract off '0' (if carry clear coming in)
	and	#$0F		; No upper nibble no matter what
	rts			; Return the nibble


;  _ __     __ _   _ __   ___    ___
; | '_ \   / _` | | '__| / __|  / _ \
; | |_) | | (_| | | |    \__ \ |  __/
; | .__/   \__,_| |_|    |___/  \___|
; |_|

; Parse monitor command line
; ----------------------------------------------------------------------------------------------------------------------

parse2:	
	ldy	#0			; Set IN_BUFFER index to first character
	jsr	skip_spaces		; Remove leading spaces
	lda	IN_BUFFER,y		; Load a character
	cmp	#0			; Is the string empty?
	bne	parse_command		; No, then proceed to remove leading spaces
	bra	parse_end		; Yes, then end parsing
parse_command:
	jsr	uppercase		; Converts character to uppercase
	iny				; Increment input buffer pointer
	inc	ERROR_PTR		; Increment error pointer location

	; JUMP TABLE

parse_fill:
	cmp	#"F"			; Is it the FILL command?
	bne	parse_memory		; If it's not, the proceed to next command
	jmp	fill_mem		; Execute command
	
parse_memory:
	cmp	#"M"			; Is it the READ MEMORY command?
	bne	parse_write		; If it's not, the proceed to next command
	jmp	memory			; Execute command

parse_write:
	cmp	#"W"			; Is it the WRITE command?
	bne	parse_zero		; If not, then proceed to the next command
	jmp	write_mem		; Execute command

parse_zero:
	cmp	#"Z"			; Is it the WRITE command?
	bne	parse_end		; If not, then proceed to the next command
	jmp	zero_mem		; Execute command

parse_end:	
	rts

cmd_address	=	$80
cmd_assemble	=	$81		; tbc
cmd_diagnostics	=	$82
cmd_disassemble	=	$83
cmd_find	=	$84		; tbc
cmd_fill	=	$85
cmd_memory	=	$86
cmd_help	=	$87
cmd_load	=	$88
cmd_map		=	$89
cmd_peek	=	$8A		; tbc
cmd_poke	=	$8B
cmd_run		=	$8C
cmd_register	=	$8D
cmd_save	=	$8E		; tbc
cmd_zero	=	$8F

parse:
	ldy	#$00			; Input buffer pointer
	ldx	#$00			; Command pointer
	jsr	skip_spaces		; Skip leading spaces (alters input buffer pointer y)
	sty	PARSE_IN_BUFF_POS		; Store the real posision of first character in buffer
	lda	ERROR_PTR
	sta	PARSE_ERROR_PTR
parse_next_char:
	lda	commands,x		; Load a command character
	beq	parse_no_cmd		; If no command is recognized or valid, end parsing
	bmi	parse_is_cmd		; If it's a command code, go to command
	cmp	IN_BUFFER,y		; Compare it with input buffer 
	bne	parse_skip_cmd		; if not equal, go to next command by skipping the rest of the command letters
	iny				; Increment input buffer pointer
	inx				; Increment command pointer
	inc	ERROR_PTR		; Increment Error pointer
	bra	parse_next_char		; Grab the next character
	
parse_skip_cmd:
	; BACKUP TO ORIGINAL POSITION
	ldy	PARSE_IN_BUFF_POS
	lda	PARSE_ERROR_PTR
	sta	ERROR_PTR
	; SKIP CHARACTERS UNTIL COMMAND CODE IS DETECTED
parse_skip_until_code:
	inx
	lda	commands,x
	bpl	parse_skip_until_code
	inx
	bra	parse_next_char

parse_no_cmd:
	rts
	
parse_is_cmd:
	cmp	#cmd_address
	bne	parse_is_cmd2
	jmp	address
parse_is_cmd2:
	cmp	#cmd_diagnostics
	bne	parse_is_cmd3
	jmp	diagnostics
parse_is_cmd3:
	cmp	#cmd_disassemble
	bne	parse_is_cmd4
	jmp	disassemble
parse_is_cmd4:
	cmp	#cmd_fill
	bne	parse_is_cmd5
	jmp	fill_mem
parse_is_cmd5:
	cmp	#cmd_help
	bne	parse_is_cmd6
	jmp	help
parse_is_cmd6:
	cmp	#cmd_load
	bne	parse_is_cmd7
	jmp	intel_hex_load
parse_is_cmd7:
	cmp	#cmd_map
	bne	parse_is_cmd8
	jmp	mem_io_map
parse_is_cmd8:
	cmp	#cmd_memory
	bne	parse_is_cmd9
	jmp	memory
parse_is_cmd9:
	cmp	#cmd_poke
	bne	parse_is_cmd10
	jmp	write_mem
parse_is_cmd10:
	cmp	#cmd_run
	bne	parse_is_cmd11
	jmp	go_exec
parse_is_cmd11:
	cmp	#cmd_register
	bne	parse_is_cmd12
	jmp	registers
parse_is_cmd12:
	cmp	#cmd_zero
	bne	parse_no_cmd
	jmp	zero_mem



commands:
	.byte	"ADDR", cmd_address	; Set current address for commands requiring only one parameter like diag, mem, run, etc.
	.byte	"DIAG", cmd_diagnostics	; Diagnose RAM
	.byte	"DIS",  cmd_disassemble	; Disassemble memory
	.byte	"FILL", cmd_fill	; Fill a region of memory with a byte
	.byte	"HELP", cmd_help	; Help for various commands
	.byte	"LOAD", cmd_load	; Load a program using Intel Hex (Perhaps x-modem soon)
	.byte	"MAP",  cmd_map		; Display memory map of computer
	.byte	"MEM",  cmd_memory	; Memory dump
	.byte	"POKE", cmd_poke	; Poke a value at a specific memory location
	.byte	"RUN",	cmd_run		; Run a loaded or assembled program
	.byte	"REG",  cmd_register	; Display register values (tbc)
	.byte	"SAVE", cmd_save	; Save code or a region of memory (tbc)
	.byte	"ZERO", cmd_zero	; Zero out a region of memory
	.byte	$00			; End of commands
	

;                 _           _             _               _
;  _ __    _ __  (_)  _ __   | |_          | |__    _   _  | |_    ___
; | '_ \  | '__| | | | '_ \  | __|         | '_ \  | | | | | __|  / _ \
; | |_) | | |    | | | | | | | |_          | |_) | | |_| | | |_  |  __/
; | .__/  |_|    |_| |_| |_|  \__|  _____  |_.__/   \__, |  \__|  \___|
; |_|                              |_____|          |___/

; Prints a HEX representation of a byte
;-----------------------------------------------------------------------------------------------------------------------
; INPUT:    Byte in A

print_byte:
	;pha				;
	jsr	print_upper_nibble	; Print first nibble to terminal
	jsr	print_lower_nibble	; Print second nibble to terminal
	;pla				;
	rts


;                 _           _                    _
;  _ __    _ __  (_)  _ __   | |_            ___  | |__     __ _   _ __
; | '_ \  | '__| | | | '_ \  | __|          / __| | '_ \   / _` | | '__|
; | |_) | | |    | | | | | | | |_          | (__  | | | | | (_| | | |
; | .__/  |_|    |_| |_| |_|  \__|  _____   \___| |_| |_|  \__,_| |_|
; |_|                              |_____|

; Write character to ACIA1 (Rockwell) - If using a WD65C51, use a delay instead of checking the transmit buffer flag
; ----------------------------------------------------------------------------------------------------------------------
; INPUT:    Character to print in A

print_char:
	pha				; Save A, the character to send, for later use
print_char_delay:
	lda	ACIA1_STATUS		; Check if the transmit buffer is empty
	and	#$10			; Isolate transmit buffer flag from register
	beq	print_char_delay	; 1 = buffer clear, 0 = buffer not empty
	pla				; Restore A with character to send
	sta	ACIA1_DATA		; Transmit character that is in A to the ACIA
	rts


;                 _           _                 _           _          
;  _ __    _ __  (_)  _ __   | |_            __| |   __ _  | |_    ___ 
; | '_ \  | '__| | | | '_ \  | __|          / _` |  / _` | | __|  / _ \
; | |_) | | |    | | | | | | | |_          | (_| | | (_| | | |_  |  __/
; | .__/  |_|    |_| |_| |_|  \__|  _____   \__,_|  \__,_|  \__|  \___|
; |_|                              |_____|                             
 
; Prints date
; ----------------------------------------------------------------------------------------------------------------------------------
; INPUT: A	SHORT = Short format (2022-02-16)
;		MEDIUM = medium format (February 16, 2022)
;		LONG = Long format (Wednesday, February 16, 2022)

print_date:
	pha
	lda	#$40			; Bit 6 = Read bit
	sta	RTC_CTRL		; Halt the timekeeper register to be able to read it
	pla

	; DETERMINE WHICH DATE FORMAT TO PRINT
print_date_format:
	cmp	#SHORT			; Is it the short format
	beq	print_date_short	; Yes
	cmp	#MEDIUM			; Is it the medium format
	beq	print_date_medium	; Yes, if not then print long format.

	; PRINT WEEK DAY
	ldx	#0			; Set day index to zero
day_search:
	lda	day,x			; Get data pointed by X
	cmp	#$FF
	bne	day_search2
	jmp	print_date_end
day_search2:
	inx				; Point to next piece of data for next loop
	cmp	RTC_DAY			; Does the data correlate to the day of the week?
	bne	day_search		; No, then search again
print_day:
	lda	day,x			; Load character
	beq	print_day_end		; Once null character reached, end printing day of week
        jsr	print_char		; Print character
        inx				; Point to next character
        bra	print_day		; Loop to get next character
print_day_end:
	lda	#","			; Print comma
	jsr	print_char		;
	lda	#" "			; Print space
	jsr	print_char		;

	; PRINT MONTH
print_date_medium:
	ldx	#0			; Set month index to zero
month_search:
	lda	month,x			; Get data pointed by X
	cmp	#$FF
	bne	month_search2
	jmp	print_date_end
month_search2:
	inx				; Point to next piece of data for next loop
	cmp	RTC_MONTH		; Does the data correlate to the month?
	bne	month_search		; No, then search again
month_print_loop:
	lda	month,x			; Load character pointed by X
	beq	month_print_end		; Once null character reached, end subroutine
        jsr	print_char		; Print character
        inx				; Increment pointer
        bra	month_print_loop	; Get next character
month_print_end:
	lda	#" "			; Load the space character
	jsr	print_char		; Print it

	; PRINT DATE
	lda	RTC_DATE		; Load the date
	cmp	#10			; Is if bigger then 10?
	bcc	date_print_1digit	; If not, then print 1 digit date
	jsr	print_upper_nibble	; If its 10 or higher, print 2 digits
date_print_1digit:
	jsr	print_lower_nibble		
	lda	#","			; Load the comma character
	jsr	print_char		; Print it
	lda	#" "			; Load the space character
	jsr	print_char		; Print it
	
	; PRINT YEAR
	lda	#"2"			; Load up "2" digit
	jsr	print_char		; print the thousanth's digit of the year
	lda	#"0"			; Load up "0" digit
	jsr	print_char		; Print the hundreth's digit of the year
	lda	RTC_YEAR		; Load the year from RTC
	jsr	print_byte		; Print it
	bra	print_date_end
	
print_date_short:
	lda	#"2"
	jsr	print_char
	lda	#"0"
	jsr	print_char
	lda	RTC_YEAR
	jsr	print_byte
	lda	#"-"
	jsr	print_char
	lda	RTC_MONTH
	jsr	print_byte
	lda	#"-"
	jsr	print_char
	lda	RTC_DATE
	jsr	print_byte

print_date_end:
	stz	RTC_CTRL		; Resumes the timekeeper updates
	rts


;                 _           _                     _   _       _       _        
;  _ __    _ __  (_)  _ __   | |_           _ __   (_) | |__   | |__   | |   ___ 
; | '_ \  | '__| | | | '_ \  | __|         | '_ \  | | | '_ \  | '_ \  | |  / _ \
; | |_) | | |    | | | | | | | |_          | | | | | | | |_) | | |_) | | | |  __/
; | .__/  |_|    |_| |_| |_|  \__|  _____  |_| |_| |_| |_.__/  |_.__/  |_|  \___|
; |_|                              |_____|                                       
 
; Print lower nibble from a byte
;-----------------------------------------------------------------------------------------------------------------------------------
; INPUT:    Byte in A

print_upper_nibble:
	pha				;
	phy				;
	lsr				; Move MSB nibble to LSB position
	lsr				;  "
	lsr				;  "
	lsr				;  "
	and	#$0F			;
	tay				; Index A for first nibble
	lda	hexascii,y		; Load ascii value according to index
	jsr	print_char		; Print first nibble to terminal
	ply				;
	pla				;
	rts

print_lower_nibble:
	pha				;
	phy
	and	#$0F			; Isolate LSB nibble
	tay				; Index A for second nibble
	lda	hexascii,y		; Load ascii value according to index
	jsr	print_char		; Print second nibble to terminal
	ply				;
	pla				;
	rts


;                 _           _                   _            _
;  _ __    _ __  (_)  _ __   | |_           ___  | |_   _ __  (_)  _ __     __ _
; | '_ \  | '__| | | | '_ \  | __|         / __| | __| | '__| | | | '_ \   / _` |
; | |_) | | |    | | | | | | | |_          \__ \ | |_  | |    | | | | | | | (_| |
; | .__/  |_|    |_| |_| |_|  \__|  _____  |___/  \__| |_|    |_| |_| |_|  \__, |
; |_|                              |_____|                                 |___/

; Print a string of any length to the ACIA
; ----------------------------------------------------------------------------------------------------------------------
; INPUT:    Pass address of string in X (LOW BYTE) and Y (HIGH BYTE)
; VARIABLE: Using TEMP

print_string:
	pha				; Save A
	stx	TEMP			; Store address LSB of the string to print
	sty	TEMP+1			; Store address MSB of the string to print
	ldy	#0			; Clear pointer

print_string_loop:
	lda	(TEMP),y		; Load character pointed by Y
	beq	print_string_end	; Once null character reached, end subroutine
        jsr	print_char		; Print character
        iny				; Increment pointer
        bne	print_string_loop	; If pointer didn't roll over to 0, print next character
	inc	TEMP+1			; Increment MSB to print a string longer then 256 characters
	bra	print_string_loop	; Go read more characters

print_string_end:
	pla				; Restore A
	rts				; Done


;                 _           _             _     _                    
;  _ __    _ __  (_)  _ __   | |_          | |_  (_)  _ __ ___     ___ 
; | '_ \  | '__| | | | '_ \  | __|         | __| | | | '_ ` _ \   / _ \
; | |_) | | |    | | | | | | | |_          | |_  | | | | | | | | |  __/
; | .__/  |_|    |_| |_| |_|  \__|  _____   \__| |_| |_| |_| |_|  \___|
; |_|                              |_____|                             	

; Prints time
; ----------------------------------------------------------------------------------------------------------------------------------
; INPUT: A	12 = 12 hour format (9:43 PM)
;		24 = 24 hour format (21:43:00)
 
print_time:
	pha
	lda	#$40			; Bit 6 = Read bit
	sta	RTC_CTRL		; Halt the timekeeper register to be able to read it
	pla
	
	cmp	#12			; Is it the 12 hour format?
	beq	print_time12		; Yes, then print 12 hour format time, else, print 24 hour format
	
	; 24 HOUR FORMAT
	lda	RTC_HOURS
	jsr	print_byte
	lda	#":"
	jsr	print_char
	lda	RTC_MINUTES
	jsr	print_byte
	lda	#":"
	jsr	print_char
	lda	RTC_SECONDS
	jsr	print_byte
	bra	print_time_end
	
print_time12:
	; 12 HOUR FORMAT
	lda	RTC_HOURS
	cmp	#$12
	beq	print_time_noon
	bcs	print_time_pm			; Is time above noon?
print_time_am:
	;lda	RTC_HOURS
	jsr	print_byte
	lda	#":"
	jsr	print_char
	lda	RTC_MINUTES
	jsr	print_byte
	lda	#" "
	jsr	print_char
	lda	#"A"
	jsr	print_char
	lda	#"M"
	jsr	print_char
	bra	print_time_end
	
print_time_pm:
	sec					; Set carry for substraction
	sbc	$12				; Substract 12 from 24 hour format
print_time_noon:
	jsr	print_byte
	lda	#":"
	jsr	print_char
	lda	RTC_MINUTES
	jsr	print_byte
	lda	#" "
	jsr	print_char
	lda	#"P"
	jsr	print_char
	lda	#"M"
	jsr	print_char
	
print_time_end:
	stz	RTC_CTRL		; Resumes the timekeeper updates
	rts


;                            _                  _
;  _ __    ___    __ _    __| |           ___  | |__     __ _   _ __
; | '__|  / _ \  / _` |  / _` |          / __| | '_ \   / _` | | '__|
; | |    |  __/ | (_| | | (_| |         | (__  | | | | | (_| | | |
; |_|     \___|  \__,_|  \__,_|  _____   \___| |_| |_|  \__,_| |_|
;                               |_____|

; Read character from ACIA1 (non-waiting)
; ----------------------------------------------------------------------------------------------------------------------
; OUTPUT: Carry bit clear = no character received.
;         Carry bit set = character received in A.

read_char:
	clc				; No character present
	lda	ACIA1_STATUS		; Load ACIA1 status register
	and	#$08			; Is there a character in the buffer?
	beq	read_char_end		; If not then end subroutine
	lda	ACIA1_DATA		; Read character from ACIA buffer
	sec				; Set carry flag to indicate a character is available
read_char_end:
	rts				; Done


;                            _           _                   
;  _ __    ___    __ _    __| |         | |__     ___  __  __
; | '__|  / _ \  / _` |  / _` |         | '_ \   / _ \ \ \/ /
; | |    |  __/ | (_| | | (_| |         | | | | |  __/  >  < 
; |_|     \___|  \__,_|  \__,_|  _____  |_| |_|  \___| /_/\_\
;                               |_____|                      
;
; Convert two ASCII hexadecimal characters from serial terminal to 8-bit binary
; ----------------------------------------------------------------------------------------------------------------------
; Result in A
; Destroys TEMP

read_hex:
	jsr	read_char		; Read first character from ACIA
	bcc	read_hex		; If character not present, then read from ACIA again
	jsr	nibble2numeric		; Convert to 0..F numeric
	asl	a			; Shift value to MSB
	asl	a			;
	asl	a			;
	asl	a	  		; This is the upper nibble
	and	#$F0			; Clear LSB
	sta	TEMP			; Store MSB in TEMP for merging after processing LSB
read_hex2:
	jsr	read_char		; Read second character from ACIA
	bcc	read_hex2		; If character not present, then read from ACIA again
	jsr	nibble2numeric		; Convert to 0..F numeric
	ora	TEMP			; Merge MSB (TEMP) and LSB (A)
	rts				; return byte in A


;                            _                                                      _   
;  _ __    ___    __ _    __| |          _ __    _ __    ___    _ __ ___    _ __   | |_ 
; | '__|  / _ \  / _` |  / _` |         | '_ \  | '__|  / _ \  | '_ ` _ \  | '_ \  | __|
; | |    |  __/ | (_| | | (_| |         | |_) | | |    | (_) | | | | | | | | |_) | | |_ 
; |_|     \___|  \__,_|  \__,_|  _____  | .__/  |_|     \___/  |_| |_| |_| | .__/   \__|
;                               |_____| |_|                                |_|          

; Read string from command prompt from input device
; ----------------------------------------------------------------------------------------------------------------------
; INPUT:  n/a
; OUTPUT: Carry bit clear = no string recorded
;         Carry bit set = string in IN_BUFFER


read_prompt:
	ldy	#0			; Set input buffer to 0
read_prompt_readchar:
	jsr	read_char		; Get a character from the terminal, if available
	bcs	read_prompt_interpret	; If one is present, interpret keystroke
	bra	read_prompt_readchar	; Loop until one is present
read_prompt_interpret:
	cmp	#CR			; Is it the Carriage Return key?
	beq	read_prompt_printCR	; Yes, then end string read **
	cmp 	#BS			; Is it the Backspace key?
	beq	read_prompt_backspace	; Yes, then delete previous character
	cmp 	#ESC			; Is it the Escape key?
	beq	read_prompt_escape	; Yes!
	bmi	read_prompt_readchar	; Don't accept ASCII character above or equal to 128?
	cpy	#33			; Has it reached 33 characters?
	bne	read_prompt_storechar	; Get next character, but if above 127 characters, auto escape
	bra	read_prompt_backspace	; Erase last character, as to not type more.
read_prompt_escape:
	jsr	delete_char		; delete characters up to beginning of line
	bra	read_prompt_readchar	; Indicates there is no data in buffer
read_prompt_backspace:
	cpy	#0			; Is it the first character in the string?
	beq 	read_prompt_readchar	; No characters present, go get a new character
	dey				; Decrement text index
	lda 	#BS			; Go back one character,
	jsr 	print_char		; in terminal
	lda 	#" "			; Go overwite previous character,
	jsr 	print_char		; in terminal
	lda 	#BS			; Go back one character again,
	jsr 	print_char		; in terminal
	bra 	read_prompt_readchar	; Go read next character
read_prompt_storechar:
	jsr 	print_char		; Print character on terminal
	sta	IN_BUFFER,y		; Add to the text buffer
	iny				; Increment buffer temporary pointer
	bra 	read_prompt_readchar	; No? Read another character
read_prompt_printCR:
	jsr	print_char		; Print carriage return
;	cpy	#0
;	bne	read_prompt_normal_CR
;	bra	read_prompt_end	
read_prompt_normal_CR:
	lda	#0			; Add a null
	sta	IN_BUFFER,y		; To the input buffer string
read_prompt_end:
	sec				; Indicates there is data in input buffer
	rts

	
	;                        _         _                       
;  _ __    ___    __ _  (_)  ___  | |_    ___   _ __   ___ 
; | '__|  / _ \  / _` | | | / __| | __|  / _ \ | '__| / __|
; | |    |  __/ | (_| | | | \__ \ | |_  |  __/ | |    \__ \
; |_|     \___|  \__, | |_| |___/  \__|  \___| |_|    |___/
;                |___/                                     
		
; Prints the registers and processor status
; ----------------------------------------------------------------------------------------------------------------------
registers:
	
	; PRINT THE PROGRAM COUNTER
	lda	#"P"			; P for the program counter
	jsr	print_char		; Print it
	lda	#"C"			; C for the program counter
	jsr	print_char		; Print it
	lda	#":"			; Colon for the separator
	jsr	print_char		; Print it
	lda	PROC_PC+1		; Load MSB
	jsr	print_byte		; 
	lda	PROC_PC			; Load LSB
	jsr	print_byte
	lda	#" "			; Space for the separator
	jsr	print_char		; Print it

	
	; PRINT THE ACCUMULATOR
	lda	#"A"			; A for the accumulator
	jsr	print_char		; Print it
	lda	#":"			; Colon for the separator
	jsr	print_char		; Print it
	lda	PROC_A			; Load the A register
	jsr	print_byte		; Print it
	lda	#" "			; Space for the separator
	jsr	print_char		; Print it

	; PRINT THE X REGISTER
	lda	#"X"			; X for the X register
	jsr	print_char		; Print it
	lda	#":"			; Colon for the separator
	jsr	print_char		; Print it
	lda	PROC_X			; Load the X register
	jsr	print_byte		; Print it
	lda	#" "			; Space for the separator
	jsr	print_char		; Print it

	; PRINT THE Y REGISTER
	lda	#"Y"			; Y for the Y register
	jsr	print_char		; Print it
	lda	#":"			; Colon for the separator
	jsr	print_char		; Print it
	lda	PROC_Y			; Load the Y register
	jsr	print_byte		; Print it
	lda	#" "			; Space for the separator
	jsr	print_char		; Print it

	; PRINT THE STATUS FLAGS
	lda	#"F"			; F for FLAGS
	jsr	print_char		; Print it
	lda	#":"			; Colon for the separator
	jsr	print_char		; Print it

	lda	PROC_FLAGS		; Load status register
	and	#$80			; Filter bit 7 (negative)
	beq	p_neg1
	lda	#"n"
	bra	p_neg2
p_neg1:	lda	#"N"
p_neg2: jsr	print_char		; Print N/n"

	lda	PROC_FLAGS		; Load status register
	and	#$40			; Filter bit 6 (overflow)
	beq	p_ovr1
	lda	#"v"
	bra	p_ovr2
p_ovr1:	lda	#"V"
p_ovr2:	jsr	print_char		; Print V/v

	lda	PROC_FLAGS		; Load status register
	and	#$20			; Filter bit 5
	beq	p_b1
	lda	#"b"
	bra	p_b2
p_b1:	lda	#"B"
p_b2: jsr	print_char		; Print B/b

	lda	PROC_FLAGS		; Load status register
	and	#$10			; Filter bit 4
	beq	p_b3
	lda	#"b"
	bra	p_b4
p_b3:	lda	#"B"
p_b4:	jsr	print_char		; Print B/b

	lda	PROC_FLAGS		; Load status register
	and	#$08			; Filter bit 3 (Decimal)
	beq	p_dec1
	lda	#"d"
	bra	p_dec2
p_dec1:	lda	#"D"
p_dec2: jsr	print_char		; Print D/d

	lda	PROC_FLAGS		; Load status register
	and	#$04			; Filter bit 2 (Interrupt)
	beq	p_int1
	lda	#"i"
	bra	p_int2
p_int1:	lda	#"I"
p_int2: jsr	print_char		; Print I/i

	lda	PROC_FLAGS		; Load status register
	and	#$02			; Filter bit 1 (Zero)
	beq	p_zer1
	lda	#"z"
	bra	p_zer2
p_zer1:	lda	#"Z"
p_zer2: jsr	print_char		; Print Z/z

	lda	PROC_FLAGS		; Load status register
	and	#$01			; Filter bit 0 (Carry)
	beq	p_car1
	lda	#"c"
	bra	p_car2
p_car1:	lda	#"C"
p_car2: jsr	print_char		; Print C/c
	lda	#CR
	jsr	print_char		; Print carriage return

	rts



;        _      _
;  ___  | | __ (_)  _ __           ___   _ __     __ _    ___    ___   ___
; / __| | |/ / | | | '_ \         / __| | '_ \   / _` |  / __|  / _ \ / __|
; \__ \ |   <  | | | |_) |        \__ \ | |_) | | (_| | | (__  |  __/ \__ \
; |___/ |_|\_\ |_| | .__/  _____  |___/ | .__/   \__,_|  \___|  \___| |___/
;                  |_|    |_____|       |_|
;
; Skip spaces from INPUT_BUFFER at current index IN_BUFFER_PTR
; ----------------------------------------------------------------------------------------------------------------------
; INPUT:  Y (current position)
; OUTPUT: Y (new position)

skip_spaces:
	pha
skip_spaces_loop:
	lda	IN_BUFFER,y		; Load character
	cmp	#" "			; Is it a space?
	bne	skip_spaces_end		; Not a space? Then end subroutine
	iny				; Increment index for next character
	inc	ERROR_PTR		; Increment pointer to next potential error location
	bra	skip_spaces_loop	; Go and read another character
skip_spaces_end:
	pla
	rts
	
	
;  _   _   _ __    _ __     ___   _ __    ___    __ _   ___    ___
; | | | | | '_ \  | '_ \   / _ \ | '__|  / __|  / _` | / __|  / _ \
; | |_| | | |_) | | |_) | |  __/ | |    | (__  | (_| | \__ \ |  __/
;  \__,_| | .__/  | .__/   \___| |_|     \___|  \__,_| |___/  \___|
;         |_|     |_|

; Convert character in A to uppercase
; ----------------------------------------------------------------------------------------------------------------------
; INPUT:  A, anycase
; OUTPUT: A, UPPERCASE

uppercase:
	cmp	#"a"			; Is value less the "a"?
	bcc	uppercase_end		; Then end subroutine
	cmp	#"z"+1			; Is value higher then "z"?
	bcs	uppercase_end		; Then end subroutine
	and	#%11011111		; Substract $20 (5th bit) from the ASCII value
uppercase_end:
	rts
	

;          _                   _           _   _   
; __   __ (_)   __ _          (_)  _ __   (_) | |_ 
; \ \ / / | |  / _` |         | | | '_ \  | | | __|
;  \ V /  | | | (_| |         | | | | | | | | | |_ 
;   \_/   |_|  \__,_|  _____  |_| |_| |_| |_|  \__|
;                     |_____|                      
;
; Initialize the VIA
; ----------------------------------------------------------------------------------------------------------------------

via_init:

	; VIA1 INITIALIZATION
	; -------------------

	; SET DATA DIRECTION OF VIA1 PORTA FOR RS DATA IN, AND LED OUTPUTS
	lda	#%11111000		; Life LED, NC, LED C-B-A, RS2, RS1, RS0
	sta	VIA1_DDRA		; Set PORTA as input (for shift registers)
	stz	VIA1_PORTA		; Clear outputs

	; SET DATA DIRECTION OF VIA1 PORTB FOR 8-BIT MCU INPUT
	lda	#%00000000		; Set all to input for MCU D0..D7
	sta	VIA1_DDRB		; Set PORTB direction
	
	; INITIALIZE VIA1_PCR
	lda	#%00000000		; Select Negative Edge for CA1 (0 on bit 0)
	sta	VIA1_PCR		; Store it in the Peripheral Control Register
	
	; INTIALIZE VIA1 TIMER #1 (CPU Clock @ 2MHz)
	lda	#%01000000		; Timer 1 continuous interrupts
	sta	VIA1_ACR		; Store it in the Auxiliary Control Register
	lda	#$4E			; Set timer ticks to 50ms, 50,000 clock cycles - 2 ($C34E)
	sta	VIA1_T1CL		; Store in low counter
	lda	#$C3			; Load high byte
	sta	VIA1_T1CH		; Storing high byte, latches and starts countdown of T1
	
	; SETS INTERRUPTS
	lda	#%11000010		; Enable TIMER1 & CA1 interrupts
	sta	VIA1_IER		; Store it in the Interrupt Enable Register
	
	rts

	
;                    _   _
; __      __  _ __  (_) | |_    ___           _ __ ___     ___   _ __ ___
; \ \ /\ / / | '__| | | | __|  / _ \         | '_ ` _ \   / _ \ | '_ ` _ \
;  \ V  V /  | |    | | | |_  |  __/         | | | | | | |  __/ | | | | | |
;   \_/\_/   |_|    |_|  \__|  \___|  _____  |_| |_| |_|  \___| |_| |_| |_|
;                                    |_____|
;
; Writes a byte or a series of consecutive bytes at current address
; ----------------------------------------------------------------------------------------------------------------------
; DESTROYS: A, TEMP, SRC_ADDR
; RETURNS:  CUR_ADDR, current address position

write_mem:				; IS THERE A PARAMETER?
	lda	IN_BUFFER,y		; Read a character from the input buffer
	bne	write_mem_delimeter	; If not empty, check for parameters
	jsr	no_parameter		; If empty, print no parameters message
	bra	write_mem_end		; End routine
	
write_mem_delimeter:
	cmp	#" "			; Is the it a space delimiter?
	beq	write_mem_start_addr	; If it is, then get the start address
	jsr	syntax_error
	bra	write_mem_end		; End routine

write_mem_start_addr:			; GET START ADDRESS
	jsr	skip_spaces		; skip leading spaces if any
	jsr	get_word		; Get address from the input buffer
	bcs	write_mem_store_start	; Valid word is present, store address
	jsr	invalid_address		; Print invalid address
	bra	write_mem_end		; End routine

write_mem_store_start:			; STORE START ADDRESS
	lda	WORD			; Load LSB from get_word
	sta	CUR_ADDR		; Store it in the current address (LSB)
	lda	WORD+1			; Load MSB from get_word
	sta	CUR_ADDR+1		; Store it in the current address (MSB)

write_mem_get_byte:			; GET BYTE
	jsr	skip_spaces		; Skip leading spaces
	jsr	get_byte		; Get address from input buffer, result in A
	bcs	write_mem_store_byte	; It's valid, write the byte
	jsr	invalid_parameter	; It's not valid, so write error message
	bra	write_mem_end		; End routine
	
write_mem_store_byte:			; WRITE THE BYTE, AND VERIFY IT
	sta	TEMP			; Save byte to compare it later
	sta	(CUR_ADDR)		; Store it in specified memory location
	lda	(CUR_ADDR)		; Read the byte just written
	cmp	TEMP			; Compare it to the original byte
	beq	write_mem_loop_bytes	; If it matches, read next byte if there are any
	jsr	write_error		; Since it doesn't match, print write error
	bra	write_mem_end		; End routine
	
write_mem_loop_bytes:			; IF THERE ARE MORE BYTES, WRITE THEM
	jsr	inc_cur_addr		; Increment current address position for next byte
	lda	IN_BUFFER,y		; Read a character from the input buffer
	beq	write_mem_end		; Yes it is, then end routine
	cmp	#" "			; Is the it a space delimiter?
	beq	write_mem_get_byte	; It is, then get the byte
	jsr	invalid_parameter	; Print an error if parameter is invalid

write_mem_end:
	rts


;  ____   ___   _ __    ___            _ __ ___     ___   _ __ ___
; |_  /  / _ \ | '__|  / _ \          | '_ ` _ \   / _ \ | '_ ` _ \
;  / /  |  __/ | |    | (_) |         | | | | | | |  __/ | | | | | |
; /___|  \___| |_|     \___/   _____  |_| |_| |_|  \___| |_| |_| |_|
;                             |_____|
;
; Writes zeros in all memory locations and resets
; ----------------------------------------------------------------------------------------------------------------------

zero_mem:
	
; ZERO PAGE
;----------
	sei

	ldx	#<zero_clearing_zp	; Get LSB address of msg
	ldy	#>zero_clearing_zp	; Get MSB address of msg
	jsr	print_string		; Write  message
	
	ldx	#$00			; Reset pointer
zero_zeropage:
	stz	$00,x			; Zero out address $0000 + X
	inx				; Point to next memory location
	bne	zero_zeropage		; Loop until X reaches zero

; STACK PAGE
; ----------
	ldx	#<zero_clearing_stack	; Get LSB address of msg
	ldy	#>zero_clearing_stack	; Get MSB address of msg
	jsr	print_string		; Write  message

	tsx				; Load current stack pointer (not $FF)
	dex
	dex
zero_stackpage:
	stz	$0100,x			; Zero out address $0100 + X
	dex				; Point to the next memory location
	bne	zero_stackpage		; Loop until X reaches zero
	stz	$0100			; Make sure $0100 is cleared

	cli				;
	
; SYSTEM RAM
; ----------
	ldx	#<zero_clearing_ram	; Get LSB address of msg
	ldy	#>zero_clearing_ram	; Get MSB address of msg
	jsr	print_string		; Write  message

	lda	#$02			; Start at page 2
	sta	CUR_ADDR+1		; Store page 2 value at MSB current address
	stz	CUR_ADDR		; LSB is at 0
zero_sysram_loop:
	lda	#0
	sta	(CUR_ADDR)		; Clear byte pointed by current address
	lda	#>END_RAM		; Has it reached end of RAM (MSB)?
	cmp	CUR_ADDR+1		;
	bne	zero_sysram_continue	; No, then continue on to the next address
	lda	#<END_RAM		; Has it reached end of RAM (LSB)?
	cmp	CUR_ADDR		;
	beq	zero_bankram
zero_sysram_continue:
	jsr	inc_cur_addr
	bra	zero_sysram_loop

; BANK RAM
; --------
zero_bankram:
	ldx	#<zero_clearing_bank	; Get LSB address of msg
	ldy	#>zero_clearing_bank	; Get MSB address of msg
	jsr	print_string		; Write  message

	ldx	#NUMBER_OF_BANKS	; Set x to the total number of banks
zero_bankram_nextbank:
	stx	BANK_SEL		; Set bank selector
	stx	BIN
	jsr	bin2bcd8
	lda	BCD
	jsr	print_byte		; Print space

	; SET START ADDRESS
	lda	#>START_BANKRAM		; Load start address (MSB)
	sta	CUR_ADDR+1		; Save start address accessed (MSB)
	lda	#<START_BANKRAM		; Load start address (LSB)
	sta	CUR_ADDR		; Save start address accessed (LSB)
zero_bankram_loop:
	lda	#0
	sta	(CUR_ADDR)		; Clear byte pointed by current address
	; CHECK FOR END ADDRESS
	lda	#>END_BANKRAM		; Has it reached end of RAM (MSB)?
	cmp	CUR_ADDR+1		;
	bne	zero_bankram_continue	; No, then continue on to the next address
	lda	#<END_BANKRAM		; Has it reached end of RAM (LSB)?
	cmp	CUR_ADDR		;
	beq	zero_bankram_bankchange	; go to next bank
zero_bankram_continue:
	jsr	inc_cur_addr
	bra	zero_bankram_loop
zero_bankram_bankchange:
	ldy	#2			; Set backspace counter to 3
	jsr	delete_char		; Delete 2 characters from terminal
	dex
	bne	zero_bankram_nextbank	; bank 0 is tested when first iteration is done (i.e. 64 = %01000000)
	ldy	#7			; Set backspace counter to 3
	jsr	delete_char		; Delete 7 characters from terminal
	lda	#CR
	jsr	print_char

; NVRAM (Is not zeroed out, as it's used for semi-permanenet storage. Use "fill_mem" to zero it out manually)
; -----
	ldx	#<zero_clearing_nvram	; Get LSB address of msg
	ldy	#>zero_clearing_nvram	; Get MSB address of msg
	jsr	print_string		; Write  message

zero_end:
	rts

	
; -------------------------------------------------------------------------------------------------------------------------------


command_prompt:
	lda	CUR_ADDR+1		; Display current address MSB
	jsr	print_byte		;
	lda	CUR_ADDR		; Display current address LSB
	jsr	print_byte		;
	lda	#">"			; Display prompt symbol
	jsr	print_char		;
	lda	#" "			; Display a space
	jsr	print_char		;
	lda	#6			; Number of characters taken by the prompt
	sta	ERROR_PTR		; Store it as default value for error pointer
	rts

error_pointer:
	ldx	ERROR_PTR
error_pointer_loop:
	lda	#" "
	jsr	print_char
	dex
	bne	error_pointer_loop
	lda	#"^"
	jsr	print_char
	lda	#CR
	jsr	print_char
	rts

no_parameter:
	ldx	#<no_parameter_msg	; Get LSB address
	ldy	#>no_parameter_msg	; Get MSB address
	jsr	print_string		; Write message
	rts				; End subroutine
	
invalid_address:
	jsr	error_pointer		; Print error pointer underneath the command-line culprit
	ldx	#<invalid_addr_msg	; Get LSB address of msg
	ldy	#>invalid_addr_msg	; Get MSB address of msg
	jsr	print_string		; Write message
	rts

invalid_parameter:
	jsr	error_pointer		; Print error pointer underneath the command-line culprit
	ldx	#<invalid_param_msg	; Get LSB address of msg
	ldy	#>invalid_param_msg	; Get MSB address of msg
	jsr	print_string		; Write message
	rts

invalid_command:
	jsr	error_pointer		; Print error pointer underneath the command-line culprit
	ldx	#<invalid_command_msg	; Get LSB address of msg
	ldy	#>invalid_command_msg	; Get MSB address of msg
	jsr	print_string		; Write  message
	rts

syntax_error:
	jsr	error_pointer		; Print error pointer underneath the command-line culprit
	ldx	#<syntax_error_msg	; Get LSB address of msg
	ldy	#>syntax_error_msg	; Get MSB address of msg
	jsr	print_string		; Write message
	rts

write_error:
	ldx	#<write_error_msg	; Get LSB address of msg
	ldy	#>write_error_msg	; Get MSB address of msg
	jsr	print_string		; Write  message
	rts				; End subroutine

day:	.byte	1, "Sunday", 0, 2, "Monday", 0, 3, "Tuesday", 0, 4, "Wednesday", 0, 5, "Thursday", 0, 6, "Friday", 0, 7, "Saturday", 0, $FF

month:	.byte	$01, "January", 0, $02, "February", 0, $03, "March", 0, $04, "April", 0, $05, "May", 0, $06, "June", 0, $07, "July", 0
	.byte	$08, "August", 0, $09, "September", 0, $10, "October", 0, $11, "November", 0, $12, "December", 0, $FF

welcome_msg:
	.byte	"MH6502-3 @ 2MHz, BIOS v3.03", CR
	.byte	"32K ROM, 20+8K RAM, 512K BANK, 2K NVRAM", CR, 0

hexascii:
	.byte	"0123456789ABCDEF",0

invalid_addr_msg:
	.byte	"Invalid address!", CR, 0

invalid_param_msg:
	.byte	"Invalid parameter!", CR, 0

write_error_msg:
	.byte	"Write failed!", CR, 0

no_parameter_msg:
	.byte	"No parameter was specified.", CR, 0

invalid_command_msg:
	.byte	"Invalid command!",CR, 0

syntax_error_msg:
	.byte	"Syntax error!",CR, 0

date_error:
	.byte	"Invalid date format!",CR, 0

time_error:
	.byte	"Invalid time format!",CR, 0

cant_write_address:
	.byte	"Cannot write to address $", 0

zero_clearing_zp:
	.byte	"Zeroing ZP",CR,0

zero_clearing_stack:
	.byte	"Zeroing unused stack",CR,0

zero_clearing_ram:
	.byte	"Zeroing system RAM",CR,0

zero_clearing_bank:
	.byte	"Zeroing bank RAM: bank ",0

zero_clearing_nvram:
	.byte	"NVRAM not zeroed to preserve data",CR,0

mem_io_map_msg:
	.byte	CR, "MEMORY MAP:", CR
	.byte	"-----------", CR
	.byte	"  RAM:   $0000-$55FF (20K)", CR
	.byte	"  BRAM:  $5600-$75FF (512K, 8K pages)", CR
	.byte	"  NVRAM: $7800-$7FF7 (2K)", CR
	.byte	"  ROM:   $8000-$FFFF (32K)", CR
	.byte	CR, "I/O MAP:", CR
	.byte	"--------", CR
	.byte	"  ACIA1: $7700-$7003 (DTE)", CR
	.byte	"  ACIA2: $7704-$7007 (DCE)", CR
	.byte	"  ACIA3: $7708-$700B (TTL)", CR
	.byte	"  P_INT: $770E (Priority Interrupt)", CR
	.byte	"  BANK:  $770F (Bank select)", CR
	.byte	"  VIA1:  $7010-$701F (PS/2 & NES)", CR
	.byte	"  VIA2:  $7020-$702F (LCD)", CR
	.byte	"  RTC:   $7FF8-$7FFF (Clock)", CR, CR, 0

help_msg:
	.byte	CR, "HELP", CR
	.byte	"----", CR
	.byte	"<ENTER>:     Repeat last command", CR
	.byte	"$:           Change current address", CR
	.byte	"!:           Display memory & I/O map", CR
	.byte	"?:           Display help", CR
	.byte	"Assemble:    Assemble code", CR
	.byte	"Basic:       Enhanced Basic interpreter", CR
	.byte	"Clock:       Set and display time & date", CR
	.byte	"Disassemble: Disassemble code", CR
	.byte	"Fill:        Fill a region of memory", CR
	.byte	"Go:          Execute a program", CR
	.byte	"Hunt:        Hunt for a sequence", CR
	.byte	"Load:        Load program", CR
	.byte   "Memory:      Display content of memory", CR
	.byte	"Registers:   Display & modify registers", CR
	.byte	"Save:        Save program", CR
	.byte	"Test:        Test memory (Diagnostics)", CR
	.byte	"Write:       Write byte(s) to memory", CR
	.byte	"Zero:        Zero out the RAM", CR, CR, 0

help_address_msg:
	.byte	CR, "SET CURRENT ADDRESS", CR
	.byte	"-------------------", CR
	.byte	"  Set current address pointer", CR, CR
	.byte	"  > $ [AAAA]  defaults to 0000", CR, CR, 0

help_assemble_msg:
	.byte	CR, "ASSEMBLE", CR
	.byte	"--------", CR
	.byte	"  Assemble to machine language", CR, CR
	.byte	"  > A [1000] lda $12", CR, CR, 0

help_basic_msg:
	.byte	CR, "BASIC", CR
	.byte	"-----", CR
	.byte	"Enhanced BASIC, version 2.22p5", CR, CR
	.byte	"  > B", CR, CR, 0

help_clock_msg:
	.byte	CR, "CLOCK", CR
	.byte	"-----", CR
	.byte	"  Set or read date &time", CR, CR
	.byte	"  > C [YY-MM-DD HH:MM:SS]", CR, CR, 0

help_disassemble_msg:
	.byte	CR, "DISASSEMBLE", CR
	.byte	"-----------", CR
	.byte	"  Disassemble a portion of memory", CR, CR
	.byte	"  > D [AAAA]  defaults to prompt", CR, CR, 0

help_go_msg:
	.byte	CR, "GO", CR
	.byte	"--", CR
	.byte	"  Runs code at a specific address", CR, CR
	.byte	"  > G [AAAA]  defaults to prompt", CR, CR, 0

help_fill_msg:
	.byte	CR, "FILL", CR
	.byte	"----", CR
	.byte	"  Fill a region of memory with a byte", CR, CR
	.byte	"  > F SSSS EEEE HH", CR, CR, 0

help_hunt_msg:
	.byte	CR, "HUNT", CR
	.byte	"----", CR
	.byte	"  Find bytes or string in memory", CR, CR
	.byte	"  > H [SSSS] HH [HH] [HH] ... [HH]", CR
	.byte	'  > H [SSSS] "STRING"', CR, CR, 0

help_iomap_msg:
	.byte	CR, "MEMORY & I/O MAP", CR
	.byte	"----------------", CR
	.byte	"  Displays the memory map", CR, CR
	.byte	"  > !", CR, CR, 0

help_load_msg:
	.byte	CR, "LOAD", CR
	.byte	"----", CR
	.byte	"  Load code from computer via Intel Hex", CR, CR
	.byte	"  > L", CR, CR, 0

help_registers_msg:
	.byte	CR, "REGISTERS", CR
	.byte	"---------", CR
	.byte	"  Prints the CPU's status and registers", CR, CR
	.byte	"  > R", CR, CR, 0

help_memory_msg:
	.byte	CR, "MEMORY", CR
	.byte	"------", CR
	.byte	"  Displays a portion of memory", CR, CR
	.byte	"  > M [AAAA]  defaults to prompt", CR, CR, 0

help_save_msg:
	.byte	CR, "SAVE", CR
	.byte	"----", CR
	.byte	"  Save code or data to computer", CR, CR
	.byte	"  > S [SSSS]", CR, CR, 0

help_test_msg:
	.byte	CR, "TEST", CR
	.byte	"----", CR
	.byte	"  Tests all memory", CR, CR
	.byte	"  > T", CR, CR, 0

help_write_msg:
	.byte	CR, "WRITE", CR
	.byte	"-----", CR
	.byte	"  Writes a or many bytes to RAM", CR, CR
	.byte	"  > W AAAA HH [HH] [HH] ... [HH]", CR, CR, 0

help_zero_msg:
	.byte	CR, "ZERO", CR
	.byte	"----", CR
	.byte	"  Writes zeros in RAM", CR, CR
	.byte	"  > Z", CR, CR, 0

help_not_valid_msg:
	.byte	"Help command not recognized!", CR, 0
	
diag_zeropage_msg:
	.byte	"Testing ZeroPage  $0000-00FF:", 0

diag_stack_msg:
	.byte	"Testing Stack     $0100-01FF:", 0

diag_ramtest_msg:
	.byte	"Testing Sytem RAM $", 0

diag_bankramtest_msg:
	.byte	"Testing Bank RAM  $", 0

diag_nvramtest_msg:
	.byte	"Testing 2K NVRAM  $", 0

diag_ram_error_msg:
	.byte	"  Error at ", 0

diag_ram_error2_msg:
	.byte	", expected ", 0

diag_skip_test_msg:
	.byte	CR, "skipping test  ", CR, 0

starthex:
	.byte   "Send 6502 code in Intel Hex format.",CR,"Press ESC to cancel.",CR,0

transferaborted:
	.byte	"Transfer aborted by user.",CR,0

unknownrecordtype:
	.byte   CR,"Unknown record type $",0

badrecordchecksum:
	.byte   CR,"Bad record checksum!",CR,0

downloadfailed:
	.byte   CR,"Download Failed",CR,"Aborting!",CR,0

downloadsuccessful:
	.byte   CR,"Download Successful!",CR,0
	
dis_mnemonic_blk1:
	.byte	"brk ", "ora ", "??? ", "??? ", "tsb ", "ora ", "asl ", "rmb0"		; $00-$07
	.byte	"php ", "ora ", "asl ", "??? ", "tsb ", "ora ", "asl ", "bbr0"		; $08-$0F
	.byte	"bpl ", "ora ", "ora ", "??? ", "trb ", "ora ", "asl ", "rmb1"		; $10-$17
	.byte	"clc ", "ora ", "inc ", "??? ", "trb ", "ora ", "asl ", "bbr1"		; $18-$1F
	.byte	"jsr ", "and ", "??? ", "??? ", "bit ", "and ", "rol ", "rmb2"		; $20-$27
	.byte	"plp ", "and ", "rol ", "??? ", "bit ", "and ", "rol ", "bbr2"		; $28-$2F
	.byte	"bmi ", "and ", "and ", "??? ", "bit ", "and ", "rol ", "rmb3"		; $30-$37
	.byte	"sec ", "and ", "dec ", "??? ", "bit ", "and ", "rol ", "bbr3"		; $38-$3F

dis_mnemonic_blk2:	
	.byte	"rti ", "eor ", "??? ", "??? ", "??? ", "eor ", "lsr ", "rmb4"		; $40-$47
	.byte	"pha ", "eor ", "lsr ", "??? ", "jmp ", "eor ", "lsr ", "bbr4"		; $48-$4F
	.byte	"bvc ", "eor ", "eor ", "??? ", "??? ", "eor ", "lsr ", "rmb5"		; $50-$57
	.byte	"cli ", "eor ", "phy ", "??? ", "??? ", "eor ", "lsr ", "bbr5"		; $58-$5F
	.byte	"rts ", "adc ", "??? ", "??? ", "stz ", "adc ", "ror ", "rmb6"		; $60-$67
	.byte	"pla ", "adc ", "ror ", "??? ", "jmp ", "adc ", "ror ", "bbr6"		; $68-$6F
	.byte	"bvs ", "adc ", "adc ", "??? ", "stz ", "adc ", "ror ", "rmb7"		; $70-$77
	.byte	"sei ", "adc ", "ply ", "??? ", "jmp ", "adc ", "ror ", "bbr7"		; $78-$7F

dis_mnemonic_blk3:	
	.byte	"bra ", "sta ", "??? ", "??? ", "sty ", "sta ", "stx ", "smb0"		; $80-$87
	.byte	"dey ", "bit ", "txa ", "??? ", "sty ", "sta ", "stx ", "bbs0"		; $88-$8F
	.byte	"bcc ", "sta ", "sta ", "??? ", "sty ", "sta ", "stx ", "smb1"		; $90-$97
	.byte	"tya ", "sta ", "txs ", "??? ", "stz ", "sta ", "stz ", "bbs1"		; $98-$9F
	.byte	"ldy ", "lda ", "ldx ", "??? ", "ldy ", "lda ", "ldx ", "smb2"		; $A0-$A7
	.byte	"tay ", "lda ", "tax ", "??? ", "ldy ", "lda ", "ldx ", "bbs2"		; $A8-$AF
	.byte	"bcs ", "lda ", "lda ", "??? ", "ldy ", "lda ", "ldx ", "smb3"		; $B0-$B7
	.byte	"clv ", "lda ", "tsx ", "??? ", "ldy ", "lda ", "ldx ", "bbs3"		; $B8-$BF

dis_mnemonic_blk4:	
	.byte	"cpy ", "cmp ", "??? ", "??? ", "cpy ", "cmp ", "dec ", "smb4"		; $C0-$C7
	.byte	"iny ", "cmp ", "dex ", "wai ", "cpy ", "cmp ", "dec ", "bbs4"		; $C8-$CF
	.byte	"bne ", "cmp ", "cmp ", "??? ", "??? ", "cmp ", "dec ", "smb5"		; $D0-$D7
	.byte	"cld ", "cmp ", "phx ", "stp ", "??? ", "cmp ", "dec ", "bbs5"		; $D8-$DF
	.byte	"cpx ", "sbc ", "??? ", "??? ", "cpx ", "sbc ", "inc ", "smb6"		; $E0-$E7
	.byte	"inx ", "sbc ", "nop ", "??? ", "cpx ", "sbc ", "inc ", "bbs6"		; $E8-$EF
	.byte	"beq ", "sbc ", "sbc ", "??? ", "??? ", "sbc ", "inc ", "smb7"		; $F0-$F7
	.byte	"sed ", "sbc ", "plx ", "??? ", "??? ", "sbc ", "inc ", "bbs7"		; $F8-$FF
	
dis_addressing:
	.byte	IMP, IZX, 0  , 0  , ZP , ZP , ZP , ZP , IMP, IMM, IMP, 0  , ABS, ABS, ABS, ZPR
	.byte	REL, IZY, IZP, 0  , ZP , ZPX, ZPX, ZP , IMP, ABY, IMP, 0  , ABS, ABX, ABX, ZPR
	.byte	ABS, IZX, 0  , 0  , ZP , ZP , ZP , ZP , IMP, IMM, IMP, 0  , ABS, ABS, ABS, ZPR
	.byte	REL, IZY, IZP, 0  , ZPX, ZPX, ZPX, ZP , IMP, ABY, IMP, 0  , ABX, ABX, ABX, ZPR
	.byte	IMP, IZX, 0  , 0  , 0  , ZP , ZP , ZP , IMP, IMM, IMP, 0  , ABS, ABS, ABS, ZPR
	.byte	REL, IZY, IZP, 0  , 0  , ZPX, ZPX, ZP , IMP, ABY, IMP, 0  , 0  , ABX, ABX, ZPR
	.byte	IMP, IZX, 0  , 0  , ZP , ZP , ZP , ZP , IMP, IMM, IMP, 0  , IND, ABS, ABS, ZPR
	.byte	REL, IZY, IZP, 0  , ZPX, ZPX, ZPX, ZP , IMP, ABY, IMP, 0  , IAX, ABX, ABX, ZPR
	.byte	REL, IZX, 0  , 0  , ZP , ZP , ZP , ZP , IMP, IMM, IMP, 0  , ABS, ABS, ABS, ZPR
	.byte	REL, IZY, IZP, 0  , ZPX, ZPX, ZPY, ZP , IMP, ABY, IMP, 0  , ABS, ABX, ABX, ZPR
	.byte	IMM, IZX, IMM, 0  , ZP , ZP , ZP , ZP , IMP, IMM, IMP, 0  , ABS, ABS, ABS, ZPR
	.byte	REL, IZY, IZP, 0  , ZPX, ZPX, ZPY, ZP , IMP, ABY, IMP, 0  , ABX, ABX, ABY, ZPR
	.byte	IMM, IZX, 0  , 0  , ZP , ZP , ZP , ZP , IMP, IMM, IMP, IMP, ABS, ABS, ABS, ZPR
	.byte	REL, IZY, IZP, 0  , 0  , ZPX, ZPX, ZP , IMP, ABY, IMP, IMP, 0  , ABX, ABX, ZPR
	.byte	IMM, IZX, 0  , 0  , ZP , ZP , ZP , ZP , IMP, IMM, IMP, 0  , ABS, ABS, ABS, ZPR
	.byte	REL, IZY, IZP, 0  , 0  , ZPX, ZPX, ZP , IMP, ABY, IMP, 0  , 0  , ABX, ABX, ZPR


; ----------------------------------------------------------------------------------------------------------------------
; INTERRUPTS
; ----------------------------------------------------------------------------------------------------------------------

;  _   _   __  __   ___
; | \ | | |  \/  | |_ _|
; |  \| | | |\/| |  | |
; | |\  | | |  | |  | |
; |_| \_| |_|  |_| |___|

; Non-Maskable Interrupt (High priority interrupt only)
; ----------------------------------------------------------------------------------------------------------------------

nmi:
	rti

;  ___   ____     ___
; |_ _| |  _ \   / _ \
;  | |  | |_) | | | | |
;  | |  |  _ <  | |_| |
; |___| |_| \_\  \__\_\

; Iterrupt ReQuest (Regular interrupts)
; ----------------------------------------------------------------------------------------------------------------------

irq:
	pha
	phx
	phy
	
; DETERMINE WHAT IC GENERATED IRQ
; -------------------------------
irq_dispatch:
	; IS IT VIA1?
	lda	VIA1_IFR		; Check interrupt flag register to see if it's VIA1
	bmi	irq_via1		; If it is, go to VIA1 handler
	lda	VIA2_IFR		; Check interrupt flag register to see if it's VIA2
	bmi	irq_via2		; If it is, go to VIA2 handler
	jmp	irq_end

; DISPATCHING IRQ FROM VIA1
; -------------------------
irq_via1:	
	bit	#%01000000		; Was it Timer 1
	bne	irq_via1_timer1		; If it is, go to tick counter
	bit	#%00000010		; Was it CA1
	bne	irq_via1_ca1		; If it is, then go get the keyboard, mouse or nes data
	jmp	irq_end			; End ISR
	
irq_via2:
	bit	#%01000000		; Was it Timer 1
	bne	irq_via2_timer1		; If it is, go to tick counter
	jmp	irq_end			; End ISR
	

; SYSTEM TIMER 1 (Count ticks)
; --------------
irq_via1_timer1:
	; COUNT THE NUMBER OF TICKS
	bit	VIA1_T1CL		; Clear TIMER1 interrupt
	inc	TICKS
	bne	irq_end
	inc	TICKS+1
	bne	irq_end
	inc	TICKS+2
	bne	irq_end
	inc	TICKS+3
	bra	irq_end			; End ISR

; PS/2 KEYBOARD, MOUSE or NES CONTROLLERS
; ---------------------------------------
irq_via1_ca1:
	lda	VIA1_PORTA		; Load RS data from MCU
	and	#%00000111		; Keep only lower 3 bits

ivca1_keyboard:
	cmp	#0			; Is it keyboard data?
	bne	ivca1_mouse_buttons	; If not, check if it's mouse data?
	lda	VIA1_PORTB		; It is, then read ASCII keyboard key
	ldx	KB_WPTR			; Read current keyboard write pointer
	sta	KB_BUFFER, x		; Store character in keyboard buffer
	inc	KB_WPTR			; Increment write pointer for next character
	cmp	#$FF			; Has Control-Alt-Del been pressed?
	bne	irq_end			; End ISR
	jmp	setup			; "Reboot" system

ivca1_mouse_buttons:
	cmp	#1			; Is it mouse data? (xxYXxMRL)
	bne	ivca1_mouse_x		; If not, check if it's mouse mouvement X?
	lda	VIA1_PORTB		; It is, then read button and direction status
	sta	MS_DATA			; Store mouse data
	bra	irq_end			; End ISR

ivca1_mouse_x:
	cmp	#2			; Is it mouse movement X?
	bne	ivca1_mouse_y		; If not, check if it's mouse mouvement Y?
	lda	VIA1_PORTB		; It is, then read mouvement data
	sta	MS_X			; Store it
	bra	irq_end			; End ISR

ivca1_mouse_y:
	cmp	#3			; Is it mouse movement X?
	bne	ivca1_nes1		; If not, check if it's NES controller 1?
	lda	VIA1_PORTB		; It is, then read movement data
	sta	MS_Y			; Store it
	bra	irq_end			; End ISR

ivca1_nes1:
	cmp	#4			; Is it NES controller 1 buttons?
	bne	ivca1_nes2		; If not, check if it's NES controller 2?
	lda	VIA1_PORTB		; It is, then read buttons
	sta	NES_CTRL1		; Store it
	bra	irq_end			; End ISR

ivca1_nes2:
	cmp	#5			; Is it NES controller 2 buttons?
	bne	irq_end			; If not, then end ISR
	lda	VIA1_PORTB		; It is, then read buttons
	sta	NES_CTRL1		; Store it


; VIA2 TIMER 1
; --------------
irq_via2_timer1:
	bra	irq_end			; End ISR


; END IRQ
; -------
irq_end:
	
update_led:				; TOGGLE LED ON OR OFF EVERY SECOND
	lda	TICKS			; Load ticks counter
	sec				; Get ready to substract
	sbc	TOGGLE_TIME		; Substract last recorded tick time
	cmp	#20			; Has it reached 1 second? (1 = 50ms @ 2MHz, see 'via1_init' for timer 1 settings)
	bcc	update_led_exit		; No, then exit
	lda	VIA1_PORTA		; Read current state of Port A
	eor	#LIFE_LED		; Toggle bit 7 (The LED), not moddifying anything else
	sta	VIA1_PORTA		; Turn on or off LED
	lda	TICKS			; Load current ticks counter
	sta	TOGGLE_TIME		; Store it as the current time 
	
;	ldx	#0
;	ldy	#1
;	jsr	lcd_cursor_xy
;	tsx
;	txa
;	jsr	lcd_print_byte


update_led_exit:
	ply
	plx
	pla
	rti



	
	.org 	$FFFA
	
	.word	nmi			; NMI vector
	.word 	setup			; Reset vector
	.word 	irq			; IRQ vector