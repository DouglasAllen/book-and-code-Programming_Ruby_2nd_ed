# Sample code from Programing Ruby, page 417
# http://ruby-doc.org/core-2.1.1/Array.html
a                                                  = [ "a", "b", "b", "b", "c" ]
puts a.rindex("b").inspect                         #=> 3
puts a.rindex("z").inspect                         #=> nil