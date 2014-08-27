# Sample code from Programing Ruby, page 435

# max → obj
# max {|a,b| block } → obj 
# Returns the object in enum with the maximum value. The first form assumes all objects 
# implement Comparable; the second uses the block to return a <=> b.

# a = %w(albatross dog horse)
# a.max                                  #=> "horse"
# a.max {|a,b| a.length <=> b.length }   #=> "albatross"

a = %w(albatross dog horse)

a.max.send :display
puts 
a.max {|a,b| a.length <=> b.length }.send :display
puts
