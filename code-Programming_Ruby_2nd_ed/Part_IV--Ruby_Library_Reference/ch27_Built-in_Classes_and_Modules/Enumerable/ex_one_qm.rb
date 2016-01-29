# one? [{|obj| block }] → true or false
 
# Passes each element of the collection to the given block. 
# The method returns true if the block returns true exactly once. 
# If the block is not given, one? will return true only if exactly one of the collection 
# members is true.

# %w{ant bear cat}.one? {|word| word.length == 4}   #=> true
# %w{ant bear cat}.one? {|word| word.length > 4}    #=> false
# %w{ant bear cat}.one? {|word| word.length < 4}    #=> false
# [ nil, true, 99 ].one?                            #=> false
# [ nil, true, false ].one?                         #=> true

%w{ant bear cat}.one? {|word| word.length == 4}.send :display   #=> true
puts
%w{ant bear cat}.one? {|word| word.length > 4}.send :display    #=> false
puts
%w{ant bear cat}.one? {|word| word.length < 4}.send :display    #=> false
puts
[ nil, true, 99 ].one?.send :display                            #=> false
puts
[ nil, true, false ].one?.send :display                         #=> true
puts