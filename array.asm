;PRINTING ELEMENTS IN AN ARRAY
include 'emu8086.inc'
mov si,0
lab:
 mov al,a[si]
 call print_num
 print '  '
 inc si
 cmp si,4
 je exit
 jne lab 
 hlt    

exit:
 hlt
                    
a db 1,2,3,4                    
define_scan_num
define_print_num
define_print_num_uns