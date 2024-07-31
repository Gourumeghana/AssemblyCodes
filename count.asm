;COUNT OF EVEN AND ODD NUMBERS
include 'emu8086.inc'
print 'Enter aray size : '
call scan_num
mov n,cx
dec n 
mov si,0   
l1:
 printn      
 call scan_num
 mov a[si],cx 
 dec n
 add si,2
 cmp n,-1
 jne l1   
 mov n,si          
 mov si,0   
mov cx,2

label:  
  mov dx,0
  mov ax,a[si] 
  cmp si,n
  je exit
  div cx
  cmp dx,0
  je even 
  add o,1
  inc si
  inc si
  jmp label
  
  
even:
  add e,1 
  inc si 
  inc si
  jmp label
  
exit:
  mov ax,e
  printn
  print 'The no.of even numbers are '
  call print_num
  
  mov ax,o
  printn
  print 'The no.of odd numbers are '
  call print_num
  hlt

                 
o dw 0
e dw 0 
n dw 00                
a dw n dup(0)
define_print_num
define_print_num_uns
define_scan_num