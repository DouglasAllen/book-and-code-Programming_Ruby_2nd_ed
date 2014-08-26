# Sample code from Programing Ruby, page 435

a = %w(albatross dog horse)

a.max.send :display
puts 
a.max {|a,b| a.length <=> b.length }.send :display
puts
