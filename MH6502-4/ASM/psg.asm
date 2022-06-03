; PSG declarations
L_PSG_ADDRESS	=	$7723		; Writing to this address will latch the address of the register
L_PSG_WRITE	=	$7722		; Writing to this address will write to the addressed register
L_PSG_READ	=	$7723		; Reading to this address will read the addressed register

R_PSG_ADDRESS	=	$7725		; Writing to this address will latch the address of the register
R_PSG_WRITE	=	$7724		; Writing to this address will write to the addressed register
R_PSG_READ	=	$7725		; Reading to this address will read the addressed register

; PSG REGISTER ARRAY
TONE_A_fine	=	@0		; 8-bit fine tune A
TONE_A_coarse	=	@1		; 4-bit coarse tune A
TONE_B_fine	=	@2		; 8-bit fine tune B
TONE_B_coarse	=	@3		; 4-bit coarse tune B
TONE_C_fine	=	@4		; 8-bit fine tune C
TONE_C_coarse	=	@5		; 4-bit coarse tune C
NOISE		=	@6		; 5-bit control
ENABLE		=	@7		; IOB, IOA, /NoiseC, /NoiseB, /NoiseC, /ToneC, /ToneB, /ToneA
AMPL_A		=	@10		; M, L3, L2, L1, L0
AMPL_B		=	@11		; M, L3, L2, L1, L0
AMPL_C		=	@12		; M, L3, L2, L1, L0
ENV_fine	=	@13		; 8-bit fine tune enveloppe
ENV_coarse	=	@14		; 8-bit coarse tune enveloppe
ENV_SHAPE_CYCLE	=	@15		; CONT, ATT, ALT, HOLD
IO_PORTA	=	@16		; 8-bit parallel I/O port A
IO_PORTB	=	@17		; 8-bit parallel I/O port B
EOD		=	$FF		; End of data

psg_init:
	
	; INITIALIZE REGISTERS
	
	lda	#ENABLE				; Mixer Control - I/O Enable (R7 octal)
	sta	R_PSG_ADDRESS
	sta	L_PSG_ADDRESS
	lda	#$38				; Disable noise and enable tone on all channels
	sta	R_PSG_WRITE
	sta	L_PSG_WRITE
	
	lda	#AMPL_A				; Amplitude Control (R10 octal)
	sta	R_PSG_ADDRESS
	sta	L_PSG_ADDRESS
	lda	#$07				; xxx1000 - Amplitude "mode"
	sta	R_PSG_WRITE
	sta	L_PSG_WRITE
	
	lda	#AMPL_B				; Amplitude Control (R11 octal)
	sta	R_PSG_ADDRESS
	sta	L_PSG_ADDRESS
	lda	#$07				; xxx1000 - Amplitude "mode"
	sta	R_PSG_WRITE
	sta	L_PSG_WRITE
	
	lda	#AMPL_C				; Amplitude Control (R12 octal)
	sta	R_PSG_ADDRESS
	sta	L_PSG_ADDRESS
	lda	#$07				; xxx1000 - Amplitude "mode"
	sta	R_PSG_WRITE
	sta	L_PSG_WRITE


	; TEST TONES
	lda	#TONE_A_fine			; Tone Generator Control
	sta	L_PSG_ADDRESS
	sta	R_PSG_ADDRESS
	lda	#$77				; Tone Period A, fine tune
	sta	L_PSG_WRITE
	lda	#$AF
	sta	R_PSG_WRITE

	lda	#TONE_A_coarse			; Tone Generator Control
	sta	L_PSG_ADDRESS
	sta	R_PSG_ADDRESS
	lda	#$0				; Tone Period A, Coarse tune
	sta	L_PSG_WRITE
	sta	R_PSG_WRITE
	
	lda	#200
	jsr	millis
	
	lda	#TONE_B_fine			; Tone Generator Control
	sta	L_PSG_ADDRESS
	sta	R_PSG_ADDRESS
	lda	#$6A				; Tone Period B, fine tune
	sta	L_PSG_WRITE
	lda	#$9F
	sta	R_PSG_WRITE
	
	lda	#TONE_B_coarse			; Tone Generator Control
	sta	L_PSG_ADDRESS
	sta	R_PSG_ADDRESS
	lda	#0				; Tone Period B, Coarse tune
	sta	L_PSG_WRITE
	sta	R_PSG_WRITE
	
	lda	#200
	jsr	millis

	lda	#TONE_C_fine			; Tone Generator Control
	sta	L_PSG_ADDRESS
	sta	R_PSG_ADDRESS
	lda	#$5F				; Tone Period C, fine tune
	sta	L_PSG_WRITE
	lda	#$8F
	sta	R_PSG_WRITE
	
	lda	#TONE_C_coarse			; Tone Generator Control
	sta	L_PSG_ADDRESS
	sta	R_PSG_ADDRESS
	lda	#$0				; Tone Period C, Coarse tune
	sta	L_PSG_WRITE
	sta	R_PSG_WRITE

	lda	#200
	jsr	millis

	lda	#AMPL_A				; Amplitude Control
	sta	L_PSG_ADDRESS
	sta	R_PSG_ADDRESS
	lda	#$00				; Silence the channel
	sta	L_PSG_WRITE
	sta	R_PSG_WRITE

	lda	#AMPL_B				; Amplitude Control
	sta	L_PSG_ADDRESS
	sta	R_PSG_ADDRESS
	lda	#$00				; Silence the channel
	sta	L_PSG_WRITE
	sta	R_PSG_WRITE

	lda	#AMPL_C				; Amplitude Control
	sta	L_PSG_ADDRESS
	sta	R_PSG_ADDRESS
	lda	#$00				;Silence the channel
	sta	L_PSG_WRITE
	sta	R_PSG_WRITE

	rts
