puts Array.include? Enumerable             
puts Enumerable.public_instance_methods(false).sort.inspect 
Enumerable.public_instance_methods(false).sort.each {|methods| puts methods }
