# Sample code from Programing Ruby, page 419
a                                                  = [ "a", "a", "b", "b", "c" ]
puts a.uniq!.inspect                               #=> ["a", "b", "c"]
b                                                  = [ "a", "b", "c" ]
puts b.uniq!.inspect                               #=> nil