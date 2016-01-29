# Sample code from Programing Ruby, page 408
puts ([ "a", "c" ]    == [ "a", "c", 7 ]).inspect   #=> false
puts ([ "a", "c", 7 ] == [ "a", "c", 7 ]).inspect   #=> true
puts ([ "a", "c", 7 ] == [ "a", "d", "f" ]).inspect #=> false
