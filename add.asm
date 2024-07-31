;POSITIVE OR NEGATIVE
include 'emu8086.inc'
define_scan_num
define_print_num
define_print_num_uns

call scan_num
mov ax,cx

cmp ax,0
  jge label
  
  label1:
      print "Negative"
      ret
  label:
      print "Positive"
      ret