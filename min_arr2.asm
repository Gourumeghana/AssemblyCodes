;MINIMUM NUMBER IN AN ARRAY
include 'emu8086.inc'
mov si,0 
mov ax,a[si]
m:    
  mov cx,a[si]
  cmp si,8 
  je exit
  inc si
  inc si
  cmp ax,cx
  jg min 
  jng m
  
min:
  mov ax,cx
  jmp m
  
exit:
  print 'The minimum number is '
  call print_num
  hlt

a dw -122,23,13,-122
define_print_num
define_print_num_uns
define_scan_num