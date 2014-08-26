# drop_while {|arr| block } → array 
# drop_while → an_enumerator 
# Drops elements up to, but not including, the first element for which the block returns nil 
# or false and returns an array containing the remaining elements.

# If no block is given, an enumerator is returned instead.

# a = [1, 2, 3, 4, 5, 0]
# a.drop_while {|i| i < 3 }   #=> [3, 4, 5, 0]

a = [1, 2, 3, 4, 5, 0]
a.send :display
puts
a.drop_while {|i| i < 3 }.send :display   #=> [3, 4, 5, 0]
puts