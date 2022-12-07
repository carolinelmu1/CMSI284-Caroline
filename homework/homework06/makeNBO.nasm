            extern _makeNBO_C
            extern _printf

            global _main

            section .data
fmt:        db "Original=%ld, NBO=%ld", 10, 0    ; The printf format, "\n",'0'

            section .text

_main:
            push  rdi;               ; save rdi since we're going to mess with it as part of the C-Call.
            mov rdi,168496141       ; TestValue passed to C-Function
            call  _makeNBO_C        ; Call the C-Function with Argument (above-push)
            mov rcx,rdi             ; Copy our original testValue to another register.
            pop rdi                 ; restore rdi now that we're done with it
            push    rbp             ; set up stack frame
            mov    rdi,fmt          ; format for printf
            mov    rsi,rcx          ; first parameter for printf (original value)
            mov    rdx,rax          ; second parameter for printf (NBO transformation)
            mov    rax,0            ; no xmm registers
            call _printf            ; Call C function
            pop    rbp              ; restore stack

            push  rdi;              ; save rdi since we're going to mess with it as part of the C-Call.
            mov rdi,123456789       ; TestValue passed to C-Function
            call  _makeNBO_C        ; Call the C-Function with Argument (above-push)
            mov rcx,rdi             ; Copy our original testValue to another register.
            pop rdi                 ; restore rdi now that we're done with it
            push    rbp             ; set up stack frame
            mov    rdi,fmt          ; format for printf
            mov    rsi,rcx          ; first parameter for printf (original value)
            mov    rdx,rax          ; second parameter for printf (NBO transformation)
            mov    rax,0            ; no xmm registers
            call _printf            ; Call C function
            pop    rbp              ; restore stack

            push  rdi;              ; save rdi since we're going to mess with it as part of the C-Call.
            mov rdi,987654321       ; TestValue passed to C-Function
            call  _makeNBO_C        ; Call the C-Function with Argument (above-push)
            mov rcx,rdi             ; Copy our original testValue to another register.
            pop rdi                 ; restore rdi now that we're done with it
            push    rbp             ; set up stack frame
            mov    rdi,fmt          ; format for printf
            mov    rsi,rcx          ; first parameter for printf (original value)
            mov    rdx,rax          ; second parameter for printf (NBO transformation)
            mov    rax,0            ; no xmm registers
            call _printf            ; Call C function
            pop    rbp              ; restore stack

            push  rdi;              ; save rdi since we're going to mess with it as part of the C-Call.
            mov rdi,1234512345      ; TestValue passed to C-Function
            call  _makeNBO_C        ; Call the C-Function with Argument (above-push)
            mov rcx,rdi             ; Copy our original testValue to another register.
            pop rdi                 ; restore rdi now that we're done with it
            push    rbp             ; set up stack frame
            mov    rdi,fmt          ; format for printf
            mov    rsi,rcx          ; first parameter for printf (original value)
            mov    rdx,rax          ; second parameter for printf (NBO transformation)
            mov    rax,0            ; no xmm registers
            call _printf            ; Call C function
            pop    rbp              ; restore stack

            push  rdi;              ; save rdi since we're going to mess with it as part of the C-Call.
            mov rdi,294967290       ; TestValue passed to C-Function
            call  _makeNBO_C        ; Call the C-Function with Argument (above-push)
            mov rcx,rcx             ; Copy our original testValue to another register.
            pop rdi                 ; restore rdi now that we're done with it
            push    rbp             ; set up stack frame
            mov    rdi,fmt          ; format for printf
            mov    rsi,rdi          ; first parameter for printf (original value)
            mov    rdx,rdi          ; second parameter for printf (NBO transformation)
            mov    rax,0            ; no xmm registers
            call _printf            ; Call C function
            pop    rbp              ; restore stack

            mov    rax,0            ; normal, no error, return value
            ret                     ; return