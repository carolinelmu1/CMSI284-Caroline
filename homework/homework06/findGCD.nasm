; -----------------------------------------------------------------------------
; x= rdi
; y= rsi
; Returns GCD
;
; -----------------------------------------------------------------------------

	            global	_findGCD
	
	            section .text
_findGCD:
                mov     rax, 0                  ; Result Initialization
                mov     rcx,rdi                 ;
                cmp     rcx, 0                  ; x-value: if our 1st value is 0, return
                je      _returnAnswer           ; return if input variable is 0 as there is no GCD
                mov     rdx,rsi                 ;
                cmp     rdx, 0                  ; y-value: if our 1st value is 0, return
                je      _returnAnswer           ; return if input variable is 0 as there is no GCD

                push rbx                        ; save this register
                mov rbx, rdx
_WhileLoop:
                xor rdx,rdx			; clear out the RDX register
                mov rax,rcx			; move the y-value into rax to setup for division
                div rbx                         ; RDX will contain the remainder
                mov rcx,rbx			; Copy X to Y
                mov rbx,rdx                     ; Copy Remainder to X

                cmp rdx,0                       ; Check the remainder
                jne _WhileLoop	                ; if the remainder is non-zero, keep looking (looping)

                mov rax, rcx                    ; If we make it to here, we have a result (or 0), copy the result into rax
                pop rbx                         ; return this register

_returnAnswer:
                ret