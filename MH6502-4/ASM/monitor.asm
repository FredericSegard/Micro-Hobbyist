;              _       _
;   __ _    __| |   __| |  _ __    ___   ___   ___
;  / _` |  / _` |  / _` | | '__|  / _ \ / __| / __|
; | (_| | | (_| | | (_| | | |    |  __/ \__ \ \__ \
;  \__,_|  \__,_|  \__,_| |_|     \___| |___/ |___/
;
; Set current address
; ----------------------------------------------------------------------------------------------------------------------------------

cur_address:
	lda	IN_BUFFER,y		; Read a character from the input buffer
	beq	cur_addr_default	; End of buffer (0)? Then get default address
	cmp	#" "			; Is it the space delimiter?
	beq	cur_addr_help		; Yes it is. Then check if its a help request, or an address
	jmp	syntax_error		; If anything else, print a syntax error, and end routine

cur_addr_help:
	jsr	skip_spaces		; Skip any leading spaces
	lda	IN_BUFFER, y		; Read a character from the input buffer
	beq	cur_addr_default	; End of buffer? Then get default address
	cmp	#"?"			; Is help requested?
	bne	cur_addr_get		; No, then get address
	printString help_address	; *MACRO*
	rts
	
cur_addr_default:			; IF NO ADDRESS PROVIDED, SET IT TO $0000
	stz	CUR_ADDR+1		; Set MSB address as 00
	stz	CUR_ADDR		; Set LSB address as 00
	rts				;

cur_addr_get:				; GET START ADDRESS
	;jsr	skip_spaces		; skip leading spaces if any
	jsr	get_word		; Get address from the input buffer
	bcs	cur_addr_get2	
	jmp	invalid_address		; Print error message and exit
cur_addr_get2:
	lda	WORD+1			; Store word as address
	sta	CUR_ADDR+1		;
	lda	WORD			;
	sta	CUR_ADDR		;
	rts


;                                         _       _        
;   __ _   ___   ___    ___   _ __ ___   | |__   | |   ___ 
;  / _` | / __| / __|  / _ \ | '_ ` _ \  | '_ \  | |  / _ \
; | (_| | \__ \ \__ \ |  __/ | | | | | | | |_) | | | |  __/
;  \__,_| |___/ |___/  \___| |_| |_| |_| |_.__/  |_|  \___|

; Assemble code to memory
; ----------------------------------------------------------------------------------------------------------------------------------

assemble:
	rts
	

