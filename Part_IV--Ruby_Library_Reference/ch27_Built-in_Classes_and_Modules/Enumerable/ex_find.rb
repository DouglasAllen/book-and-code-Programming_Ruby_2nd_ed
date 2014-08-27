# find(ifnone = nil) {| obj | block } → obj or nil 
# find(ifnone = nil) → an_enumerator 
# Passes each entry in enum to block. Returns the first for which block is not false. If no object matches, calls ifnone and returns its result when it is specified, or returns nil otherwise.

# If no block is given, an enumerator is returned instead.

# (1..10).find  {|i| i % 5 == 0 and i % 7 == 0 }   #=> nil
# (1..100).find {|i| i % 5 == 0 and i % 7 == 0 }   #=> 35

(1..10).find  {|i| i % 5 == 0 and i % 7 == 0 }.send :display   #=> nil
puts
(1..100).find {|i| i % 5 == 0 and i % 7 == 0 }.send :display   #=> 35
puts