# Sample code from Programing Ruby, page 419
a                                                   = %w{ a b c d e f }
puts a.values_at(1, 3, 5).inspect                   #=> ["b", "d", "f"]
puts a.values_at(1, 3, 5, 7).inspect                #=> ["b", "d", "f", nil]
puts a.values_at(1, 3, 5, 7).inspect                #=> ["f", "d", "b", nil]
puts a.values_at(1..3, 2...5).inspect               #=> ["b", "c", "d", "c", "d", "e"]