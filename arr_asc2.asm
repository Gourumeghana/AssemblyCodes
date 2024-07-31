;ASCENDING ORDER

include 'emu8086.inc'
print 'Enter array size : '
call scan_num
mov n,cx 
dec n 
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
  jmp l2
l2:
  add bx,2
  cmp bx,n
  je l3
  mov ax,a[si]
  mov bp,a[bx]
  cmp ax,bp
  jle l2
  mov a[si],bp
  mov a[bx],ax
  jmp l2
l3:
  add si,2 
  mov bx,si
  cmp si,n
  jne l2
  mov si,0   
  printn
  jmp exit
exit:              
  cmp si,n
  je e
  mov ax,a[si]
  call print_num
  print "  "
  add si,2
  jmp exit

e:
 hlt
n dw 00
a dw ?,?,?,?,?,?,?
define_print_num
define_print_num_uns
define_scan_num