 
# map {| obj | block } → array
# collect {| obj | block } → array click to toggle source 
 
# map → an_enumerator
# collect → an_enumerator
 
# Returns a new array with the results of running block once for every element in enum.

# If no block is given, an enumerator is returned instead.

# (1..4).collect {|i| i*i }   #=> [1, 4, 9, 16]
# (1..4).collect { "cat"  }   #=> ["cat", "cat", "cat", "cat"]

(1..4).collect {|i| i*i }.send :display   #=> [1, 4, 9, 16]
puts
(1..4).collect { "cat"  }.send :display   #=> ["cat", "cat", "cat", "cat"]
puts
