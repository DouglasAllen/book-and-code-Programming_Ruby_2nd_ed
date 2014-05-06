# Sample code from Programing Ruby, page 419
a                                                   = [ "b", "c", "d" ]
puts a.unshift("a").inspect                         #=> ["a", "b", "c", "d"]
puts a.unshift(1, 2).inspect                        #=> [1, 2, "a", "b", "c", "d"]