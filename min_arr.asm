;MINIMUM NUMBER IN AN ARRAY
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
  mov ax,a[si]                            
  jmp m
m:    
  mov cx,a[si]
  cmp si,n 
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
  printn
  print 'The minimum number is '
  call print_num
  hlt

n dw 0
a dw n dup(0)
define_print_num
define_print_num_uns
define_scan_num