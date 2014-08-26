# collect_concat {| obj | block } → array 
# collect_concat → an_enumerator 
# Returns a new array with the concatenated results of running block once for every element 
# in enum.

# If no block is given, an enumerator is returned instead.

# [[1,2],[3,4]].flat_map {|i| i }   #=> [1, 2, 3, 4]

[[1,2],[3,4]].collect_concat {|i| i }.send :display   #=> [1, 2, 3, 4]
puts