# Sample code from Programing Ruby, page 411
a                                                  = %w( ant bat cat dog )
puts a.delete_at(2).inspect                        #=> "cat"
puts a.inspect                                     #=> ["ant", "bat", "dog"]
puts a.delete_at(99).inspect                       #=> nil