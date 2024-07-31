;FIBONACCI SERIES
include 'emu8086.inc'
print 'Enter the number : '
printn
call scan_num
cmp cx,0
je quit

mov ax,0
call print_num
print ','  

mov ax,1 
mov bx,0  
label:
  cmp cx,1
  je quit
  
  
fib:       
 add ax,bx
 call print_num 
 print ',' 
 mov bp,ax
 mov ax,bx
 mov bx,bp   
 dec cx
 cmp cx,1
 jmp label
 
 
define_scan_num
define_print_num
define_print_num_uns  

quit:
  hlt 