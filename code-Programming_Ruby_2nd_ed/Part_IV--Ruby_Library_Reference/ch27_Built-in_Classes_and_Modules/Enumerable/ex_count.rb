# count → int count(item) → int 
# count {| obj | block } → int 
# Returns the number of items in enum, where size is called if it responds to it, otherwise the 
# items are counted through enumeration. If an argument is given, counts the number of items 
# in enum, for which equals to item. If a block is given, counts the number of elements yielding 
# a true value.

# ary = [1, 2, 4, 2]
# ary.count             #=> 4
# ary.count(2)          #=> 2
# ary.count{|x|x%2==0}  #=> 3

ary = [1, 2, 4, 2]
ary.send :display
puts
ary.count.send :display             #=> 4
puts
ary.count(2).send :display          #=> 2
puts
ary.count{|x|x%2==0}.send :display  #=> 3
puts