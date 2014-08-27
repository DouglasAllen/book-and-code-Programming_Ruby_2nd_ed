# take(n) → array
  
# Returns first n elements from enum.

# a = [1, 2, 3, 4, 5, 0]
# a.take(3)             #=> [1, 2, 3]

a = [1, 2, 3, 4, 5, 0]
a.take(3).send :display             #=> [1, 2, 3]
puts