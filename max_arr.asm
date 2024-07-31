;MAXIMUM ELEMENT IN AN ARRAY
include 'emu8086.inc'
mov si,0 
mov ax,a[si]
m:   
  cmp si,6
  je exit     
  inc si
  inc si
  mov cx,a[si]
  cmp ax,cx
  jl max  
  jnl m
  
max:
  mov ax,cx
  jmp m
  
exit:
  print 'The maximum number is '
  call print_num
  hlt

a dw 250,131,12,33
define_print_num
define_print_num_uns
define_scan_num