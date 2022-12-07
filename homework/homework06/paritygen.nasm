; -----------------------------------------------------------------------------
; x= rdi
; Returns 0 or 1 parity
;
; rdi, rsi, and rdx.  We just have to return the value in rax.
;
; -----------------------------------------------------------------------------

; nasm -fmacho64 paritygen.nasm
; gcc -m64 callParitigen.c paritygen.o -o callParitigen
; ./callParitigen 

	            global	_paritygen
	
	            section .text
_paritygen:
                xor     rax, rax                  ; Result Initialization
                xor     rsi, rsi                  ; Result Initialization
                xor     rdx, rdx                  ; Result Initialization

                mov     rsi, 8			; set our shift-index/loopcounter to 8, since 1 byte=8-bits.
_WhileLoop:
                dec     rsi
                rcr     rdi,1                       ; rotate our input byte 1 bit to the right, leaving that bit set as the carry flag.
                jc      countBit
_ContinueLoop:
                cmp     rsi,0                       ; exit the loop if counter reaches 0.
                je      _generateAnswer
                jmp     _WhileLoop                  ; continue the loop.

countBit:
                inc     rax
                jmp     _ContinueLoop

_generateAnswer:
                                            ; rax has the total number of 1-bits in the byte received.
                                            ; We are configured in ODD Parity mode, so if we have an EVEN number of onces, we return a 1.
                                            ; else a 0.
                bt      rax,0               ; copy or rightmost bit to the carry-flag. If its set (1) its an odd number.
                jc      _returnZeroParity   ; an odd number of bits was detected, so return a ZeroParity response
                jmp     _returnOneParity   ; an even number of bits was detected, so return a Set/OneParity response

_returnZeroParity:
                mov     rax,0
                ret

_returnOneParity:
                mov     rax,1
                ret