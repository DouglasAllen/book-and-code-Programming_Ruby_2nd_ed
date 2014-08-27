# Sample code from Programing Ruby, page 436

# sort → array  
# sort {| a, b | block } → array
 
# Returns an array containing the items in enum sorted, either according to their own <=> 
# method, or by using the results of the supplied block. The block should return -1, 0, or +1
# depending on the comparison between a and b. As of Ruby 1.8, the method 
# Enumerable#sort_by implements a built-in Schwartzian Transform, useful when key 
# computation or comparison is expensive.

# %w(rhea kea flea).sort         #=> ["flea", "kea", "rhea"]
# (1..10).sort {|a,b| b <=> a}   #=> [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]

%w(rhea kea flea).sort.send :display
puts
(1..10).sort {|a,b| b <=> a}.send :display
puts
