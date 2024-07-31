;GCD OF TWO NUMBERS
include 'emu8086.inc'
print 'Enter a number : '
call scan_num                                                 
mov ax,cx
printn  

print 'Enter another number : '
call scan_num
mov bx,cx
printn
mov cx,0
      
  cmp ax,bx
  jng label
  jge gcd

label:
  mov sp,ax
  mov ax,bx
  mov bx,sp
  jp gcd
  
gcd:   
  div bx
  inc cx 
  cmp dx,0    
  je prt
  jne hcf
         
hcf: 
  mov sp,ax     
  mov ax,bx
  mov bx,dx
  mov dx,0 
  jmp gcd       
             
prt:       
print 'The quotient is '
call print_num
mov ax,cx
printn  
print 'The number of iterations are '
call print_num
printn    
mov ax,bx
print 'GCD of given two numbers is ' 
call print_num

define_scan_num
define_print_num
define_print_num_uns 
hlt