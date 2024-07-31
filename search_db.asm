;SEARCHING OF AN ELEMENT(8BIT)
include 'emu8086.inc'
           
mov si,0   
print 'Enter a number to search : '
call scan_num
mov al,cl
mov cl,0  

label:
   cmp si,4 
   je exit1
   mov cl,a[si]
   cmp al,cl
   je exit
   inc si  
   inc ind
   jne label

exit1: 
  cmp al,cl
  je exit      
  printn
  print 'Not found'
  hlt
  
exit:      
  printn
  print 'Found at position'
  mov al,ind
  printn
  call print_num  
  hlt
   
a db 1,2,3,6  
ind db 0
define_print_num
define_print_num_uns
define_scan_num