# Sample code from Programing Ruby, page 438

a = [ 4, 5, 6 ]
b = [ 7, 8, 9 ]

(1..3).zip(a, b).send :display
# "cat\ndog".zip([1]).send :display # NoMethodError: undefined method `zip' for "cat\ndog":String
puts
(1..3).zip.send :display
