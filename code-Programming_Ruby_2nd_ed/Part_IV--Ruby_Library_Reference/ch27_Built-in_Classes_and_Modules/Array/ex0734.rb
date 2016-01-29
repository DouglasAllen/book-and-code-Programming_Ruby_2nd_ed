# Sample code from Programing Ruby, page 413
a                                                  = %w{ a b c d }
puts a.insert(2, 99).inspect                       #=> ["a", "b", 99, "c", "d"]
puts a.insert(2, 1, 2, 3).inspect                  #=> ["a", "b", 99, "c", 1, 2, 3, "d"]
puts a.insert(1, "e").inspect                      #=> ["a", "b", 99, "c", 1, 2, 3, "d", "e"]