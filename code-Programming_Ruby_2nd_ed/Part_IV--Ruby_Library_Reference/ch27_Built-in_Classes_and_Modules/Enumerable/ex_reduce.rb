
# reduce(initial, sym) → obj 
# reduce(sym) → obj 
# reduce(initial) {| memo, obj | block } → obj 
# reduce {| memo, obj | block } → obj

# inject(initial, sym) → obj click to toggle source 
# inject(sym) → obj 
# inject(initial) {| memo, obj | block } → obj 
# inject {| memo, obj | block } → obj 
 
# Combines all elements of enum by applying a binary operation, specified by a block or a 
# symbol that names a method or operator.

# If you specify a block, then for each element in enum the block is passed an accumulator 
# value (memo) and the element. If you specify a symbol instead, then each element in the 
# collection will be passed to the named method of memo. In either case, the result becomes 
# the new value for memo. At the end of the iteration, the final value of memo is the return 
# value for the method.

# If you do not explicitly specify an initial value for memo, then uses the first element of 
# collection is used as the initial value of memo.

# Examples:

## Sum some numbers
# (5..10).reduce(:+)                            #=> 45
## Same using a block and inject
# (5..10).reduce {|sum, n| sum + n }            #=> 45
##m Multiply some numbers
# (5..10).reduce(1, :*)                         #=> 151200
## Same using a block
# (5..10).reduce(1) {|product, n| product * n } #=> 151200
## find the longest word
# longest = %w{ cat sheep bear }.reduce do |memo,word|
   # memo.length > word.length ? memo : word
# end
# longest                                       #=> "sheep"

## Sum some numbers
(5..10).reduce(:+).send :display                            #=> 45
puts
## Same using a block and inject
(5..10).reduce {|sum, n| sum + n }.send :display            #=> 45
puts
##m Multiply some numbers
(5..10).reduce(1, :*).send :display                         #=> 151200
puts
## Same using a block
(5..10).reduce(1) {|product, n| product * n }.send :display #=> 151200
puts
## find the longest word
longest = %w{ cat sheep bear }.reduce do |memo,word|
  memo.length > word.length ? memo : word
end
longest.send :display                                       #=> "sheep"
puts