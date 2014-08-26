# Sample code from Programing Ruby, page 436
# partition {| obj | block } → [ true_array, false_array ] 
# partition → an_enumerator 
# Returns two arrays, the first containing the elements of enum for which the block evaluates
# to true, the second containing the rest.

# If no block is given, an enumerator is returned instead.

(1..6).partition {|v| p v.even? }.send :display  #=> [[2, 4, 6], [1, 3, 5]]
puts
(1..6).each {|i| p (i&1).zero?}.send :display
puts
(1..6).partition {|i| p (i&1).zero?}.send :display
puts
