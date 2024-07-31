;FACTORIAL OF A NUMBER
include 'emu8086.inc'
print 'Enter a number : '
call scan_num
mov ax,1
mov bx,cx

cmp bx,0
je exit
jne fact
 
fact:
  mul bx
  mov dx,0
  sub bx,1
  cmp bx,0
  je exit
  jne fact
     
exit:
  printn
  print 'The factorial of the number = '
  call print_num
  hlt
  
define_scan_num
define_print_num
define_print_num_uns