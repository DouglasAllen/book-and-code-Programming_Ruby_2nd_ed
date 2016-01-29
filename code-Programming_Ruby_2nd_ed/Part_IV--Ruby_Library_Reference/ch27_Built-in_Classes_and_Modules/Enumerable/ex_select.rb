
# select {| obj | block } → array
# select → an_enumerator

# find_all {| obj | block } → array  
# find_all → an_enumerator 
 
# Returns an array containing all elements of enum for which block is not false 
# (see also Enumerable#reject).

# If no block is given, an enumerator is returned instead.

# (1..10).select {|i|  i % 3 == 0 }   #=> [3, 6, 9]

(1..10).select {|i|  i % 3 == 0 }.send :display   #=> [3, 6, 9]
puts
