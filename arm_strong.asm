;ARMSTRONG OR NOT
include 'emu8086.inc'
print 'Enter a number : '
call scan_num
mov ax,cx
printn
mov bx,10
mov sp,ax  
mov bp,ax
mov cx,0

;jmp count

count:
  mov ax,sp
  div bx
  mov sp,ax
  inc cx
  mov dx,0
  cmp sp,0
  jne count
  ;je prt
  
;prt:
 ; print 'The total number of digits in the given number is '
 ; mov ax,cx
 ; call print_num   
 ; printn

mov sp,bp 
mov si,cx 
mov di,0
jmp arm

arm:
  mov ax,sp   
 ; print 'Quotient is '
 ; call print_num
 ; printn
  div bx 
  mov sp,ax 
  mov r,dx 
  mov ax,dx
 ; mov ax,dx
 ; print 'Remainder is '
 ; call print_num
 ; printn
  jmp sum
  
  
sum:  
 ; mov dx,r
  mul r
  sub si,1  
  mov dx,0
 ; print 'The value after multiplication is '
 ; call print_num
 ; printn
  cmp si,1
  jg sum
  add di,ax  
  mov ax,di
 ; call print_num
 ; printn
  mov si,cx
  mov dx,0
  cmp sp,0
  je prt2
  jne arm
  
prt2:
  ;mov ax,di 
  ;print 'The number is '
  ;call print_num
  printn
  cmp di,bp
  je exit
  print 'Not armstrong'
  printn  
  hlt
  
exit:
  print 'Armstrong'
  printn
  hlt
  
  
define_scan_num
define_print_num
define_print_num_uns

r dw 00
hlt
