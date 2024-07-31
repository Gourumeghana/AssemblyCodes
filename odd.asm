;EVEN OR ODD
include 'emu8086.inc'
define_scan_num
define_print_num
define_print_num_uns

call scan_num
mov ax,cx
mov bx,2
div bx
cmp dx,0
jne label    
         
  label1:
    print "even"
    hlt    
    
  label:
    print "odd"    
    hlt
 