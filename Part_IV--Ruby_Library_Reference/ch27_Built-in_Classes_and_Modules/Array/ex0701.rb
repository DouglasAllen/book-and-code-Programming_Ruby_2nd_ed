# Sample code from Programing Ruby, page 407

puts Array.new(5){ |index| index ** 2 }.inspect    # => [0, 1, 4, 9, 16]

squares                                            = Array.new(5) {|i| i*i}
puts squares.inspect                               #=> [0, 1, 4, 9, 16]  
# new array initialized by copying:
copy                                               = Array.new(squares)
squares[5]                                         = 25
puts squares.inspect                               #=> [0, 1, 4, 9, 16, 25]
puts copy.inspect                                  #=> [0, 1, 4, 9, 16]


