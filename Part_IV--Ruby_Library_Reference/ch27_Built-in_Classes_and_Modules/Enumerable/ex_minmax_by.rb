# minmax_by → an_enumerator 

# Returns two elements array array containing the objects in enum that gives the minimum and maximum 
# values respectively from the given block.

# If no block is given, an enumerator is returned instead.

# a = %w(albatross dog horse)
# a.minmax_by {|x| x.length }   #=> ["dog", "albatross"]

a = %w(albatross dog horse)
a.minmax_by {|x| x.length }.send :display   #=> ["dog", "albatross"]
puts
