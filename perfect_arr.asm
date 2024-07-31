;PERFECT ELEMENTS IN AN ARRAY
include 'emu8086.inc'
mov si,0
label:
  cmp si,10
  je end
  mov ax,a[si]
  mov n1,ax 
  add si,2  
  cmp ax,0
  jle label
  mov c,0  
  mov s,0
  mov cx,1
  jmp perfect
  
perfect:
  cmp cx,n1
  je show
  mov dx,0
  mov ax,n1
  div cx
  cmp dx,0
  je sum
  inc cx
  jmp perfect
  
sum:
  add s,cx
  inc cx
  jmp perfect
  
show:   
  mov ax,n1
  cmp ax,s
  je prt
  jne label
  
prt:
  mov ax,n1
  call print_num
  print '  '
  jmp label
  
end:
  hlt

a dw 496,7,6,0,28
c dw 00
n1 dw 00  
s dw 0
define_print_num
define_print_num_uns
define_scan_num