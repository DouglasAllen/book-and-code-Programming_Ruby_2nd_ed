# Sample code from Programing Ruby, page 413
a                                                  = [ 1, 2, [3, [4, 5] ] ]
puts a.flatten!.inspect                            #=> [1, 2, 3, 4, 5]
puts a.flatten!.inspect                            #=> nil
puts a.inspect                                     #=> [1, 2, 3, 4, 5]
