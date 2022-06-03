; ----------------------------------------------------------------------------------------------------------------------
; DATA
; ----------------------------------------------------------------------------------------------------------------------

lcd_bios_msg:
	.byte	"MH6502-3, v3.03", 0

welcome_msg:
	.byte	"MH6502-3 @ 2MHz, BIOS v3.03", CR
	.byte	"32K ROM, 20+8K RAM, 512K BANK, 2K NVRAM", CR, 0

hexascii:
	.byte	"0123456789ABCDEF",0

invalid_addr_msg:
	.byte	"Invalid address!", CR, 0

invalid_byte_msg:
	.byte	"Invalid byte!", CR, 0

invalid_param_msg:
	.byte	"Invalid parameter!", CR, 0

write_error_msg:
	.byte	"Write mismatch!", CR, 0

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

diag_zeropage_msg:
	.byte	"Testing ZeroPage   $0000-00FF:", 0

diag_stack_msg:
	.byte	"Testing Stack      $0100-01FF:", 0

diag_ramtest_msg:
	.byte	"Testing System RAM $", 0

diag_bankramtest_msg:
	.byte	"Testing Bank RAM   $", 0

diag_nvramtest_msg:
	.byte	"Testing 2K NVRAM   $", 0

diag_ram_error_msg:
	.byte	"  Error at ", 0

diag_ram_error2_msg:
	.byte	", expected ", 0

diag_skip_test_msg:
	.byte	CR, "skipping test  ", CR, 0
	
find_validate_msg:
	.byte	"Searching for: ", 0
	
zero_clearing_zp:
	.byte	"Skipping zero page",CR,0

zero_clearing_stack:
	.byte	"Skipping stack page",CR,0

zero_clearing_ram:
	.byte	"Zeroing system RAM",CR,0

zero_clearing_bank:
	.byte	"Zeroing bank RAM: bank ",0

zero_clearing_nvram:
	.byte	"NVRAM not zeroed to preserve data",CR,0

day:	.byte	1, "Sunday", 0, 2, "Monday", 0, 3, "Tuesday", 0, 4, "Wednesday", 0, 5, "Thursday", 0, 6, "Friday", 0, 7, "Saturday", 0, $FF

month:	.byte	$01, "January", 0, $02, "February", 0, $03, "March", 0, $04, "April", 0, $05, "May", 0, $06, "June", 0, $07, "July", 0
	.byte	$08, "August", 0, $09, "September", 0, $10, "October", 0, $11, "November", 0, $12, "December", 0, $FF

io_map_msg:
	.byte	"MEMORY MAP:", CR
	.byte	"-----------", CR
	.byte	"  RAM:   $0000-$55FF (20K)", CR
	.byte	"  BRAM:  $5600-$75FF (512K, 8K pages)", CR
	.byte	"  NVRAM: $7800-$7FF7 (2K)", CR
	.byte	"  ROM:   $8000-$FFFF (32K)", CR
	.byte	CR, "I/O MAP:", CR
	.byte	"--------", CR
	.byte	"  ACIA1: $7700-$7003 (DCE)", CR
	.byte	"  ACIA2: $7704-$7007 (DTE)", CR
	.byte	"  ACIA3: $7708-$700B (TTL)", CR
	.byte	"  P_INT: $770E (Priority Interrupt)", CR
	.byte	"  BANK:  $770F (Bank select)", CR
	.byte	"  VIA1:  $7010-$701F (PS/2 & NES)", CR
	.byte	"  VIA2:  $7020-$702F (LCD)", CR
	.byte	"  RTC:   $7FF8-$7FFF (Clock)", CR, 0

commands:
	.byte	"$", $80
	.word	cur_address		; Set current address for commands requiring only one parameter
	.byte	"?", $80
	.word	help			; Help for various commands
	.byte	"ADDR", $80
	.word	cur_address		; Set current address for commands requiring only one parameter
	.byte	"ASM", $80
	.word	assemble		; Assemble a line of code in memory
	.byte	"BASIC", $80
	.word	basic_interpreter	; Start EhBasic interpreter
	.byte	"BREAK", $80
	.word	break			; Set or restore a break-point
	.byte	"CLOCK",$80
	.word	clock			; Print or save clock data
	.byte	"COMPARE",$80
	.word	compare			; Compare 2 blocks of memory
	.byte	"COPY",$80
	.word	copy			; Copy a block of memory to another location
	.byte	"DIAG",	$80
	.word	diagnostics		; Diagnose RAM
	.byte	"DIS",  $80
	.word	disassemble		; Disassemble memory
	.byte	"FIND", $80
	.word	find			; Find a byte or a series of bytes in memory
	.byte	"FILL", $80
	.word	fill_mem		; Fill a region of memory with a byte
	.byte	"HELP", $80
	.word	help			; Help for various commands
	.byte	"LOAD", $80
	.word	intel_hex_load		; Load a program using Intel Hex (Perhaps x-modem soon)
	.byte	"MAGIC",$80
	.word	magic			; Print or save clock data
	.byte	"MAP",  $80
	.word	io_map			; Display memory map of computer
	.byte	"MEM",	$80
	.word	memory			; Memory dump
	.byte	"PEEK", $80
	.word	peek			; Read a value at a specific memory location
	.byte	"POKE", $80
	.word	poke			; Write a value at a specific memory location
	.byte	"REG",  $80
	.word	registers		; Display register values
	.byte	"RUN",	$80
	.word	run			; Run a loaded or assembled program
	.byte	"SAVE", $80
	.word	save			; Save code or a region of memory
	.byte	"STREAM",$80
	.word	stream			; Run a loaded or assembled program
	.byte	"WRITE",$80
	.word	write_mem		; Write a series of bytes to memory
	.byte	"ZERO", $80
	.word	zero_mem		; Zero out a region of memory
	.byte	EOF			; End of commands

