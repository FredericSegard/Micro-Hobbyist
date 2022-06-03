; Asynchronous Communications Interface Adapter (ACIA) - DCE
ACIA1		=	$7710		; Base address of ACIA1
ACIA1_DATA	=	ACIA1		; Data register
ACIA1_STATUS	=	ACIA1+1		; Read: Status Register, Write: Programmed Reset
ACIA1_CMD	=	ACIA1+2		; Command Register
ACIA1_CTRL	=	ACIA1+3		; Control Register

; Asynchronous Communications Interface Adapter (ACIA) - DTE
ACIA2		=	$7714		; Base address of ACIA1
ACIA2_DATA	=	ACIA2		; Data register
ACIA2_STATUS	=	ACIA2+1		; Read: Status Register, Write: Programmed Reset
ACIA2_CMD	=	ACIA2+2		; Command Register
ACIA2_CTRL	=	ACIA2+3		; Control Register

; Versatile Interface Adapter (VIA) - PS/2 keyboard & mouse, and NES controllers. With interrupt driven switches
VIA1		=	$7700		; Base address of VIA1
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

	; INITIALIZE ACIA1 (RS-232 terminal communication to the computer)
	stz	ACIA1_STATUS		; Software reset
	lda 	#%00011111		; 1 stop bit, 8 data bits, 19200 baud
	sta 	ACIA1_CTRL
	lda 	#%00001011		; No parity, normal echo, no RTS, DTR low
	sta 	ACIA1_CMD

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
	

