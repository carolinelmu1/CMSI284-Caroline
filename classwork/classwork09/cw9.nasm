            section 	.data
pow:	    1
limit: 	    1000000

            global		start 
            section 	.text
            extern		_printf
	
start:	    lea		rdi, [pow]
call		_printf
add         pow
push		rbx
sub         limit

exit: 	    pop		rbx
	        ret


