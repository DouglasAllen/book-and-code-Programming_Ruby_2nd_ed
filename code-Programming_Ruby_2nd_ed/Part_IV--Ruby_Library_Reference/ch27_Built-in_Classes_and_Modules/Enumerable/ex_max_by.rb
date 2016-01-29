# max_by {|obj| block } → obj 
# max_by → an_enumerator 
# Returns the object in enum that gives the maximum value from the given block.

# If no block is given, an enumerator is returned instead.

# a = %w(albatross dog horse)
# a.max_by {|x| x.length }   #=> "albatross"

a = %w(albatross dog horse)
a.max_by {|x| x.length }.send :display   #=> "albatross"
puts