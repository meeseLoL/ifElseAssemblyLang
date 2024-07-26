       MOVS    R0, #5 ; a=5
       MOVS    R1, #10 ; b=10

       ;       1)
       CMP     R0, R1 ; compare a & b
       BGT     else1 ; if a>b, branch to else1
       ADD     R2, R0, R1 ; c=a+b
       SUB     R2, R2, #3 ; c=c-3
       B       endif1 ; skip else
else1  
       MOVS    R2, #1 ;c=1
endif1 


       ;       2)

       MOVS    R0, #5 ; a=5
       MOVS    R1, #10 ;b=10

       ;       if (a > b)
       CMP     R0, R1 ; compare a & b
       BLE     else2 ; if a<=b, branch to else2
       ADD     R2, R1, R1 ; c=b*2
       ADD     R2, R2, R0 ; c=a+b*2
       SUB     R2, R2, #5 ; c=c-5
       B       endif2 ; skip else
else2  
       ADD     R2, R0, #7 ; c=a+7
endif2 