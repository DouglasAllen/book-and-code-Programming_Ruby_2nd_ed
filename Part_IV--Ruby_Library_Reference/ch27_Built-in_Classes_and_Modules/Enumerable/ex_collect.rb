# Sample code from Programing Ruby, page 433

# collect {| obj | block } → array
# Returns a new array with the results of running block once for every element in enum.
# If no block is given, an enumerator is returned instead
 
(1..4).collect {|i| i*i }.send :display
puts
(1..4).collect { "cat"  }.send :display
puts