;         _
;   ___  | |   ___    __ _   _ __           ___    ___   _ __    ___    ___   _ __
;  / __| | |  / _ \  / _` | | '__|         / __|  / __| | '__|  / _ \  / _ \ | '_ \
; | (__  | | |  __/ | (_| | | |            \__ \ | (__  | |    |  __/ |  __/ | | | |
;  \___| |_|  \___|  \__,_| |_|     _____  |___/  \___| |_|     \___|  \___| |_| |_|
;                                  |_____|
;
; Clear terminal screen and set cursor to home position (upper left)
; ----------------------------------------------------------------------------------------------------------------------

clear_screen:
	pha

	lda	#ESC			; Control sequence introducer
	jsr	print_char		;
	lda	#"["			;
	jsr	print_char		;
	lda	#"2"			; Entire screen
	jsr	print_char		;
	lda	#"J"			; Clear screen
	jsr	print_char		;

	ldx	#1
	ldy	#1
	jsr	goto_xy			; Place cursor at X & Y position

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


;                  _
;   __ _    ___   | |_    ___           __  __  _   _
;  / _` |  / _ \  | __|  / _ \          \ \/ / | | | |
; | (_| | | (_) | | |_  | (_) |          >  <  | |_| |
;  \__, |  \___/   \__|  \___/   _____  /_/\_\  \__, |
;  |___/                        |_____|         |___/
;
; Go to a specific coordinate on terminal screen
; ----------------------------------------------------------------------------------------------------------------------
; INPUT: X = Horizontal position (column)
;        Y = Vertical position (row)
goto_xy:
	pha
	lda	#ESC			; Control sequence introducer
	jsr	print_char		;
	lda	#"["			;
	jsr	print_char		;
	sty	BIN			; Store Y coordinates in BIN
	jsr	bin2bcd8		; Convert to BCD, and returns result in BCD & BCD+1
	lda	BCD			; Get ones/tens result
	jsr	print_byte		; Print it as ASCII text
	lda	#";"			;
	jsr	print_char		;
	stx	BIN			; Store Y coordinates in BIN
	jsr	bin2bcd8		; Convert to BCD, and returns result in BCD & BCD+1
	lda	BCD			; Get ones/tens result
	jsr	print_byte		; Print it as ASCII text
	lda	#"H"			; Return to home position 1:1
	jsr	print_char		;
	pla
	rts


;              _   _   _   _
;  _ __ ___   (_) | | | | (_)  ___
; | '_ ` _ \  | | | | | | | | / __|
; | | | | | | | | | | | | | | \__ \
; |_| |_| |_| |_| |_| |_| |_| |___/
;
; Variable millisecond delay @ 2MHz (approximate)
; ----------------------------------------------------------------------------------------------------------------------
; INPUT: Number of milliseconds in A

millis:					; 6 (jsr)
	pha				; 3
	phx				; 3
millis_qty_loop:
	ldx 	#246			; 2
millis_1ms_loop:
	nop				; 2 |
	nop				; 2 |
	dex				; 2 |
	bne 	millis_1ms_loop		; 2 | (8*246) + 14 + 18 = 2000 cycles
	dec				; 2
	bne	millis_qty_loop		; 2
	plx				; 4
	pla				; 4
	rts				; 6
	
	
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


	
;                            _           _                     _                                  _ 
;  _ __    ___    __ _    __| |         | | __   ___   _   _  | |__     ___     __ _   _ __    __| |
; | '__|  / _ \  / _` |  / _` |         | |/ /  / _ \ | | | | | '_ \   / _ \   / _` | | '__|  / _` |
; | |    |  __/ | (_| | | (_| |         |   <  |  __/ | |_| | | |_) | | (_) | | (_| | | |    | (_| |
; |_|     \___|  \__,_|  \__,_|  _____  |_|\_\  \___|  \__, | |_.__/   \___/   \__,_| |_|     \__,_|
;                               |_____|                |___/                                        
;
; ----------------------------------------------------------------------------------------------------------------------
; Read a character from the PS/2 keyboard buffer
; ----------------------------------------------------------------------------------------------------------------------
; OUTPUT: Carry bit clear = no character received.
;         Carry bit set = character received in A.

read_keyboard:
	phx
	sei				; Disable interrupts to avoid conflict with variable
	lda	KB_RPTR			; Load the keyboard read pointer
	cmp	KB_WPTR			; Compare it to the keyboard write pointer
	cli				; Re-enable interrupts
	clc				; Clear carry bit to indicate no character is in buffer
	beq	read_keyboard_end	; If not the same, keys are still in the buffer
read_key_pressed:
	ldx	KB_RPTR			; Set keyboard pointer as buffer index
	lda	KB_BUFFER, x		; Read character from buffer
	inc	KB_RPTR			; Increment read pointer
	sec				; Set carry flag to indicate a character is in A
read_keyboard_end:
	plx
	rts


;                            _                 _            _                 
;  _ __    ___    __ _    __| |          ___  | |_   _ __  (_)  _ __     __ _ 
; | '__|  / _ \  / _` |  / _` |         / __| | __| | '__| | | | '_ \   / _` |
; | |    |  __/ | (_| | | (_| |         \__ \ | |_  | |    | | | | | | | (_| |
; |_|     \___|  \__,_|  \__,_|  _____  |___/  \__| |_|    |_| |_| |_|  \__, |
;                               |_____|                                 |___/ 
			       
; Read string from command prompt from input device
; ----------------------------------------------------------------------------------------------------------------------
; OUTPUT: Carry bit clear = no string recorded
;         Carry bit set = string in IN_BUFFER
; USES:   IN_BUFFER

read_string:
	ldy	#0			; Set input buffer to 0
read_string_readchar:
	jsr	read_char		; Get a character from the terminal, if available
	bcs	read_string_interpret	; If one is present, interpret keystroke
	jsr	read_keyboard		; Get a character from the PS/2 keyboard buffer, if available
	bcc	read_string_readchar	; Loop until one is present
read_string_interpret:
	cmp	#CR			; Is it the Carriage Return key?
	beq	read_string_printCR	; Yes, then end string read **
	cmp 	#BS			; Is it the Backspace key?
	beq	read_string_backspace	; Yes, then delete previous character
	bmi	read_string_readchar	; Don't accept ASCII character above or equal to 128?
	cpy	#33			; Has it reached 33 characters?
	bne	read_string_storechar	; Get next character, but if above 127 characters, auto escape
read_string_backspace:
	cpy	#0			; Is it the first character in the string?
	beq 	read_string_readchar	; No characters present, go get a new character
	dey				; Decrement text index
	lda 	#BS			; Go back one character,
	jsr 	print_char		; in terminal
	lda 	#" "			; Go overwite previous character,
	jsr 	print_char		; in terminal
	lda 	#BS			; Go back one character again,
	jsr 	print_char		; in terminal
	bra 	read_string_readchar	; Go read next character
read_string_storechar:
	jsr 	print_char		; Print character on terminal
	sta	IN_BUFFER,Y		; Add to the text buffer
	iny				; Increment buffer temporary pointer
	bra 	read_string_readchar	; No? Read another character
read_string_printCR:
	jsr	print_char		; Print carriage return
	lda	#0			; Add a null
	sta	IN_BUFFER,y		; To the input buffer string
read_string_end:
	sec				; Indicates there is data in input buffer
	rts


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
	jsr	read_keyboard		; Get a character from the PS/2 keyboard buffer, if available
	bcc	read_prompt_readchar	; Loop until one is present
read_prompt_interpret:
	cmp	#","			; Is it the repeat character? (Change to your liking)
	beq	read_prompt_last_cmd	; Exit with set carry to execute last command
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
	jsr	uppercase		; Convert it to upper case before storing it to the buffer
	sta	IN_BUFFER,y		; Add to the text buffer
	iny				; Increment buffer temporary pointer
	bra 	read_prompt_readchar	; No? Read another character
read_prompt_last_cmd:
	ldx	#<IN_BUFFER		; Get LSB address of IN_BUFFER
	ldy	#>IN_BUFFER		; Get MSB address of IN_BUFFER
	jsr	print_string
	lda	#CR
	jsr	print_char
	sec
	bra	read_prompt_end
read_prompt_printCR:
	jsr	print_char		; Print carriage return
	cpy	#0
	bne	read_prompt_normal_CR
	clc
	bra	read_prompt_end	
read_prompt_normal_CR:
	lda	#0			; Add a null
	sta	IN_BUFFER,y		; To the input buffer string
	sec				; Indicates there is data in input buffer
read_prompt_end:
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
