# Sample code from Programing Ruby, page 433 
# all? [{|obj| block } ] > true or false 
# Passes each element of the collection to the given block. 
# The method returns true if the block never returns false or nil. 
# If the block is not given, Ruby adds an implicit block of {|obj| obj} 
# (that is all? will return true only if none of the collection members are false or nil.)

%w{ ant bear cat}.all? {|word| word.length >= 3}.send :display
puts
%w{ ant bear cat}.all? {|word| word.length >= 4}.send :display
puts
[ nil, true, 99 ].all?.send :display
puts
