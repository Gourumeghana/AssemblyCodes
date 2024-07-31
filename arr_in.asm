include 'emu8086.inc'
print 'Enter array size : '
call scan_num
mov n,cx
mov si,0
l1:    
  printn
  call scan_num
  mov a[si],cx
  dec n
  inc si
  inc si 
  mov cx,si
  cmp n,0
  jne l1
  mov si,0 
  printn
  jmp exit

exit:
  cmp si,cx
  je prt
  mov ax,a[si]
  call print_num
  print "  "
  inc si
  inc si
  jmp exit 

prt:
  hlt


n dw 00
a dw dup(?,6)
define_print_num
define_print_num_uns
define_scan_num