; Check for potential overflow before accessing memory
mov ecx, some_value ; some_value should be validated
mov eax, ecx ; store the value for later check 
mov edx,0 ; use edx for division check
mov ebx,some_base_address 
cdq ; clear high bits of edx
idiv some_array_size ; assume some_array_size is a constant and known in advance
; Check if the array index is valid
cmp edx,0
jne overflow_error ;jump if not 0
mov eax, [ebx+ecx*4] ; Access memory safely
jmp end_of_code

overflow_error:
; Handle overflow error
; Example: Print error message, exit program, or use default values

end_of_code: