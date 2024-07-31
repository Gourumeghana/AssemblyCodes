;PALINDROME ELEMENTS IN AN ARRAY
include 'emu8086.inc'
mov si,0  
mov cx,10 
label:
  cmp si,10
  je exit
  mov ax,a[si]
  mov n1,ax
  mov s,0 
  inc si
  inc si
  jmp rev
  
rev:
  mov dx,0
  div cx
  mov q,ax 
  mov r,dx
  mov dx,0
  mov ax,s
  mul cx
  add ax,r
  mov s,ax
  mov ax,q 
  cmp ax,0
  je prt
  jne rev
  
prt:
  mov ax,s
  cmp ax,n1
  je prnt
  jne label
  
prnt:
  call print_num
  print "  "
  jmp label

exit:
  hlt  
  
                
a dw 1,2,121,34,25                
s dw 00
q dw 00
r dw 00
n1 dw 00
define_print_num
define_print_num_uns
define_scan_num