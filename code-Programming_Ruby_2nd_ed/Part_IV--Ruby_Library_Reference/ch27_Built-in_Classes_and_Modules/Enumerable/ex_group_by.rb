# group_by {| obj | block } → a_hash 
# group_by → an_enumerator 

# Returns a hash, which keys are evaluated result from the block, and values are arrays of 
# elements in enum corresponding to the key.

# If no block is given, an enumerator is returned instead.

# (1..6).group_by {|i| i%3}   #=> {0=>[3, 6], 1=>[1, 4], 2=>[2, 5]}

(1..6).group_by {|i| i%3}.send :display   #=> {0=>[3, 6], 1=>[1, 4], 2=>[2, 5]}
puts