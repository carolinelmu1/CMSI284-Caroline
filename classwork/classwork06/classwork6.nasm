            JMP     start
sum:        0    
current:    0
next:       1
limit:      10
start:      LOAD    sum         ; load the value of sum
            WRITE   255         ; write that value to port 255
            ADD     current     ; add the value of current 
            ADD     next        ; add the value of next 
            STORE   sum         ; store the added values in sum 

            LOAD    next        ; load the value of next  
            STORE   current     ; store the value of next in current

            LOAD    sum         ; load the value of sum
            STORE   next        ; store the value of sum in next

            LOAD    limit       ; load the value of limit
            SUB     1           ; subtract the limit by 1 
            STORE   limit       ; store the value as limit 

            JLZ     start       ; check if limit is 0 and if not jump back to start
end:        JMP     end         ; end if limit is 0                  