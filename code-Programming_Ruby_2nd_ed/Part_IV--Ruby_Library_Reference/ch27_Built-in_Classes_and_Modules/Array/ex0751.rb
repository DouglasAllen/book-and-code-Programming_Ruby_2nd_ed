# Sample code from Programing Ruby, page 418
a                                                 = [ "a", "b", "c" ]
puts a.slice!(1).inspect                          #=> "b"
puts a.inspect                                    #=> ["a", "c"]
puts a.slice!(1).inspect                          #=> "c"
puts a.inspect                                    #=> ["a"]
puts a.slice!(100).inspect                        #=> nil
puts a.inspect                                    #=> ["a"]