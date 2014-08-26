# drop(n) → array 
# Drops first n elements from enum, and returns rest elements in an array.

# a = [1, 2, 3, 4, 5, 0]
# a.drop(3)             #=> [4, 5, 0]

a = [1, 2, 3, 4, 5, 0]
a.send :display
puts
a.drop(3).send :display             #=> [4, 5, 0]
puts