help_msg:     ;	"                                        "
	.byte	"HELP", CR
	.byte	"----", CR
	.byte	"ADDR/$:  Change current address", CR
	.byte	"ASM:     Assemble code", CR
	.byte	"BASIC:   Enhanced Basic interpreter", CR
	.byte	"BREAK:   Set/restore a break-point", CR
	.byte	"CLOCK:   Set and display time & date", CR
	.byte	"COMPARE: Compare two regions of memory", CR
	.byte	"COPY:    Copy a block of memory", CR
	.byte	"DIAG:    Test memory", CR
	.byte	"DIS:     Disassemble code", CR
	.byte	"FILL:    Fill a region of memory", CR
	.byte	"FIND:    Find a byte or sequence", CR
	.byte	"HELP/?:  Display help", CR
	.byte	"LOAD:    Load program", CR
	.byte	"MAGIC:   Generate a magic number in RAM", CR
	.byte   "MEM:     Display content of memory", CR
	.byte	"PEEK:    Read a byte of data from memory", CR
	.byte	"POKE:    Write a byte of data to memory", CR
	.byte	"REG:     Display & modify registers", CR
	.byte	"RUN:     Execute a program", CR
	.byte	"SAVE:    Save program", CR
	.byte	"STREAM:  Send bytes to a single address", CR
	.byte	"WRITE:   Write byte(s) to memory", CR
	.byte	"ZERO:    Zero out the RAM", CR, 0

help_address_msg:
	.byte	CR, "SET CURRENT ADDRESS", CR
	.byte	"-------------------", CR
	.byte	"  Set current address pointer", CR, CR
	.byte	"  > ADDR [AAAA]  defaults to 0000", CR, CR, 0

help_assemble_msg:
	.byte	CR, "ASSEMBLE", CR
	.byte	"--------", CR
	.byte	"  Assemble to machine language", CR, CR
	.byte	"  > ASM [1000] lda $12", CR, CR, 0

help_basic_msg:
	.byte	CR, "BASIC", CR
	.byte	"-----", CR
	.byte	"Enhanced BASIC, version 2.22p5", CR, CR
	.byte	"  > BASIC", CR, CR, 0

help_clock_msg:
	.byte	CR, "CLOCK", CR
	.byte	"-----", CR
	.byte	"  Set or read date &time", CR, CR
	.byte	"  > CLOCK [YY-MM-DD HH:MM:SS]", CR, CR, 0

help_disassemble_msg:
	.byte	CR, "DISASSEMBLE", CR
	.byte	"-----------", CR
	.byte	"  Disassemble a portion of memory", CR, CR
	.byte	"  > DIS [AAAA]  defaults to prompt", CR, CR, 0

help_go_msg:
	.byte	CR, "RUN", CR
	.byte	"--", CR
	.byte	"  Runs code at a specific address", CR, CR
	.byte	"  > RUN [AAAA]  defaults to prompt", CR, CR, 0

help_fill_msg:
	.byte	CR, "FILL", CR
	.byte	"----", CR
	.byte	"  Fill a region of memory with a byte", CR, CR
	.byte	"  > FILL SSSS EEEE HH", CR, CR, 0

help_hunt_msg:
	.byte	CR, "FIND", CR
	.byte	"----", CR
	.byte	"  Find bytes or string in memory", CR, CR
	.byte	"  > FIND [SSSS] HH [HH] [HH] ... [HH]", CR
	.byte	'  > FIND [SSSS] "STRING"', CR, CR, 0

help_iomap_msg:
	.byte	CR, "MEMORY & I/O MAP", CR
	.byte	"----------------", CR
	.byte	"  Displays the memory map", CR, CR
	.byte	"  > MAP", CR, CR, 0

help_load_msg:
	.byte	CR, "LOAD", CR
	.byte	"----", CR
	.byte	"  Load code from computer via Intel Hex", CR, CR
	.byte	"  > LOAD", CR, CR, 0

help_registers_msg:
	.byte	CR, "REGISTERS", CR
	.byte	"---------", CR
	.byte	"  Prints the CPU's status and registers", CR, CR
	.byte	"  > REG", CR, CR, 0

help_memory_msg:
	.byte	CR, "MEMORY", CR
	.byte	"------", CR
	.byte	"  Displays a portion of memory", CR, CR
	.byte	"  > MEM [AAAA]  defaults to prompt", CR, CR, 0

help_save_msg:
	.byte	CR, "SAVE", CR
	.byte	"----", CR
	.byte	"  Save code or data to computer", CR, CR
	.byte	"  > SAVE [SSSS]", CR, CR, 0

help_test_msg:
	.byte	CR, "DIAGNOSTICS", CR
	.byte	"-----------", CR
	.byte	"  Tests all memory", CR, CR
	.byte	"  > DIAG", CR, CR, 0

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