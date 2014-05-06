# Sample code from Programing Ruby, page 406

puts Array.[]( 1, 'a', /^A/ ).inspect      #=> [1, "a", /^A/]
puts Array[ 1, 'a', /^A/ ].inspect         #=> [1, "a", /^A/] 
puts [ 1, 'a', /^A/ ].inspect              #=> [1, "a", /^A/]

