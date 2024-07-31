;ASCENDING ORDER OF ELEMENTS IN AN ARRAY
include 'emu8086.inc'
mov si,0
mov bx,si

l1:    
  inc bx
  inc bx  
  cmp bx,10
  je l2
  mov ax,a[si]
  mov cx,a[bx]
  cmp ax,cx
  jle l1     
  mov a[si],cx
  mov a[bx],ax
  jmp l1

l2:
  inc si
  inc si
  mov bx,si
  cmp si,8
  jne l1 
  mov si,0
  je exit

exit:
  cmp si,10
  je prt
  mov ax,a[si]
  call print_num  
  print "  "
  inc si
  inc si
  jmp exit
  
prt:
  hlt


a dw 15,6,2,0,9
define_print_num
define_print_num_uns
define_scan_num