# Sample code from Programing Ruby, page 407

Array.new(5){ |index| index ** 2 }     # => [0, 1, 4, 9, 16]

@squares                               = Array.new(5) {|i| i*i}
@squares                               #=> [0, 1, 4, 9, 16]  
# new array initialized by copying:
@copy                                  = Array.new(@squares)
@squares[5]                            = 25
@squares                               #=> [0, 1, 4, 9, 16, 25]
@copy                                  #=> [0, 1, 4, 9, 16]


