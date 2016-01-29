# Sample code from Programing Ruby, page 435

# min → obj 
# min {| a,b | block } → obj 
# Returns the object in enum with the minimum value. The first form assumes all objects 
# implement Comparable; the second uses the block to return a <=> b.

# a = %w(albatross dog horse)
# a.min                                  #=> "albatross"
# a.min {|a,b| a.length <=> b.length }   #=> "dog"

a = %w(albatross dog horse)

a.min.send :display
puts
a.min {|a,b| a.length <=> b.length }.send :display
puts
