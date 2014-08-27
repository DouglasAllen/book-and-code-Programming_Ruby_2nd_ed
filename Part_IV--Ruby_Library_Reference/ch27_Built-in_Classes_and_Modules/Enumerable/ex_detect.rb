# Sample code from Programing Ruby, page 433

# detect(ifnone = nil) {| obj | block } → obj or nil  
# find(ifnone = nil) {| obj | block } → obj or nil
 
# detect(ifnone = nil) → an_enumerator 
# find(ifnone = nil) → an_enumerator
 
# Passes each entry in enum to block. Returns the first for which block is not false. 
# If no object matches, calls ifnone and returns its result when it is specified, 
# or returns nil otherwise.

# If no block is given, an enumerator is returned instead.

(1..10).detect  {|i| i % 5 == 0 and i % 7 == 0 }.send :display   #=> nil
puts
puts "The blank line means nil was returned"
(1..100).detect {|i| i % 5 == 0 and i % 7 == 0 }.send :display   #=> 35
puts

sorry = lambda { "not found" }
(1..10).detect(sorry) {|i| i > 50}.send :display
puts