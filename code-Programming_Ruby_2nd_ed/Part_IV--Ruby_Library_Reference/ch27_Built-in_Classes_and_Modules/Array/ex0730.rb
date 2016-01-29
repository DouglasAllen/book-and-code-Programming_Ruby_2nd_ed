# Sample code from Programing Ruby, page 412
s                                                  = [ 1, 2, 3 ]
puts s.inspect                                     #=> [1, 2, 3]
t                                                  = [ 4, 5, 6, [7, 8] ]
puts t.inspect                                     #=> [4, 5, 6, [7, 8]]
a                                                  = [ s, t, 9, 10 ]
puts a.inspect                                     #=> [[1, 2, 3], [4, 5, 6, [7, 8]], 9, 10]
puts a.flatten.inspect                             #=> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
puts a.inspect                                     #=> [[1, 2, 3], [4, 5, 6, [7, 8]], 9, 10]