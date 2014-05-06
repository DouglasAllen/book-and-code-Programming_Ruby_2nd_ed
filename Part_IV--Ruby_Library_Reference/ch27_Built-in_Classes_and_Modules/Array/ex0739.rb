# Sample code from Programing Ruby, page 415
a                                                  = [ "a", "b", "c" ]
n                                                  = [ 65, 66, 67 ]
puts a.pack("A3A3A3").inspect                      #=> "a b c "
puts a.pack("a3a3a3").inspect                      #=> "a\000\000b\000\000c\000\000"
puts n.pack("ccc").inspect                         #=> "ABC"
