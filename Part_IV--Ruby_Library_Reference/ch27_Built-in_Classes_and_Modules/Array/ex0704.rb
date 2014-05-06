# Sample code from Programing Ruby, page 407

puts ([ 1, 2, 3 ] + [ 4, 5 ]).inspect              #=> [1, 2, 3, 4, 5]
a                                                  = [ "a", "b", "c" ]
c                                                  = a + [ "d", "e", "f" ]
puts c.inspect                                     #=> [ "a", "b", "c", "d", "e", "f" ]
puts a.inspect                                     #=> [ "a", "b", "c" ]             
