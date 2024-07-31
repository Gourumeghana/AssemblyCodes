;PRIME OR NOT
include 'emu8086.inc'
print 'Enter a number : '
call scan_num
mov ax,cx 
mov sp,ax 
mov cx,0  
mov bx,0

cmp ax,0
je exit1

cmp ax,1
je exit1

prime:
   mov dx,0 
   mov ax,sp 
   add bx,1
   div bx  
   cmp dx,0
   je comp  
   jne prime
  
comp:
  add cx,1
  cmp bx,sp
  je prt
  jne prime
  
prt:
  cmp cx,2
  je exit
  printn
  print 'The given number is not a prime number'
  hlt
  
exit:
  printn
  print 'The given number is a prime number'
  hlt
    
exit1:
  printn
  print 'Given number is not a prime number'
  hlt
  

define_scan_num
define_print_num
define_print_num_uns