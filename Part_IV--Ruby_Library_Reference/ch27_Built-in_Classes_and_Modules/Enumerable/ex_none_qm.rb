# none? [{|obj| block }] → true or false 

# Passes each element of the collection to the given block. 
# The method returns true if the block never returns true for all elements. 
# If the block is not given, none? will return true only if none of the collection members is 
# true.

# %w{ant bear cat}.none? {|word| word.length == 5}  #=> true
# %w{ant bear cat}.none? {|word| word.length >= 4}  #=> false
# [].none?                                          #=> true
# [nil].none?                                       #=> true
# [nil,false].none?                                 #=> true

%w{ant bear cat}.none? {|word| word.length == 5}.send :display  #=> true
puts
%w{ant bear cat}.none? {|word| word.length >= 4}.send :display  #=> false
puts
[].none?.send :display                                          #=> true
puts
[nil].none?.send :display                                       #=> true
puts
[nil,false].none?.send :display                                 #=> true
puts