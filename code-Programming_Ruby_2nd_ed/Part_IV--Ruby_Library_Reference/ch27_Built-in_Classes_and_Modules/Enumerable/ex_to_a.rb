# Sample code from Programing Ruby, page 438

# to_a → array  
# entries → array
 
# Returns an array containing the items in enum.

# (1..7).to_a                       #=> [1, 2, 3, 4, 5, 6, 7]
# { 'a'=>1, 'b'=>2, 'c'=>3 }.to_a   #=> [["a", 1], ["b", 2], ["c", 3]]

p (1..7).to_a

# { a=>1, b=>2, c=>3 }.to_a.send :display # error as looking for methods or variables
puts
{ 'a'=>1, 'b'=>2, 'c'=>3 }.to_a.send :display
puts
{"a"=>1, "b"=>2, "c"=>3}.to_a.send :display
puts
{ :"a"=>1, :"b"=>2, :"c"=>3 }.to_a.send :display
puts
{ :a=>1, :b=>2, :c=>3 }.to_a.send :display
puts