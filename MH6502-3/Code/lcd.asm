;  _              _                 _                                   _   _                 _
; | |   ___    __| |          ___  | |   ___    __ _   _ __          __| | (_)  ___   _ __   | |   __ _   _   _
; | |  / __|  / _` |         / __| | |  / _ \  / _` | | '__|        / _` | | | / __| | '_ \  | |  / _` | | | | |
; | | | (__  | (_| |        | (__  | | |  __/ | (_| | | |          | (_| | | | \__ \ | |_) | | | | (_| | | |_| |
; |_|  \___|  \__,_|  _____  \___| |_|  \___|  \__,_| |_|    _____  \__,_| |_| |___/ | .__/  |_|  \__,_|  \__, |
;                    |_____|                                |_____|                  |_|                  |___/
;
; Clears the LCD display
; ----------------------------------------------------------------------------------------------------------------------

lcd_clear_display:
	pha

	; ERASE PHYSICAL LCD
	lda	#$01			; Clear display instruction (Write's $20 to DDRAM, and sets Address Counter to $00")
	jsr	lcd_instruction		; Send instruction to LCD

	stz	LCD_PTR			; Reset Virtual Address Counter

lcd_clear_display_end:
	pla
	rts


;  _              _                                                            _
; | |   ___    __| |          ___   _   _   _ __   ___    ___    _ __         | |__     ___    _ __ ___     ___
; | |  / __|  / _` |         / __| | | | | | '__| / __|  / _ \  | '__|        | '_ \   / _ \  | '_ ` _ \   / _ \
; | | | (__  | (_| |        | (__  | |_| | | |    \__ \ | (_) | | |           | | | | | (_) | | | | | | | |  __/
; |_|  \___|  \__,_|  _____  \___|  \__,_| |_|    |___/  \___/  |_|    _____  |_| |_|  \___/  |_| |_| |_|  \___|
;                    |_____|                                          |_____|

; Return cursor home. The contend of DDRAM are not changed
; ----------------------------------------------------------------------------------------------------------------------
lcd_cursor_home:
	pha

	lda	#$80			; Return Home: Set DDRAM Address to $00
	jsr	lcd_instruction		; Send instruction to LCD

	stz	LCD_PTR			; Reset virtual address counter to 0

	pla
	rts


;  _              _                                                                           
; | |   ___    __| |           ___   _   _   _ __   ___    ___    _ __          __  __  _   _ 
; | |  / __|  / _` |          / __| | | | | | '__| / __|  / _ \  | '__|         \ \/ / | | | |
; | | | (__  | (_| |         | (__  | |_| | | |    \__ \ | (_) | | |             >  <  | |_| |
; |_|  \___|  \__,_|  _____   \___|  \__,_| |_|    |___/  \___/  |_|     _____  /_/\_\  \__, |
;                    |_____|                                            |_____|         |___/ 
		    
; Sets cursor to location x, y
; ----------------------------------------------------------------------------------------------------------------------
; INPUT:  X and Y for the position on the screen (buffered)
; CHANGES: LCD_PTR (Virtual Address Counter)

lcd_cursor_xy:
	pha

lcd_cursor_row:
	cpy	#0
	beq	lcd_cursor_row0
	cpy	#1
	beq	lcd_cursor_row1
lcd_cursor_row0:
	ldy	#0
	bra	lcd_cursor_col
lcd_cursor_row1:
	ldy	#40
lcd_cursor_col:
	sty	LCD_PTR
	txa
	clc
	adc	LCD_PTR
	sta	LCD_PTR
	ora	#$80
	sta	LCD_DATA		; Set DDRAM address
	stz	LCD_CTRL		; DI = 0, R/W = 0
	nop
	lda	#LCD_E			; Activate enable pin
	sta	LCD_CTRL
	nop
	nop
	stz	LCD_CTRL
	
	pla
	rts


;  _              _           _           _   _
; | |   ___    __| |         (_)  _ __   (_) | |_
; | |  / __|  / _` |         | | | '_ \  | | | __|
; | | | (__  | (_| |         | | | | | | | | | |_
; |_|  \___|  \__,_|  _____  |_| |_| |_| |_|  \__|
;                    |_____|

; Initialize the LCD
; ----------------------------------------------------------------------------------------------------------------------
; The reset circuitry delay, using the DS1813, is 150ms. No need for the prescribed 40ms delay upon power up for the LCD

lcd_init:
	

	lda	#%11111000		; Set LCD control pins on port A to outputs (E, RW, DI, CS2, CS1)
	sta	VIA2_DDRA

	; EXECUTE WAKEUP SEQUENCE 4 TIMES
	; -------------------------------
	ldx	#4
init_lcd_loop:
	lda	#$38			; Function set to wake up LCD (8 bits, 2 lines)
	sta	LCD_DATA		; Push instruction on VIA data bus
	lda	#LCD_E			; Activate enable pin, implies instruction mode (0)
	sta	LCD_CTRL		;
	nop				; Wait 2 cycles so LCD has the time to grap what's on LCD_DATA bus
	stz	LCD_CTRL		; Deactivate enable pin
	lda	#5			; Wait 5ms
	jsr	millis			;
	dex				; Decrement counter
	bne	init_lcd_loop		; If loop hasn'nt been executed 4 times, then loop again.

	; FUNCTION SET
	; ------------
	lda	#$38			; Bit5: Function, Bit4: Data length (8), Bit3: Lines (2), Bit2: Font type (5x8)
	jsr	lcd_instruction

	; CLEAR DISPLAY
	; -------------
	lda	#%00000001		; Bit0: Clear Display
	jsr	lcd_instruction

	; CURSOR MOVE DIRECTION
	; ---------------------
	lda	#%00000110		; Bit2: Entry mode, Bit1: Inc/Dec AC (inc), Bit0: Shift Display (no shift)
	jsr	lcd_instruction

	; DISPLAY ON/OFF, CURSOR, BLINKING
	; --------------------------------
	lda	#%00001100		; Bit3: Display on/off, Bit2: Display on, Bit1: Cursor off, Bit 0, Blinking off
	jsr	lcd_instruction

	jsr	lcd_clear_display	; Clear the physical AND virtual (buffer) display
	rts


;  _              _           _                 _                           _     _                 
; | |   ___    __| |         (_)  _ __    ___  | |_   _ __   _   _    ___  | |_  (_)   ___    _ __  
; | |  / __|  / _` |         | | | '_ \  / __| | __| | '__| | | | |  / __| | __| | |  / _ \  | '_ \ 
; | | | (__  | (_| |         | | | | | | \__ \ | |_  | |    | |_| | | (__  | |_  | | | (_) | | | | |
; |_|  \___|  \__,_|  _____  |_| |_| |_| |___/  \__| |_|     \__,_|  \___|  \__| |_|  \___/  |_| |_|
;                    |_____|                                                                        

; Send instruction to LCD (normal operations)
; -------------------------------------------
lcd_instruction:
	pha
	jsr	lcd_wait		; Wait for LCD to be ready
	sta	LCD_DATA
	lda	#LCD_E			; Set Enable bit
	sta 	LCD_CTRL
	nop
	stz	LCD_CTRL		; Clear Enable bit
	pla
	rts


;  _              _                          _           _             _               _
; | |   ___    __| |          _ __    _ __  (_)  _ __   | |_          | |__    _   _  | |_    ___
; | |  / __|  / _` |         | '_ \  | '__| | | | '_ \  | __|         | '_ \  | | | | | __|  / _ \
; | | | (__  | (_| |         | |_) | | |    | | | | | | | |_          | |_) | | |_| | | |_  |  __/
; |_|  \___|  \__,_|  _____  | .__/  |_|    |_| |_| |_|  \__|  _____  |_.__/   \__, |  \__|  \___|
;                    |_____| |_|                              |_____|          |___/

; Prints a HEX representation of a byte on the LCD - Value in A
;-----------------------------------------------------------------------------------------------------------------------

lcd_print_byte:
	pha
	phx
	phy
	
	tax				; Store A for later use
	lsr				; Move MSB nibble to LSB position
	lsr				;
	lsr				;
	lsr				;
	tay				; Index A for first nibble
	lda	hexascii,y		; Load ascii value according to index (see print_byte)
	jsr	lcd_print_char		; Print first nibble to terminal
	txa				; Restore A
	and	#$0F			; Isolate LSB nibble
	tay				; Index A for second nibble
	lda	hexascii,y		; Load ascii value according to index
	jsr	lcd_print_char		; Print second nibble to terminal
	
	ply
	plx
	pla
	
	rts


;  _              _                          _           _                   _
; | |   ___    __| |          _ __    _ __  (_)  _ __   | |_           ___  | |__     __ _   _ __
; | |  / __|  / _` |         | '_ \  | '__| | | | '_ \  | __|         / __| | '_ \   / _` | | '__|
; | | | (__  | (_| |         | |_) | | |    | | | | | | | |_         | (__  | | | | | (_| | | |
; |_|  \___|  \__,_|  _____  | .__/  |_|    |_| |_| |_|  \__|  _____  \___| |_| |_|  \__,_| |_|
;                    |_____| |_|                              |_____|

; Write a character to physical LCD
; ----------------------------------------------------------------------------------------------------------------------
; INPUT:  Character in A

lcd_print_char:
	pha

	jsr 	lcd_wait		; Wait for LCD to be ready
	sta	LCD_DATA		; Print character
	lda	#LCD_DI			; Set DI = 1, Write = 0
	sta 	LCD_CTRL
	nop
	lda	#(LCD_DI|LCD_E)		; Set E bit and DI bit
	sta 	LCD_CTRL
	nop
	nop
	stz	LCD_CTRL		; Clear Enable bit and DI

	inc	LCD_PTR			;

	pla
	rts


;  _              _                          _           _                _           _            _     _
; | |   ___    __| |          _ __    _ __  (_)  _ __   | |_           __| |   __ _  | |_    ___  | |_  (_)  _ __ ___     ___
; | |  / __|  / _` |         | '_ \  | '__| | | | '_ \  | __|         / _` |  / _` | | __|  / _ \ | __| | | | '_ ` _ \   / _ \
; | | | (__  | (_| |         | |_) | | |    | | | | | | | |_         | (_| | | (_| | | |_  |  __/ | |_  | | | | | | | | |  __/
; |_|  \___|  \__,_|  _____  | .__/  |_|    |_| |_| |_|  \__|  _____  \__,_|  \__,_|  \__|  \___|  \__| |_| |_| |_| |_|  \___|
;                    |_____| |_|                              |_____|

; Prints date and time on the LCD
; ----------------------------------------------------------------------------------------------------------------------

lcd_print_datetime:
	pha

	lda	RTC_YEAR
	jsr	lcd_print_byte
	lda	#"-"
	jsr	lcd_print_char
	lda	RTC_MONTH
	jsr	lcd_print_byte
	lda	#"-"
	jsr	lcd_print_char
	lda	RTC_DATE
	jsr	lcd_print_byte

	lda	#" "
	jsr	lcd_print_char
	jsr	lcd_print_char

	lda	RTC_HOURS
	jsr	lcd_print_byte
	lda	#":"
	jsr	lcd_print_char
	lda	RTC_MINUTES
	jsr	lcd_print_byte

	lda	#" "
	jsr	lcd_print_char
	jsr	lcd_print_char

	pla
	rts


;  _              _                          _           _                   _            _                 
; | |   ___    __| |          _ __    _ __  (_)  _ __   | |_           ___  | |_   _ __  (_)  _ __     __ _ 
; | |  / __|  / _` |         | '_ \  | '__| | | | '_ \  | __|         / __| | __| | '__| | | | '_ \   / _` |
; | | | (__  | (_| |         | |_) | | |    | | | | | | | |_          \__ \ | |_  | |    | | | | | | | (_| |
; |_|  \___|  \__,_|  _____  | .__/  |_|    |_| |_| |_|  \__|  _____  |___/  \__| |_|    |_| |_| |_|  \__, |
;                    |_____| |_|                              |_____|                                 |___/ 
;		    
; Print a string of any length to the LCD
; ----------------------------------------------------------------------------------------------------------------------
; INPUT:    Pass address of string in X (LOW BYTE) and Y (HIGH BYTE)
; VARIABLE: Using TEMP

lcd_print_string:
	pha				; Save A
	stx	TEMP			; Store address LSB of the string to print
	sty	TEMP+1			; Store address MSB of the string to print
	ldy	#0			; Clear pointer

lcd_print_string_loop:
	lda	(TEMP),y		; Load character pointed by Y
	beq	lcd_print_string_end	; Once null character reached, end subroutine
        jsr	lcd_print_char		; Print character
        iny				; Increment pointer
        bne	lcd_print_string_loop	; If pointer didn't roll over to 0, print next character
	inc	TEMP+1			; Increment MSB to print a string longer then 256 characters
	bra	lcd_print_string_loop	; Go read more characters

lcd_print_string_end:
	pla				; Restore A
	rts				; Done


;  _              _                            _   _
; | |   ___    __| |       __      __   __ _  (_) | |_
; | |  / __|  / _` |       \ \ /\ / /  / _` | | | | __|
; | | | (__  | (_| |        \ V  V /  | (_| | | | | |_
; |_|  \___|  \__,_|  _____  \_/\_/    \__,_| |_|  \__|
;                    |_____|

; Read LCD Busy Flag
; ----------------------------------------------------------------------------------------------------------------------
; INPUT:  n/a
; OUTPUT: n/a

lcd_wait:
	pha

	lda 	#%00000000		; Change port direction to input
	sta 	VIA2_DDRB		; 

lcd_wait_busy:
	lda	#LCD_RW			; Set read pin
	sta	LCD_CTRL		; Activate read pin
	nop
	lda	#(LCD_RW|LCD_E)		; Set enable pin
	sta	LCD_CTRL		; Activate enable pin
	nop
	nop
	lda 	LCD_DATA		; Read data from LCD
	nop
	stz	LCD_CTRL		; Turn off Read and Enable bits
	and	#%10000000		; Compare A to the Busy flag
	bne	lcd_wait_busy		; LCD still busy, loop again.
	
	lda 	#%11111111		; Set Port A direction to output
	sta 	VIA2_DDRB		; 
	
	pla
	rts