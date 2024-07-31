;ARMSTRONG NUMBERS IN AN ARRAY
include 'emu8086.inc'
mov si,0
mov cx,10

label:
  cmp si,10
  je exit  
  mov c,0  
  mov s,0
  mov ax,a[si]
  mov n1,ax
  inc si
  inc si 
  cmp ax,1
  je prnt
  mov q,ax
  jmp count
  
count:
  mov dx,0
  div cx
  mov q,ax
  inc c
  mov ax,q
  cmp ax,0
  jne count 
  mov ax,n1
  mov q,ax
  je arm 

arm:   
  cmp q,0
  je prt 
  mov bp,c
  mov dx,0 
  mov ax,q
  div cx
  mov q,ax
  mov r,dx
  mov ax,r
  jmp sum
  
sum:  
  dec bp 
  mov dx,0
  mul r
  cmp bp,1
  jg sum
  add s,ax
  jmp arm
  
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

a dw 1,371,54,1634,153 
c dw 00
q dw 00
r dw 00   
s dw 00   
n1 dw 00
define_print_num
define_print_num_uns
define_scan_num