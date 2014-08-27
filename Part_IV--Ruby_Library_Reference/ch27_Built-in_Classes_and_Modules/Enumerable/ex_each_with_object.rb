# each_with_object(obj) {|(*args), memo_obj| ... } → obj 
# each_with_object(obj) → an_enumerator 
# Iterates the given block for each element with an arbitrary object given, and returns 
# the initially given object.

# If no block is given, returns an enumerator.

# e.g.:

# evens = (1..10).each_with_object([]) {|i, a| a << i*2 }
#=> [2, 4, 6, 8, 10, 12, 14, 16, 18, 20]

evens = (1..10).each_with_object([]) {|i, a| a << i*2 }
evens.send :display
puts