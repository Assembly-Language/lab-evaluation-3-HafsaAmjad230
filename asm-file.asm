

INCLUDE Irvine32.inc
.data
;public asmfunc

.code
asmfunc PROC 
mov eax,0 
mov esi,offset Array     ;load the address of array to the esi pointer 
mov ecx,lengthof Array   ;load the length of the array to the ecx counter for the execution of array 
OddNumber:
movsx edx,word ptr[esi]   ;we used the movsx for the signed numbers 
test edx,1                ;Test the number with 1 t find the odd number 
jz Skip                   ;if the number is even skip the number 
add eax,edx               ;add the next odd number to the previous odd number 
Skip:
add esi,type Array       ;moving to the new index of the array 
loop OddNumber           ;execution of the loop 
    ret              
asmfunc ENDP       ;end of the function 
end