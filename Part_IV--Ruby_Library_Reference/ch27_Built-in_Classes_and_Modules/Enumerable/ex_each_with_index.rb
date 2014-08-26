# Sample code from Programing Ruby, page 434

# each_with_index(*args) {|obj, i| block } → enum 
# each_with_index(*args) → an_enumerator 
# Calls block with two arguments, the item and its index, for each item in enum. 
# Given arguments are passed through to each().

# If no block is given, an enumerator is returned instead.
         
hash = Hash.new

%w(cat dog wombat).each_with_index do |item, index|
  hash[item] = index
end
hash.send :display   #=> {"cat"=>0, "dog"=>1, "wombat"=>2}
puts