# Sample code from Programing Ruby, page 434

# grep(pattern) → array  
# grep(pattern) {| obj | block } → array 
# Returns an array of every element in enum for which Pattern === element. 
# If the optional block is supplied, each matching element is passed to it, 
# and the block's result is stored in the output array.

(1..100).grep(38..44).send :display   #=> [38, 39, 40, 41, 42, 43, 44]
puts
c = IO.constants
c.grep(/SEEK/).send :display          #=> [:SEEK_SET, :SEEK_CUR, :SEEK_END]
puts
res = c.grep(/SEEK/) {|v| IO.const_get(v) }
res.send :display                     #=> [0, 1, 2]
puts