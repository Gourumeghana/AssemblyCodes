;DECIMAL TO BINARY
include 'emu8086.inc'
print 'Enter a number : '
call scan_num
mov ax,cx 
mov sp,ax
mov cx,10
mov bx,2
mov di,0
mov si,0
mov bp,0

cmp ax,0
je exit1

cmp ax,1
je exit1

div1:
   mov dx,0
   div bx
   mov sp,ax
   jp sum1

sum1:
   mov ax,s
   mov di,dx
   mov dx,0 
   mul cx
   add ax,di
   mov s,ax
   add si,1
   mov ax,sp
   cmp ax,0
   jne div1 
   mov ax,s 
   je rev

rev:
   mov dx,0
   div cx
   mov sp,ax
   jp sum2
   
sum2:
   mov ax,s2  
   mov di,dx
   mov dx,0
   mul cx
   add ax,di
   mov s2,ax 
   add bp,1
   mov ax,sp
   cmp ax,0
   jne rev
   mov ax,s2
   je exit  


exit1:                   
   printn
   print 'The binary form is '
   call print_num
   hlt
     
exit: 
   cmp si,bp
   jne add0 
   printn
   print 'The binary form is '
   call print_num
   hlt 
   
add0:
   mul cx
   add bp,1
   jmp exit 
   
s dw 00 
s2 dw 00
define_scan_num
define_print_num
define_print_num_uns
  