         ;ARMSTRONG NUMBERS IN AN ARRAY
include 'emu8086.inc'  
print 'Enter array size : '
call scan_num
mov n,cx 
dec n
mov x,10 
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
  mov bx,si 
  printn
  jmp label

label:
  cmp si,n
  je exit  
  mov c,0  
  mov s,0
  mov ax,a[si]
  mov n1,ax
  add si,2
  cmp ax,1
  je prnt
  mov q,ax
  jmp count
  
count:
  mov dx,0
  div x
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
  div x
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

n dw 00 
a dw n dup(0) 
c dw 00
q dw 00
r dw 00   
s dw 00 
x dw 00 
n1 dw 00
define_print_num
define_print_num_uns
define_scan_num