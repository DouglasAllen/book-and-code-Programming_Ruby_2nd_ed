# Sample code from Programing Ruby, page 434

# find_all {| obj | block } → array
# select {| obj | block } → array 

# find_all → an_enumerator 
# select → an_enumerator 

# Returns an array containing all elements of enum for which block is not false 
# (see also Enumerable#reject).

# If no block is given, an enumerator is returned instead.

(1..10).find_all {|i|  i % 3 == 0 }.send :display   #=> [3, 6, 9]         
puts