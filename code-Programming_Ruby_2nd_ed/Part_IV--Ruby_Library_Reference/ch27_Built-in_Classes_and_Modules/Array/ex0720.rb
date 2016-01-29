# Sample code from Programing Ruby, page 410
a                                                  = [ "a", "b", "b", "b", "c" ]
puts a.delete("b").inspect                         #=> "b"
puts a.inspect                                     #=> ["a", "c"]
puts a.delete("z").inspect                         #=> nil
puts a.delete("z") { "not found" }.inspect         #=> "not found"