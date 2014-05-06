# Sample code from Programing Ruby, page 418
a                                                 = [ "d", "a", "e", "c", "b" ]
puts a.sort.inspect                               #=> ["a", "b", "c", "d", "e"]
puts a.sort {|x,y| y <=> x }.inspect              #=> ["e", "d", "c", "b", "a"]
puts a.inspect                                    #=> ["d", "a", "e", "c", "b"]