;LCM OF TWO NUMBERS 
include 'emu8086.inc'
              
print 'Enter a number : '              
call scan_num
mov ax,cx
printn
           
print 'Enter another number : '           
call scan_num
mov bx,cx 
printn

cmp ax,bx
je prt
jb label
mov cx,ax 
mov sp,ax
jg lcm

label:
  mov sp,ax
  mov ax,bx
  mov bx,sp
  mov cx,ax 
  mov sp,ax
  jmp lcm

lcm:       
  mov ax,cx
  div bx
  cmp dx,0
  je prt
  mov dx,0
  add cx,sp
  jne lcm 
  

prt:   
  mov ax,cx
  printn
  print 'The lcm of given two numbers is '
  call print_num
  hlt

define_scan_num
define_print_num
define_print_num_uns