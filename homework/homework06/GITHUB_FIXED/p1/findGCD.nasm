; -----------------------------------------------------------------------------
; x= rdi
; y= rsi
; Returns GCD
;
; -----------------------------------------------------------------------------


extern	_printf,_scanf	; the C function, to be called
	global	_main

	section .bss 		; uninitialized space
        default rel 
        v1:	resq	1		; reserve a 64-bit word
        v2:	resq	1		; reserve a 64-bit word


        section .data
        fmt:    db "%ld",0; The scanf format, "\n",'0'
        fmt2:    db "GCP=%ld",10,0; The anser format, "\n",'0'
        msg1: db "Enter the 1st number: ",0
	msg2: db "Enter the 2nd number: ",0

	section .text
_main:
        sub  rsp, 8       ; align the stack to a 16B boundary before function calls
        mov rdi, msg1
        mov al, 0
        call _printf
        mov rsi, v1
        mov rdi, fmt
        mov al, 0
        call _scanf
        mov rdi, msg2
        mov al, 0
        call _printf
        mov rsi, v2
        mov rdi, fmt
        mov al, 0
        call _scanf
        add     rsp, 8

        mov     rcx, [v1]           ; set X input
        mov     rdx, [v2]           ; set Y input

        cmp     rcx, 0                  ; x-value: if our 1st value is 0, return
        je      _returnAnswer           ; return if input variable is 0 as there is no GCD
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

_returnAnswer:
       	mov	rdi,fmt2		; format for printf
	mov	rsi,rax         ; first parameter for printf
	mov	rax,0		; no xmm registers
        call    _printf		; Call C function

        pop rbx                         ; return this register
      ret

