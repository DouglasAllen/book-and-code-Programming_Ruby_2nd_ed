# Sample code from Programing Ruby, page 410
a                                                  = [ "a", "b", "c", "d" ]
puts a.collect {|x| x + "!" }.inspect              #=> ["a!", "b!", "c!", "d!"]
puts a.inspect                                     #=> [ "a", "b", "c", "d" ]