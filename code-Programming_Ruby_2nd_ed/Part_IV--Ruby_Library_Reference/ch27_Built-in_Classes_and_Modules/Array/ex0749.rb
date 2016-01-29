# Sample code from Programing Ruby, page 417
a                                                  = [ "a", "b", "c", "d", "e" ]
puts (a.slice(2) + a.slice(0) + a.slice(1)).inspect #=> "cab"
puts a.slice(6).inspect                            #=> nil
puts a.slice(1, 2).inspect                         #=> ["b", "c"]
puts a.slice(1..3).inspect                         #=> ["b", "c", "d"]
puts a.slice(4..7).inspect                         #=> ["e"]
puts a.slice(6..10).inspect                        #=> nil
puts a.slice(3, 3).inspect                         #=> [ "d", "e"]

# special cases:

puts a.slice(5).inspect                            #=> nil
puts a.slice(5, 1).inspect                         #=> []
puts a.slice(5..10).inspect                        #=> []
