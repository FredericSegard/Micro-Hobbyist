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
	
	ldx	#0
	ldy	#1
	;jsr	lcd_cursor_xy
	tsx
	txa
	;jsr	lcd_print_byte


update_led_exit:
	ply
	plx
	pla
	rti
