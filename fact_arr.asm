;FACTORIAL OF ALL 8BIT NUMBERS IN AN ARRAY
include 'emu8086.inc' 
mov si,0

label:
  mov al,1
  mov bl,a[si]
  jmp fact
  
fact:
  mul bl
  dec bl
  cmp bl,0 
  jne fact
  mov b[si],al
  inc si
  cmp si,5
  jne label
  mov si,0
  je exit
  
exit:
  mov al,b[si]
  call print_num
  print " "
  inc si
  cmp si,5
  jne exit
  hlt


a db 1,2,3,4,5 
b db ?,?,?,?,?
define_print_num
define_print_num_uns
define_scan_num