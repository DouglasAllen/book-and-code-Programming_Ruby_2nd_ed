# minmax → [min,max]
# minmax {|a,b| block } → [min,max] 
# Returns two elements array which contains the minimum and the maximum value in the enumerable.
# The first form assumes all objects implement Comparable; the second uses the block to return a <=> b.

# a = %w(albatross dog horse)
# a.minmax                                  #=> ["albatross", "horse"]
# a.minmax {|a,b| a.length <=> b.length }   #=> ["dog", "albatross"]

a = %w(albatross dog horse)
a.minmax.send :display                                  #=> ["albatross", "horse"]
puts
a.minmax {|a,b| a.length <=> b.length }.send :display   #=> ["dog", "albatross"]
puts
