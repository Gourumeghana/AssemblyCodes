;PALINDROME OR NOT
include 'emu8086.inc'

print "Enter a number: "
call scan_num
mov ax,cx 
mov bp,cx
mov bx,10  
jmp reverse

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
cmp ax,bp
je prt

 print "Not palindrome"
 printn
 ret
prt:
  print "Palindrome"
  printn 
  ret
define_scan_num

r dw 0
q dw 0
sum dw 0   
ret