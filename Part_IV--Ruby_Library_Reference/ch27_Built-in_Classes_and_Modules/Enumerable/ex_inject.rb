# Sample code from Programing Ruby, page 435

# inject(initial, sym) → obj
# inject(sym) → obj 
# inject(initial) {| memo, obj | block } → obj 
# inject {| memo, obj | block } → obj 

# reduce(initial, sym) → obj 
# reduce(sym) → obj 
# reduce(initial) {| memo, obj | block } → obj 
# reduce {| memo, obj | block } → obj
 
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

        
# Sum some numbers
(5..10).inject(:+).send :display                            #=> 45
puts

(5..10).inject {|sum, n| sum + n }.send :display            #=> 45
puts

# Multiply some numbers
(5..10).reduce(1, :*).send :display                         #=> 151200
puts

(5..10).inject(1) {|product, n| product * n }.send :display #=> 151200
puts

# find the longest word
longest = %w{ cat sheep bear }.inject do |memo, word|
  memo.length > word.length ? memo : word
end
longest.send :display                                       #=> "sheep"
puts

# find the length of the longest word
longest = %w{ cat sheep bear }.inject(0) do |memo, word|
  memo >= word.length ? memo : word.length
end
longest.send :display                                       #=> 5
puts