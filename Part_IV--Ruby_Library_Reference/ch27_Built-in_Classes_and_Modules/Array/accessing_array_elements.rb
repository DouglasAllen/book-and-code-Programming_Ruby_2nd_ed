arr = [1, 2, 3, 4, 5, 6]

puts arr[2].inspect                        #=> 3
puts arr[100].inspect                      #=> nil
puts arr[-3].inspect                       #=> 4
puts arr[2, 3].inspect                     #=> [3, 4, 5]
puts arr[1..4].inspect                     #=> [2, 3, 4, 5]
puts arr[1..-3].inspect                    #=> [2, 3, 4]

puts arr.at(0).inspect                     #=> 1

puts arr.first.inspect                     #=> 1
puts arr.last.inspect                      #=> 6

puts  arr.take(3).inspect                  #=> [1, 2, 3]

puts arr.drop(3).inspect                   #=> [4, 5, 6]

arr = ['a', 'b', 'c', 'd', 'e', 'f']

puts arr.fetch(100, "oops").inspect        #=> "oops"
puts arr.fetch(100).inspect                #=> IndexError: index 100 out of array

