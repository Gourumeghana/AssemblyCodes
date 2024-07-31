;ncr
    
include 'emu8086.inc'
print 'Enter n value : '       
call scan_num
mov ax,cx
mov bx,cx 
mov bp,cx
          
printn          
print 'Enter r value : '
call scan_num
mov sp,cx 
         
cmp sp,0
je ncr

cmp bp,sp
jg fact1 
je ncr
jl exit  

ncr:
  mov ax,1
  printn
  print 'The value ='
  call print_num  
  hlt

fact1:
    sub bx,1
    mov dx,0
    mul bx 
    cmp bx,1
    je ncr1
    jne fact1  
    
ncr1:        
  printn
  print 'n!=' 
  call print_num
  mov si,ax
  mov ax,bp
  sub ax,sp
  mov bx,ax
  jmp fact2
      
fact2:
    sub bx,1
    mov dx,0
    mul bx
    cmp bx,1
    je ncr2
    jne fact2
    
ncr2:  
   printn
   print '(n-r)!=' 
   call print_num
   mov di,ax
   mov ax,sp
   mov bx,sp
   jmp fact3
   
fact3:
    sub bx,1
    mov dx,0
    mul bx
    cmp bx,1
    je value
    jne fact3 
 
value:  
   printn
   print 'r!=' 
   call print_num
   mov dx,0
   mul di
   mov di,ax
   mov dx,0
   mov ax,si
   div di
           
printn
print 'The value = '
call print_num
hlt

exit:
  printn
  print 'n is less than r'
  hlt  

define_scan_num
define_print_num
define_print_num_uns