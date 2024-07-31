;SEARCHING OF AN ELEMENT
include 'emu8086.inc'
           
mov si,0   
print 'Enter a number to search : '
call scan_num
mov ax,cx
mov cx,0  
mov bp,0

label:
   cmp si,8  
   je exit1
   mov cx,a[si]
   cmp ax,cx
   je exit
   inc si  
   inc si 
   inc bp
   jne label

exit1: 
  cmp ax,cx
  je exit      
  printn
  print 'Not found'
  hlt
  
exit:      
  printn
  print 'Found at position'
  mov ax,bp
  printn
  call print_num  
  hlt
   
a dw 1,2,3,6 
define_print_num
define_print_num_uns
define_scan_num