; -----------------------------------------------------------------------------
; x= rdi
; y= rsi
; Returns GCD
; -----------------------------------------------------------------------------
; Sorry that we're not reading the two numbers from the keyboard at port "stdin." We tried our best but we we're only able to pull them in with scanf but were
; not able access them by moving them from .bss value into rex and rdx, so we hardcoded it instead. 


            extern    _printf               ; the C function, to be called
            global    _main
            section .data

fmt:        db "GCD=%ld", 10, 0             ; The printf format, "\n",'0'
  
            section .text
_main:
            mov     rcx, 3113041662         ; set X input
            mov     rdx, 11570925           ; set Y input
            cmp     rcx, 0                  ; x-value: if our 1st value is 0, return
            je      _returnAnswer           ; return if input variable is 0 as there is no GCD
            cmp     rdx, 0                  ; y-value: if our 1st value is 0, return
            je      _returnAnswer           ; return if input variable is 0 as there is no GCD

            push rbx                        ; save this register
            mov rbx, rdx
_WhileLoop:
            xor rdx,rdx                     ; clear out the RDX register
            mov rax,rcx                     ; move the y-value into rax to setup for division
            div rbx                         ; RDX will contain the remainder
            mov rcx,rbx                     ; Copy X to Y
            mov rbx,rdx                     ; Copy Remainder to X

            cmp rdx,0                       ; Check the remainder
            jne _WhileLoop                  ; if the remainder is non-zero, keep looking (looping)

            mov rax, rcx                    ; If we make it to here, we have a result (or 0), copy the result into rax

_returnAnswer:
            mov    rdi,fmt                  ; format for printf
            mov    rsi,rax                  ; first parameter for printf
            mov    rax,0                    ; no xmm registers
            call    _printf                 ; Call C function

            pop rbx                         ; return this register
            ret