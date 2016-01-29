# Sample code from Programing Ruby, page 412
a                                                  = [ "a", "b", "c", "d" ]
puts a.fill("x").inspect                           #=> ["x", "x", "x", "x"]
puts a.fill("z", 2, 2).inspect                     #=> ["x", "x", "z", "z"]
puts a.fill("y", 0..1).inspect                     #=> ["y", "y", "z", "z"]

puts a.fill {|i| i*i}.inspect                      #=> [0, 1, 4, 9]
puts a.fill(1, 2) {|i| i/2}.inspect                #=> [0, 0, 1, 9]
puts a.fill(1..2) {|i| i+100}.inspect              #=> [0, 101, 102, 9]