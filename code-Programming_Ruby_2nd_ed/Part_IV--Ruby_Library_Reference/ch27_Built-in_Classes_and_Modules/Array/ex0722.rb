# Sample code from Programing Ruby, page 411
a                                                  = [ "a", "b", "c" ]
puts a.delete_if {|x| x >= "b" }.inspect           #=> ["a"]