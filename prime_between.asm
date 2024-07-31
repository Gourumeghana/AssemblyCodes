;PRIME NUMBERS B/W 2 NO.'S
include 'emu8086.inc'

print 'Enter a number : ' 
call scan_num
mov ax,cx  
mov sp,ax          
printn
print 'Enter another number : '   
call scan_num
mov bx,cx
;add bx,1
printn             
             
cmp ax,bx
je exit1
jg exit2

label:
  mov c,0
  mov cx,1 
  mov ax,sp
  mov bp,sp
  inc sp
  cmp ax,bx
  je exit1 
  jne prime

prime:
  cmp cx,sp
  je prt
  mov dx,0
  mov ax,bp
  div cx
  cmp dx,0
  je sum
  inc cx
  jmp prime

sum:
  add c,1
  inc cx
  jmp prime
  
prt:
  cmp c,2
  je prnt
  jne label
  
prnt:
  mov ax,bp     
  call print_num
  print "   "  
  jmp label

exit1:
   printn
   hlt
exit2:
   printn
   print '1st number is larger than 2nd number'
   hlt

c dw 00   
define_print_num
define_print_num_uns
define_scan_num