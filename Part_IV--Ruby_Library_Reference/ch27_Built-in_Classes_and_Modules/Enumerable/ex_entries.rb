# entries → array
# to_a → array  
# Returns an array containing the items in enum.

# (1..7).entries                       #=> [1, 2, 3, 4, 5, 6, 7]
# { 'a'=>1, 'b'=>2, 'c'=>3 }.entries   #=> [["a", 1], ["b", 2], ["c", 3]]

(1..7).entries.send :display                       #=> [1, 2, 3, 4, 5, 6, 7]
puts
{ 'a'=>1, 'b'=>2, 'c'=>3 }.entries.send :display   #=> [["a", 1], ["b", 2], ["c", 3]]
puts