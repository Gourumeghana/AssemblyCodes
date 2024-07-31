;PERFECT OR NOT
include 'emu8086.inc'
define_scan_num
define_print_num
define_print_num_uns

call scan_num  
mov al,cl
mov bl,1   
mov dl,0
jp label

label:  
  div bl
  cmp ah,0
  je sum  
  jne label1
   
sum:
  add dl,bl
  cmp dl,cl
    je label2  
 jne label1
  
label1:
    mov ah,0
    mov al,cl
    add bl,1    
    cmp bl,cl
    jb loop label 
 
 label3:
   print "Not perfect"    
   ret
    
 label2:
   print "perfect"    
 
 ret