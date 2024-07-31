;PALINDROME IN AN ARRAY 
include 'emu8086.inc'
mov si,0 
mov cx,10

label:        
  cmp si,10
  je exit
  mov ax,a[si]  
  mov n1,ax
  mov q,ax
  mov s,0  
  inc si
  inc si
  jne rev
  
rev:
  cmp q,0
  je prt
  mov dx,0
  mov ax,q
  div cx
  mov q,ax
  jmp sum
  
sum:    
  mov r,dx
  mov dx,0
  mov ax,s
  mul cx
  add ax,r
  mov s,ax
  jmp rev  

prt:
  mov ax,s
  cmp n1,ax
  je prnt
  jne label
  
prnt:
  ;mov ax,n1
  call print_num
  print '  '
  jmp label
  
exit:
  hlt 

a dw 121,34,56,23,22 
q dw 00  
r dw 00
n1 dw 00
s dw 00
define_print_num
define_print_num_uns
define_scan_num