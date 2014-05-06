arr = [1, 2, 3, 4, 5, 6]
puts arr.select { |a| a > 3 }.inspect      #=> [4, 5, 6]
puts arr.reject { |a| a < 3 }.inspect      #=> [3, 4, 5, 6]
puts arr.drop_while { |a| a < 4 }.inspect  #=> [4, 5, 6]
puts arr.inspect                           #=> [1, 2, 3, 4, 5, 6]

  # Similar to select vs. reject, delete_if and keep_if have the exact opposite result when
  # supplied with the same block:

puts  arr.delete_if { |a| a < 4 }.inspect  #=> [4, 5, 6]
puts arr.inspect                           #=> [4, 5, 6]

arr = [1, 2, 3, 4, 5, 6]
puts arr.keep_if { |a| a < 4 }.inspect     #=> [1, 2, 3]
puts arr.inspect                           #=> [1, 2, 3]