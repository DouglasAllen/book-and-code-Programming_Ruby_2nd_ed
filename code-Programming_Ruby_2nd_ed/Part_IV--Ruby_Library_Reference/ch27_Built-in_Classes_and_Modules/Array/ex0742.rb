# Sample code from Programing Ruby, page 416
a = [ [ 1, "one"], [2, "two"], [3, "three"], ["ii", "two"] ]
puts a.rassoc("two").inspect                       #=> [2, "two"]
puts a.rassoc("four").inspect                      #=> nil