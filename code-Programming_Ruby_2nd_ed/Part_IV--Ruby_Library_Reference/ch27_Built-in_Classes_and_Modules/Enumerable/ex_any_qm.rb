# Sample code from Programing Ruby, page 433

# any? [{|obj| block } ] → true or false

# Passes each element of the collection to the given block. 
# The method returns true if the block ever returns a value other than false or nil. 
# If the block is not given, Ruby adds an implicit block of {|obj| obj} 
# (that is any? will return true if at least one of the collection members is not false or nil.

# %w{ant bear cat}.any? {|word| word.length >= 3}   #=> true
# %w{ant bear cat}.any? {|word| word.length >= 4}   #=> true
# [ nil, true, 99 ].any?                            #=> true

%w{ ant bear cat}.any? {|word| word.length >= 3}.send :display
puts
%w{ ant bear cat}.any? {|word| word.length >= 4}.send :display
puts
[ 0 ].any?.send :display
puts
