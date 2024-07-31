;factorial of all 16bit numbers in an array
include 'emu8086.inc'
mov si,0 

label:
  mov ax,1
  mov bx,a[si]
  jmp fact
  
fact:
  mul bx
  dec bx
  cmp bx,0
  jne fact
  mov b[si],ax
  inc si
  inc si
  cmp si,10
  jne label
  mov si,0
  je prt
  
prt:
  mov ax,b[si]
  call print_num
  print " "
  inc si
  inc si
  cmp si,10
  jne prt
  hlt

a dw 1,2,3,4,5
b dw ?,?,?,?,?
define_print_num
define_print_num_uns
define_scan_num