;  _                             _    
; | |__    _ __    ___    __ _  | | __
; | '_ \  | '__|  / _ \  / _` | | |/ /
; | |_) | | |    |  __/ | (_| | |   < 
; |_.__/  |_|     \___|  \__,_| |_|\_\

; Set or restore break-point
; ----------------------------------------------------------------------------------------------------------------------------------
break:
	rts


;         _                  _    
;   ___  | |   ___     ___  | | __
;  / __| | |  / _ \   / __| | |/ /
; | (__  | | | (_) | | (__  |   < 
;  \___| |_|  \___/   \___| |_|\_\
;                                 

; ----------------------------------------------------------------------------------------------------------------------------------
; Reads or sets the time (RTC chip)
; T
; T YY-MM-DD D HH:MM:SS

clock:
	; CHECK FOR EOF AND " " DELIMITER
	lda	IN_BUFFER,y		; Read a character from the input buffer
	beq	read_time		; End of buffer (0)? Then get default address
	cmp	#" "			; Is it the space delimiter?
	beq	clock_help		; Yes it is. Then check if its a help request
	jmp	syntax_error		; If anything else, print a syntax error, and end routine

clock_help:
	jsr	skip_spaces		; Skip any leading spaces
	lda	IN_BUFFER, y		; Read a character from the input buffer
	beq	read_time		; End of buffer? Then read clock
	cmp	#"?"			; Is help requested?
	bne	set_time		; No, then set 
	printString help_clock		; *MACRO*
	rts
	
read_time:
	lda	#SHORT
	jsr	print_date
	lda	#" "
	jsr	print_char
	jsr	print_char
	jsr	print_char
	lda	#24			; 24 hour time format			
	jsr	print_time
	lda	#CR
	jsr	print_char
	jsr	print_char
	rts

; GET THE DATE AND TIME - DELIMITER FORMATING IS STRICT AND IN BCD
set_time:
	lda	#$80			; b7 = Write bit
	sta	RTC_CTRL		; Set the RTC control register to write mode

set_time_year:
	; GET AND STORE YEAR (0-99)
	jsr	skip_spaces
	jsr	get_byte		; Get the year
	bcs	st_yr			; If it's valid dataProceed to store value
	jmp	set_time_help		; If there's an error, then print help
st_yr:	sta	RTC_YEAR		; Store result in RTCs year register

set_time_month:
	; GET AND STORE MONTH (1-12)
	lda	IN_BUFFER,y		; Get next character
	iny
	inc	ERROR_PTR
	cmp	#"-"			; Expect a dash delimiter character
	beq	st_mo1			; If present, go fetch month
	jmp	set_time_help		; If error, then print help
st_mo1:	jsr	get_byte		; Get the BCD characters
	bcs	st_mo2			; It's 0, then proceed to store the value
	jmp	set_time_help		; It's 1, an error, then print help
st_mo2:	sta	RTC_MONTH		; Store result in RTCs month register

set_time_date:
	; GET AND STORE DATE (1-31)
	lda	IN_BUFFER,y		; Get next character
	iny
	inc	ERROR_PTR
	cmp	#"-"			; Expect a dash delimiter character
	beq	st_dt1			; If present, go fetch date
	jmp	set_time_help		; Print help
st_dt1:	jsr	get_byte		; Get the characters
	bcs	st_dt2			; It's 0, then proceed to store the value
	jmp	set_time_help		; It's 1, an error, then print help
st_dt2:	sta	RTC_DATE		; Store result in RTCs date register
	
set_time_day:
	; GET AND STORE DAY (1-7) (Sunday-Saturday)
	lda	IN_BUFFER,y		; Get next character
	iny				; Increment buffer index
	inc	ERROR_PTR
	cmp	#" "			; Expect a space delimiter character
	beq	st_day			; If present, go fetch date
	jmp	set_time_help		; If error, then print help
st_day:	jsr	get_nibble		; get a single digit
	sta	RTC_DAY			; Store result on RTCs day register

set_time_hours:
	; GET AND STORE HOUR (0-23)
	lda	IN_BUFFER,y		; Get next character
	iny
	inc	ERROR_PTR
	cmp	#" "			; Expect a space delimiter character
	beq	st_hr1			; If present, go fetch date
	jmp	set_time_help		; It's 1, an error, then print help
st_hr1:	jsr	get_byte		; Get the BCD characters
	bcs	st_hr2			; It's 0, then proceed to store the value
	jmp	set_time_help		; It's 1, an error, then print help
st_hr2:	sta	RTC_HOURS		; Store result in RTCs date register

set_time_minutes:
	; GET AND STORE MINUTE (0-59)
	lda	IN_BUFFER,y		; Get next character
	iny
	inc	ERROR_PTR
	cmp	#":"			; Expect a colon delimiter character
	beq	st_mi1			; If present, go fetch date
	jmp	set_time_help		; It's 1, an error, then print help
st_mi1:	jsr	get_byte		; Get the BCD characters
	bcs	st_mi2			; It's 0, then proceed to store the value
	jmp	set_time_help		; It's 1, an error, then print help
st_mi2:	sta	RTC_MINUTES		; Store result in RTCs date register

set_time_seconds:
	; GET AND STORE SECONDS (0-59)
	lda	IN_BUFFER,y		; Get next character
	iny
	inc	ERROR_PTR
	cmp	#":"			; Expect a colon delimiter character
	beq	st_se1			; If present, go fetch date
	jmp	set_time_help		; It's 1, an error, then print help
st_se1:	jsr	get_byte		; Get the BCD characters
	bcs	st_se2			; It's 0, then proceed to store the value
	jmp	set_time_help		; It's 1, an error, then print help
st_se2:	sta	RTC_SECONDS		; Store result in RTCs date register
	bra	set_time_end

set_time_help:
	jsr	error_pointer
	printString time_error	; *MACRO*

set_time_end:
	stz	RTC_CTRL		; Clear the RTC control register
	rts


;   ___    ___    _ __ ___    _ __     __ _   _ __    ___ 
;  / __|  / _ \  | '_ ` _ \  | '_ \   / _` | | '__|  / _ \
; | (__  | (_) | | | | | | | | |_) | | (_| | | |    |  __/
;  \___|  \___/  |_| |_| |_| | .__/   \__,_| |_|     \___|
;                            |_|                          

; ----------------------------------------------------------------------------------------------------------------------

compare:
	rts


                               
;   ___    ___    _ __    _   _ 
;  / __|  / _ \  | '_ \  | | | |
; | (__  | (_) | | |_) | | |_| |
;  \___|  \___/  | .__/   \__, |
;                |_|      |___/ 

; Copy / Move a portion of memory to another location
; ----------------------------------------------------------------------------------------------------------------------

copy:
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
	; CHECK FOR EOF AND " " DELIMITER
	lda	IN_BUFFER,y		; Read a character from the input buffer
	beq	diag_start		; End of buffer (0)? Then start diagnostics
	cmp	#" "			; Is it the space delimiter?
	beq	diag_help		; Yes it is. Then check if its a help request
	jmp	syntax_error		; If anything else, print a syntax error, and end routine

diag_help:
	jsr	skip_spaces		; Skip any leading spaces
	lda	IN_BUFFER, y		; Read a character from the input buffer
	beq	diag_start		; End of buffer? Then start diagnostics
	cmp	#"?"			; Is help requested?
	bne	diag_start		; No, then set 
	printString help_diag		; *MACRO*
	rts
	
diag_start:
	sei				; Deactivate interrupts
	stz	DIAG_TEMP+1		; Used to detect skip test
	
; ZERO-PAGE RAM TEST
; ------------------
diag_zeropage:
	; PRINT MESSAGE
	printString diag_zeropage_msg	; *MACRO*
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
	printString diag_stack_msg	; *MACRO*
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
	printString diag_ramtest_msg	; *MACRO*
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
;	bcc	diag_bankramtest
	bcc	diag_nvramtest
	jsr	diag_ok

; BANK RAM TEST
; -------------
;diag_bankramtest:			; BANK RAM TEST
;	lda	DIAG_TEMP+1
;	beq	diag_bankramtest2
;	jmp	diag_end

;diag_bankramtest2:
;	printString diag_bankramtest_msg; *MACRO*
;	lda	#>START_BANKRAM		; Load start address (MSB)
;	sta	CUR_ADDR+1		; Save start address accessed (MSB)
;	jsr	print_byte		; Print MSB of start address
;	lda	#<START_BANKRAM		; Load start address (LSB)
;	sta	CUR_ADDR		; Save start address accessed (LSB)
;	jsr	print_byte		; Print LSB of start address
;	lda	#"-"			;
;	jsr	print_char		; Print dash
;	lda	#>END_BANKRAM		; Load end address (MSB)
;	sta	DES_ADDR+1		; Save end address (MSB)
;	jsr	print_byte		; Print MSB of end address
;	lda	#<END_BANKRAM		; Load end address (LSB)
;	sta	DES_ADDR		; Save end address (LSB)
;	jsr	print_byte		; Print LSB of end address
;	lda	#":"			;
;	jsr	print_char		; Print colon
;	lda	#" "			;
;	jsr	print_char		; Print space

;	ldx	#NUMBER_OF_BANKS	; Setup bank counter to point to first bank
;diag_banktest:				;
;	lda	#>START_BANKRAM		; Reload start address (MSB)
;	sta	CUR_ADDR+1		; Save start address accessed (MSB)
;	lda	#<START_BANKRAM		; Reload start address (LSB)
;	sta	CUR_ADDR		; Save start address accessed (LSB)
;	txa				; Transfer bank counter to A
;	sta	BANK_SEL		; Change bank
;	sta	BIN
;	jsr	bin2bcd8
;	lda	BCD
;	jsr	print_byte		; Print space
;	jsr	diag_memtest		; Execute current bank RAM diagnostics
;	bcc	diag_end		; There was an error, exit
;	ldy	#2			; Set backspace counter to 2
;	jsr	delete_char		; Delete 2 characters from terminal
;	dex				; Decrement bank numbers
;	bne	diag_banktest		; If not finished, then continue testing more banks
;	ldy	#1			; Set backspace counter to 1
;	jsr	delete_char		; Delete a characters from terminal
;	jsr	diag_ok

; NVRAM TEST
; ----------
diag_nvramtest:
	lda	DIAG_TEMP+1
	bne	diag_end

	printString diag_nvramtest_msg	; *MACRO*
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
	cli				; Restore interrupt

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
	printString diag_skip_test_msg	; *MACRO*

diag_error:
	; PRINT ERROR MESAGE
	lda	#CR
	jsr	print_char		; Change line
	printString diag_ram_error_msg	; *MACRO*
	lda	CUR_ADDR+1		; Load the MSB address where the error is
	jsr	print_byte		; Print MSB
	lda	CUR_ADDR		; Load the LSB address where the error is
	jsr	print_byte		; Print LSB
	lda	#":"
	jsr	print_char		; Print colon
	lda	(CUR_ADDR)		; Get content located at address where error is
	jsr	print_byte		; Print the content
	printString diag_ram_error2_msg	; *MACRO*
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
	jmp	no_parameter		; Yes it is. Since nothing is specified, go print error
f_delim	cmp	#" "			; Is it the space delimiter?
	beq	fill_mem_start_addr	; Yes it is. Then go read an address
	jmp	syntax_error		; If anything else, print a syntax error, then end routine

fill_mem_start_addr:			; GET START ADDRESS
	jsr	skip_spaces		; skip leading spaces
	jsr	get_word		; Get word from the input buffer
	bcs	fill_mem_store_start	; If valid, then save addresses
	jmp	invalid_address		; Display invalid address message, then end routine

fill_mem_store_start:			; STORE START ADDRESS
	lda	WORD+1			; Load MSB from get_word
	sta	CUR_ADDR+1		; Store MSB to start address register
	sta	SRC_ADDR+1		; Store MSB to start address register
	lda	WORD			; Load LSB from get_word
	sta	CUR_ADDR		; Store LSB to start address register
	sta	SRC_ADDR		; Store LSB to start address register

fill_mem_is_end_addr:			; IS THERE AN END ADDRESS?
	lda	IN_BUFFER,y		; Read a character from the input buffer
	bne	pf2			; It's not the end of string
	jmp	no_parameter		; It's the end f the string, print error
pf2	cmp	#" "			; Is the it a space delimiter?
	beq	fill_mem_end_addr	; It is, then get the byte
	jmp	no_parameter		; Print an error if no delimiter was detected, then end routine

fill_mem_end_addr:			; GET END ADDRESSE
	jsr	skip_spaces		; skip leading spaces
	jsr	get_word		; Get address from the input buffer
	bcs	fill_mem_store_end	; Address is valid, so save addresses
	jmp	invalid_address		; It's not, then print error and end routine

fill_mem_store_end:			; STORE END ADDRESS
	lda	WORD+1			; Load MSB from get_address
	sta	DES_ADDR+1		; Store MSB to start address register
	lda	WORD			; Load LSB from get_address
	sta	DES_ADDR		; Store LSB to start address register

fill_mem_is_byte:			; IS THERE A BYTE COMMING UP?
	lda	IN_BUFFER,y		; Read a character from the input buffer
	cmp	#0			; Is it the end of the string?
	beq	f_nopar			; Yes it is, Since no byte has been entered, print error
	cmp	#" "			; Is the it a space delimiter?
	beq	fill_mem_byte		; It is, then get the byte
f_nopar	jmp	no_parameter		; Print an error if no delimiter was detected, then end routine

fill_mem_byte:				; GET BYTE
	jsr	skip_spaces		; skip leading spaces
	jsr	get_byte		; Get address from the input buffer
	bcs	fill_mem_memory		; Byte is valid, save byte
	jmp	invalid_byte		; It's not, then send end parsing

fill_mem_memory:
	sta	TEMP			; Save byte
	
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
	lda	(CUR_ADDR)		; Read the byte just written
	cmp	TEMP			; Compare it to the actual byte
	bne	fill_mem_failed		; It they don't match, print an error
	jsr	inc_cur_addr		; Increment last address position for next byte
	bra	fill_mem_write_byte

fill_mem_store_last:			; STORE CUR BYTE ADDRESS, AND SET CUR ADDRESS TO START ADDRESS
					; --------------------------------------------------------------
	lda	TEMP
	sta	(CUR_ADDR)		; Store it in specified memory location
	lda	(CUR_ADDR)		; Read the byte just written
	cmp	TEMP			; Compare it to the actual byte
	bne	fill_mem_failed		; It they don't match, print an error

	lda	SRC_ADDR+1		; Load MSB from get_address
	sta	CUR_ADDR+1		; Store MSB to start address register
	lda	SRC_ADDR		; Load LSB from get_address
	sta	CUR_ADDR		; Store LSB to start address register
	rts

fill_mem_failed:
	printString cant_write_address	; *MACRO*
	lda	CUR_ADDR+1
	jsr	print_byte
	lda	CUR_ADDR
	jsr	print_byte
	lda	#CR
	jsr	print_char
	rts				; End subroutine


;   __   _               _ 
;  / _| (_)  _ __     __| |
; | |_  | | | '_ \   / _` |
; |  _| | | | | | | | (_| |
; |_|   |_| |_| |_|  \__,_|
;

; Find a byte or a series of bytes (up to 8) in memory
; ---------------------------------------------------------------------------------------------------------------------------------

find:
	stz	CUR_ADDR		; Start search at address $0000
	stz	CUR_ADDR+1		;
	ldx	#0			; Set argument count to 0
	stz	NO_OF_BYTES		; Clear number of bytes
	stz	FIND_EOT		; Used to avoid trailing space error at the end of the buffer
	
	lda	IN_BUFFER,y		; Read a character from the input buffer
	bne	find_delimiter		; If not end of buffer, proceed
	jmp	no_parameter		; End of buffer, then print error and end routine
	
; READ ARGUMENTS FROM COMMAND LINE
find_delimiter:
	cmp	#" "			; Is it the space delimiter?
	beq	find_get_byte		; It is, then get a byte
	jmp	syntax_error		; Else print syntax error, and exit
	
find_get_byte:
	jsr	skip_spaces		; Remove leading spaces

	lda	FIND_EOT
	cmp	#0			; If the first byte has not been read
	beq	find_get_byte2		; Then read a byte
	lda	IN_BUFFER,y		; Read buffer to see if it's end of line
	bne	find_get_byte2
	jmp	find_end		; It it's an end of line character, end routine
	
find_get_byte2:
	inc	FIND_EOT		; Increment byte count

	jsr	get_byte		; Get byte from input buffer
	bcs	find_store_byte		; If byte is valid, save byte
	jmp	invalid_byte		; If it's not valid, print an error and exit
	
find_store_byte:
	sta	BYTE1,x			; Store byte
	inx				; Increment byte counter
	stx	NO_OF_BYTES		; Count number of arguments

find_get_next_char:
	lda	IN_BUFFER,y		; Read a character from the input buffer
	beq	find_validate		; If it's the end of the line, then compare the byte sequence
	bra	find_delimiter		; Get next byte

; PRINT DATA TO SEARCH
find_validate:
	printString find_validate_msg	; *MACRO*
	ldx	#0			; Set match index to 0

find_validate_bytes:
	lda	BYTE1,x			; Print byte x
	jsr	print_byte
	lda	#" "			; Print space
	jsr	print_char
	inx				; Increase index
	cpx	NO_OF_BYTES		; Is index it equal to number of arguments?
	beq	find_validate_CR
	bra	find_validate_bytes

find_validate_CR:
	lda	#CR			; Print carriage return
	jsr	print_char
	
; FIND MATCH
find_compare:
	ldx	#0			; Set search pointer to first byte to compare
	lda	CUR_ADDR+1
	sta	SRC_ADDR+1
	lda	CUR_ADDR
	sta	SRC_ADDR
	
find_compare2:
	lda	BYTE1,x			; Get a byte
	cmp	(CUR_ADDR)		; Compare it to memory location
	beq	find_compare_next	; If there's a match, check next byte
	jsr	inc_cur_addr		; It's no match, then increment address
	bcc	find_end_search		; If address is $FFFF
	bra	find_compare		; Restart comparison

find_compare_next:
	jsr	inc_cur_addr
	bcc	find_end_search		; If address is $FFFF
	inx
	cpx	NO_OF_BYTES
	beq	find_print
	;inx
	bra	find_compare2

find_end_search:
	cpx	NO_OF_BYTES
	beq	find_print
	bra	find_end

; PRINT MATCHE	
find_print:
	lda	SRC_ADDR+1
	jsr	print_byte
	lda	SRC_ADDR
	jsr	print_byte
	lda	#":"
	jsr	print_char
	ldx	#0

find_print2:
	lda	#" "
	jsr	print_char
	lda	BYTE1,x
	jsr	print_byte
	inx
	cpx	NO_OF_BYTES
	beq	find_print3
	;inx
	bra	find_print2
	
find_print3:
	lda	#CR
	jsr	print_char
	bra	find_compare

find_end:
	rts


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
	beq	get_nibble_error
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
; Get a character word (16-bit) from the command line, and produce a valid hex word
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
	printString help_msg		; *MACRO*
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
	printString starthex		; *MACRO*
hex_get_record:
	jsr	read_char
	bcc	hex_get_record
	cmp	#ESC			; Has ESCAPE key been pressed?
	bne	hex_get_start		; Go check for record marker
	printString transferaborted	; *MACRO*
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
	printString unknownrecordtype	; *MACRO*
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
	printString badrecordchecksum	; *MACRO*
	rts
	
	; PRINTS STATUS OF DOWNLOAD (SUCCESS OR FAILED)
hex_download_check:
	lda	DOWNLOAD_FAIL		;
	beq	hex_download_success	; Check D/L fail flag
	printString downloadfailed	; *MACRO*
	rts
hex_download_success:
	printString downloadsuccessful	; *MACRO*
	lda	#$10			; Set CUR_ADDR to $1000
	sta	CUR_ADDR+1		;
	stz	CUR_ADDR		;
	rts


;  _                                             
; (_)   ___            _ __ ___     __ _   _ __  
; | |  / _ \          | '_ ` _ \   / _` | | '_ \ 
; | | | (_) |         | | | | | | | (_| | | |_) |
; |_|  \___/   _____  |_| |_| |_|  \__,_| | .__/ 
;             |_____|                     |_|     

; I/O map display
; ----------------------------------------------------------------------------------------------------------------------------------

io_map:
	printString io_map_msg		; *MACRO*
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
	lda	#" "			; Else, print spaces
	jsr	print_char		; One for the MSB
	jsr	print_char		; Another for the LSB
	jsr	print_char		; And lastly, the separator
	bra	r_lb2			; Proceed with the byte loop
r_lb1:	lda	(CUR_ADDR)		; Load byte from referenced address
	jsr	print_byte		; Print the byte
	lda	#" "			; Separate bytes with a space
	jsr	print_char		; Print the space separator
r_lb2:	jsr	inc_cur_addr		; Increment last address by one
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


;  _ __     __ _   _ __   ___    ___
; | '_ \   / _` | | '__| / __|  / _ \
; | |_) | | (_| | | |    \__ \ |  __/
; | .__/   \__,_| |_|    |___/  \___|
; |_|

; Parse monitor command line
; ----------------------------------------------------------------------------------------------------------------------

parse:
	ldy	#$00			; Input buffer pointer
	ldx	#$00			; Command pointer
	jsr	skip_spaces		; Skip leading spaces (alters input buffer pointer y)
	sty	PARSE_IN_BUFF_POS	; Store the real position of first character in buffer
	lda	ERROR_PTR		; Load current error pointer location
	sta	PARSE_ERROR_PTR		; Save it
	lda	IN_BUFFER,y		; Load first byte of data from input buffer
	beq	parse_end		; Is it the end of the string? Yes, then end parsing.
parse_next_char:
	lda	commands,x		; Load a command character
	beq	parse_no_cmd		; If no command is recognized or valid, end parsing
	bmi	parse_is_cmd		; If it's a command code delimiter, go to command
	cmp	IN_BUFFER,y		; Compare it with input buffer 
	bne	parse_skip_cmd		; if not equal, go to next command by skipping the rest of the command letters
	iny				; Increment input buffer pointer
	inx				; Increment command pointer
	inc	ERROR_PTR		; Increment Error pointer
	bra	parse_next_char		; Grab the next character
	
parse_skip_cmd:
	; BACKUP TO ORIGINAL POSITION FOR NEXT COMMAND VERIFICATION
	ldy	PARSE_IN_BUFF_POS	; Load position of first character in buffer (Leading whitespaces were removed)
	lda	PARSE_ERROR_PTR		; Load original error pointer 
	sta	ERROR_PTR		; Store it
	
	; SKIP CURRENT COMMAND CHARACTERS UNTIL COMMAND CODE IS DETECTED
parse_skip_until_code:
	inx				; Point to next character
	lda	commands,x		; Dummy load it
	bpl	parse_skip_until_code	; If it's an alphanumeric character, get next one
	inx				; If it's a command code...
	inx				; ... bypass jump address
	inx				;
	bra	parse_next_char		; Read next command character

parse_is_cmd:
	inx
	jmp	(commands,x)
	
parse_no_cmd:
	jsr	invalid_command		; Print invalid command

parse_end:
	rts				; End of routine
	

;                        _    
;  _ __     ___    ___  | | __
; | '_ \   / _ \  / _ \ | |/ /
; | |_) | |  __/ |  __/ |   < 
; | .__/   \___|  \___| |_|\_\
; |_|                         
 
; Read a byte from a specific or current address
; POKE AAAA 
; ----------------------------------------------------------------------------------------------------------------------
; DESTROYS: A, TEMP, SRC_ADDR
; RETURNS:  CUR_ADDR, current address position

peek:					; IS THERE A PARAMETER?
	lda	IN_BUFFER,y		; Read a character from the input buffer
	bne	peek_delimeter		; If not empty, check for parameters
	bra	peek_print		; Print peeked data 
	
peek_delimeter:
	cmp	#" "			; Is the it a space delimiter?
	beq	peek_start_addr		; If it is, then get the start address
	jsr	syntax_error
	bra	peek_end		; End routine

peek_start_addr:			; GET START ADDRESS
	jsr	skip_spaces		; skip leading spaces if any
	jsr	get_word		; Get address from the input buffer
	bcs	peek_store_start	; Valid word is present, store address
	jsr	invalid_address		; Print invalid address
	bra	peek_end		; End routine

peek_store_start:			; STORE START ADDRESS
	lda	WORD			; Load LSB from get_word
	sta	CUR_ADDR		; Store it in the current address (LSB)
	lda	WORD+1			; Load MSB from get_word
	sta	CUR_ADDR+1		; Store it in the current address (MSB)

peek_print:
	lda	CUR_ADDR+1		; Print MSB of address
	jsr	print_byte
	lda	CUR_ADDR		; Print LSB of address
	jsr	print_byte
	lda	#":"			; Print colon
	jsr	print_char
	lda	(CUR_ADDR)		; Print byte
	jsr	print_byte
	lda	#CR			; Carriage return
	jsr	print_char

peek_end:
	rts


;                  _           
;  _ __     ___   | | __   ___ 
; | '_ \   / _ \  | |/ /  / _ \
; | |_) | | (_) | |   <  |  __/
; | .__/   \___/  |_|\_\  \___|
; |_|                          
;
; Writes a byte at a specific address
; POKE AAAA BB
; ----------------------------------------------------------------------------------------------------------------------
; DESTROYS: A, TEMP, SRC_ADDR
; RETURNS:  CUR_ADDR, current address position

poke:					; IS THERE A PARAMETER?
	lda	IN_BUFFER,y		; Read a character from the input buffer
	bne	poke_delimeter		; If not empty, check for parameters
	jsr	no_parameter		; If empty, print no parameters message
	bra	poke_end		; End routine
	
poke_delimeter:
	cmp	#" "			; Is the it a space delimiter?
	beq	poke_start_addr		; If it is, then get the start address
	jsr	syntax_error
	bra	poke_end		; End routine

poke_start_addr:			; GET START ADDRESS
	jsr	skip_spaces		; skip leading spaces if any
	jsr	get_word		; Get address from the input buffer
	bcs	poke_store_start	; Valid word is present, store address
	jsr	invalid_address		; Print invalid address
	bra	poke_end		; End routine

poke_store_start:			; STORE START ADDRESS
	lda	WORD			; Load LSB from get_word
	sta	CUR_ADDR		; Store it in the current address (LSB)
	lda	WORD+1			; Load MSB from get_word
	sta	CUR_ADDR+1		; Store it in the current address (MSB)

poke_get_byte:				; GET BYTE
	jsr	skip_spaces		; Skip leading spaces
	jsr	get_byte		; Get address from input buffer, result in A
	bcs	poke_store_byte		; It's valid, write the byte
	jsr	invalid_parameter	; It's not valid, so write error message
	bra	poke_end		; End routine
	
poke_store_byte:			; WRITE THE BYTE, AND VERIFY IT
	sta	TEMP			; Save byte to compare it later
	sta	(CUR_ADDR)		; Store it in specified memory location
	lda	(CUR_ADDR)		; Read the byte just written
	cmp	TEMP			; Compare it to the original byte
	beq	poke_print		; If it matches, then print address and byte
	jsr	write_error		; Since it doesn't match, print write error
	bra	poke_end		; End routine
	
poke_print:
	lda	CUR_ADDR+1		; Print MSB of address
	jsr	print_byte
	lda	CUR_ADDR		; Print LSB of address
	jsr	print_byte
	lda	#":"			; Print colon
	jsr	print_char
	lda	TEMP			; Print byte
	jsr	print_byte
	lda	#CR			; Carriage return
	jsr	print_char

poke_end:
	rts


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


;  _ __   _   _   _ __  
; | '__| | | | | | '_ \ 
; | |    | |_| | | | | |
; |_|     \__,_| |_| |_|

; Execute code at address specified, or at CUR_ADDR
; ----------------------------------------------------------------------------------------------------------------------

run:
	lda	IN_BUFFER,y		; Read a character from the input buffer
	bne	run_get_addr		; It's not the end of string, get address
	jmp	(CUR_ADDR)		; Execute code at CUR_ADDR

run_get_addr:
	cmp	#" "			; Is it the space delimiter?
	beq	run_at_addr		; Yes it is. Then go read an address
	jsr	syntax_error		; If anything else, print a syntax error
	rts				; End of routine

run_at_addr:				; GET START ADDRESS
	jsr	skip_spaces		; skip leading spaces
	jsr	get_word		; Get address from the input buffer
	bcs	run_addr			; Valid address
	jsr	invalid_address		; If there's an error in the address, print it
	bra	run_end

run_addr:
	jmp	(WORD)			; Execute code at specified address
	
run_end:
	rts
	

;  ___    __ _  __   __   ___ 
; / __|  / _` | \ \ / /  / _ \
; \__ \ | (_| |  \ V /  |  __/
; |___/  \__,_|   \_/    \___|

; Save a portion of memory to the computer
; ---------------------------------------------------------------------------------------------------------------------------------

save:
	rts


;        _                                     
;  ___  | |_   _ __    ___    __ _   _ __ ___  
; / __| | __| | '__|  / _ \  / _` | | '_ ` _ \ 
; \__ \ | |_  | |    |  __/ | (_| | | | | | | |
; |___/  \__| |_|     \___|  \__,_| |_| |_| |_|
                                              
; Send a stream of bytes to a specific address, with a 1 millisecond delay between bytes
; ---------------------------------------------------------------------------------------------------------------------------------

stream:					; IS THERE A PARAMETER?
	ldx	#0			; Set byte counter to 0
	lda	IN_BUFFER,y		; Read a character from the input buffer
	bne	stream_delimeter	; If not empty, check for parameters
	jmp	no_parameter		; If empty, print no parameters message, and end routine
	
stream_delimeter:
	cmp	#" "			; Is the it a space delimiter?
	beq	stream_start_addr	; If it is, then get the start address
	jmp	syntax_error		; Print syntax error, and end routine

stream_start_addr:			; GET START ADDRESS
	jsr	skip_spaces		; skip leading spaces if any
	jsr	get_word		; Get address from the input buffer
	bcs	stream_store_start	; Valid word is present, store address
	jmp	invalid_address		; Print invalid address, and end routine

stream_store_start:			; STORE START ADDRESS
	lda	WORD			; Load LSB from get_word
	sta	CUR_ADDR		; Store it in the current address (LSB)
	lda	WORD+1			; Load MSB from get_word
	sta	CUR_ADDR+1		; Store it in the current address (MSB)

stream_get_byte:			; GET BYTE
	jsr	skip_spaces		; Skip leading spaces
	cpx	#0			; If the first byte has not been read
	beq	stream_get_byte2	; Then read a byte
	lda	IN_BUFFER,y		; Read buffer to see if it's end of line
	beq	stream_end		; It it's an end of line character, end routine
	
stream_get_byte2:
	inx				; Increment byte count
	jsr	get_byte		; Get address from input buffer, result in A
	bcs	stream_store_byte	; It's valid, write the byte
	jmp	invalid_parameter	; It's not valid, so write error message, and end routine
	
stream_store_byte:			; WRITE THE BYTE, AND VERIFY IT
	sta	(CUR_ADDR)		; Store it in specified memory location
	lda	#1			; set 1ms delay
	jsr	millis			;
	
stream_loop_bytes:			; IF THERE ARE MORE BYTES, WRITE THEM
	lda	IN_BUFFER,y		; Read a character from the input buffer
	beq	stream_end		; Yes it is, then end routine
	cmp	#" "			; Is the it a space delimiter?
	beq	stream_get_byte		; It is, then get the byte
	jmp	invalid_parameter	; Print an error if parameter is invalid, and end routine

stream_end:
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


;                    _   _
; __      __  _ __  (_) | |_    ___           _ __ ___     ___   _ __ ___
; \ \ /\ / / | '__| | | | __|  / _ \         | '_ ` _ \   / _ \ | '_ ` _ \
;  \ V  V /  | |    | | | |_  |  __/         | | | | | | |  __/ | | | | | |
;   \_/\_/   |_|    |_|  \__|  \___|  _____  |_| |_| |_|  \___| |_| |_| |_|
;                                    |_____|
;
; Writes a byte or a series of consecutive bytes at current address
; ----------------------------------------------------------------------------------------------------------------------
; RETURNS:  CUR_ADDR, current address position

write_mem:				; IS THERE A PARAMETER?
	ldx	#0			; Number of byte counter to 0
	lda	IN_BUFFER,y		; Read a character from the input buffer
	bne	write_mem_delimeter	; If not empty, check for parameters
	jmp	no_parameter		; If empty, print no parameters message, and end routine
	
write_mem_delimeter:
	cmp	#" "			; Is the it a space delimiter?
	beq	write_mem_start_addr	; If it is, then get the start address
	jmp	syntax_error		; Print syntax error, and end routine

write_mem_start_addr:			; GET START ADDRESS
	jsr	skip_spaces		; skip leading spaces if any
	jsr	get_word		; Get address from the input buffer
	bcs	write_mem_store_start	; Valid word is present, store address
	jmp	invalid_address		; Print invalid address, and end routine

write_mem_store_start:			; STORE START ADDRESS
	lda	WORD			; Load LSB from get_word
	sta	CUR_ADDR		; Store it in the current address (LSB)
	lda	WORD+1			; Load MSB from get_word
	sta	CUR_ADDR+1		; Store it in the current address (MSB)

write_mem_get_byte:			; GET BYTE
	jsr	skip_spaces		; Skip leading spaces
	cpx	#0			; If the first byte has not been read
	beq	write_mem_get_byte2	; Then read a byte
	lda	IN_BUFFER,y		; Read buffer to see if it's end of line
	beq	write_mem_end		; It it's an end of line character, end routine
	
write_mem_get_byte2:
	inx				; Increment byte count
	jsr	get_byte		; Get address from input buffer, result in A
	bcs	write_mem_store_byte	; It's valid, write the byte
	jmp	invalid_parameter	; It's not valid, so write error message, and end routine
	
write_mem_store_byte:			; WRITE THE BYTE, AND VERIFY IT
	sta	TEMP			; Save byte to compare it later
	sta	(CUR_ADDR)		; Store it in specified memory location
	lda	(CUR_ADDR)		; Read the byte just written
	cmp	TEMP			; Compare it to the original byte
	beq	write_mem_loop_bytes	; If it matches, read next byte if there are any
	jmp	write_error		; Since it doesn't match, print write error, and end routine
	
write_mem_loop_bytes:			; IF THERE ARE MORE BYTES, WRITE THEM
	jsr	inc_cur_addr		; Increment current address position for next byte
	lda	IN_BUFFER,y		; Read a character from the input buffer
	beq	write_mem_end		; Is it the end of buffer? Yes it is, then end routine
	cmp	#" "			; Is the it a space delimiter?
	beq	write_mem_get_byte	; It is, then get the byte
	jmp	invalid_parameter	; Print an error if parameter is invalid, and end routine

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
;	sei

	printString zero_clearing_zp_msg; *MACRO*
	
;	ldx	#$00			; Reset pointer
zero_zeropage:
;	stz	$00,x			; Zero out address $0000 + X
;	inx				; Point to next memory location
;	bne	zero_zeropage		; Loop until X reaches zero

; STACK PAGE
; ----------
	printString zero_clearing_stack_msg	; *MACRO*

;	tsx				; Load current stack pointer (not $FF)
zero_stackpage:
;	stz	$0100,x			; Zero out address $0100 + X
;	dex				; Point to the next memory location
;	bne	zero_stackpage		; Loop until X reaches zero
;	stz	$0100			; Make sure $0100 is cleared

;	cli				;
	
; SYSTEM RAM
; ----------
	printString zero_clearing_ram_msg; *MACRO*

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
;	beq	zero_bankram
	beq	zero_nvram
zero_sysram_continue:
	jsr	inc_cur_addr
	bra	zero_sysram_loop

; BANK RAM
; --------
;zero_bankram:
;	printString zero_clearing_bank_msg	; *MACRO*

;	ldx	#NUMBER_OF_BANKS	; Set x to the total number of banks
;zero_bankram_nextbank:
;	stx	BANK_SEL		; Set bank selector
;	stx	BIN
;	jsr	bin2bcd8
;	lda	BCD
;	jsr	print_byte		; Print space

	; SET START ADDRESS
;	lda	#>START_BANKRAM		; Load start address (MSB)
;	sta	CUR_ADDR+1		; Save start address accessed (MSB)
;	lda	#<START_BANKRAM		; Load start address (LSB)
;	sta	CUR_ADDR		; Save start address accessed (LSB)
;zero_bankram_loop:
;	lda	#0
;	sta	(CUR_ADDR)		; Clear byte pointed by current address
	; CHECK FOR END ADDRESS
;	lda	#>END_BANKRAM		; Has it reached end of RAM (MSB)?
;	cmp	CUR_ADDR+1		;
;	bne	zero_bankram_continue	; No, then continue on to the next address
;	lda	#<END_BANKRAM		; Has it reached end of RAM (LSB)?
;	cmp	CUR_ADDR		;
;	beq	zero_bankram_bankchange	; go to next bank
;zero_bankram_continue:
;	jsr	inc_cur_addr
;	bra	zero_bankram_loop
;zero_bankram_bankchange:
;	ldy	#2			; Set backspace counter to 3
;	jsr	delete_char		; Delete 2 characters from terminal
;	dex
;	bne	zero_bankram_nextbank	; bank 0 is tested when first iteration is done (i.e. 64 = %01000000)
;	ldy	#7			; Set backspace counter to 3
;	jsr	delete_char		; Delete 7 characters from terminal
;	lda	#CR
;	jsr	print_char

; NVRAM (Is not zeroed out, as it's used for semi-permanenet storage. Use "fill_mem" to zero it out manually)
; -----
zero_nvram:
	printString zero_clearing_nvram_msg	; *MACRO*

zero_end:
	rts


; ----------------------------------------------------------------------------------------------------------------------
; COMMON MESSAGES
; ----------------------------------------------------------------------------------------------------------------------

command_prompt:
	lda	CUR_ADDR+1		; Display current address MSB
	jsr	print_byte		;
	lda	CUR_ADDR		; Display current address LSB
	jsr	print_byte		;
	lda	#">"			; Display prompt symbol
	jsr	print_char		;
	lda	#" "			; Display prompt symbol
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
	jsr	error_pointer		; Print error pointer underneath the command-line culprit
	printString no_parameter_msg	; *MACRO*
	rts				; End subroutine
	
invalid_address:
	jsr	error_pointer		; Print error pointer underneath the command-line culprit
	printString invalid_addr_msg	; *MACRO*
	rts

invalid_byte:
	jsr	error_pointer		; Print error pointer underneath the command-line culprit
	printString invalid_byte_msg	; *MACRO*
	rts

invalid_parameter:
	jsr	error_pointer		; Print error pointer underneath the command-line culprit
	printString invalid_param_msg	; *MACRO*
	rts

invalid_command:
	jsr	error_pointer		; Print error pointer underneath the command-line culprit
	printString invalid_command_msg	; *MACRO*
	rts

syntax_error:
	jsr	error_pointer		; Print error pointer underneath the command-line culprit
	printString syntax_error_msg	; *MACRO*
	rts

write_error:
	printString write_error_msg	; *MACRO*
	rts				; End subroutine

