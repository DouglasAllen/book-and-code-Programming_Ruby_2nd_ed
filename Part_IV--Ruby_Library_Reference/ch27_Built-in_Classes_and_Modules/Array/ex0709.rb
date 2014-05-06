# Sample code from Programing Ruby, page 408
a                                                  = [ "a", "b", "c", "d", "e" ]
puts (a[2] + a[0] + a[1]).inspect                  #=> "cab"
puts a[6].inspect                                  #=> nil
puts a[1, 2].inspect                               #=> ["b", "c"]
puts a[1..3].inspect                               #=> ["b", "c", "d"]
puts a[4..7].inspect                               #=> ["e"]
puts a[6..10].inspect                              #=> nil
puts a[3, 3].inspect                               #=> ["d", "e"]
