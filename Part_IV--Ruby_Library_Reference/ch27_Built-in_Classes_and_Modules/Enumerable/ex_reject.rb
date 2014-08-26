# Sample code from Programing Ruby, page 436
# reject {| obj | block } → array 
# reject → an_enumerator 
# Returns an array for all elements of enum for which block is false 
# (see also Enumerable#find_all).

# If no block is given, an enumerator is returned instead.

# (1..10).reject {|i|  i % 3 == 0 }   #=> [1, 2, 4, 5, 7, 8, 10]

(1..10).reject {|i|  i % 3 == 0 }.send :display
puts
