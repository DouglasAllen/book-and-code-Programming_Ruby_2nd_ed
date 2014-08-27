# min_by {|obj| block } → obj 
# min_by → an_enumerator
 
# Returns the object in enum that gives the minimum value from the given block.

# If no block is given, an enumerator is returned instead.

# a = %w(albatross dog horse)
# a.min_by {|x| x.length }   #=> "dog"

a = %w(albatross dog horse)
a.min_by {|x| x.length }.send :display   #=> "dog"
puts