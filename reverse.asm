;REVERSE OF A NUMBER
include 'emu8086.inc'

print "Enter a number: "
call scan_num
mov ax,cx 
mov bx,10  
jp reverse

reverse:
  div bx
  mov r,dx
  mov q,ax
  mov ax,sum
  mul bx
  add ax,r
  mov sum,ax
  mov dx,0
  mov ax,q
  
  cmp ax,0
  jne reverse 
  
mov ax,sum       
printn
call print_num
ret
define_scan_num 
define_print_num
define_print_num_uns

r dw 0
q dw 0
sum dw 0   
ret