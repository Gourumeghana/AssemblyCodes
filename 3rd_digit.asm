;EVERY 3RD DIGIT IN AN ARRAY
include 'emu8086.inc'
print 'Enter array size : '
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
l2:
  cmp si,n
  je exit
  mov bx,a[si]
  inc c  
  inc si
  inc si
  mov ax,c
  mov dx,0
  div r   
  cmp dx,0
  jne l2
  je prt
prt:
  add s,bx
  jmp l2
exit:
  mov ax,s
  printn
  call print_num
  
  hlt
r dw 3
c dw 00 
n dw 00 
s dw 00
a dw n dup(0)
define_print_num
define_print_num_uns
define_scan_num