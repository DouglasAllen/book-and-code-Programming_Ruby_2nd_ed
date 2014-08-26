@arr = [1, 2, 3, 4, 5, 6]             #=> [1, 2, 3, 4, 5, 6]
@arr[2]                               #=> 3
@arr[100]                             #=> nil
@arr[-3]                              #=> 4
@arr[2, 3]                            #=> [3, 4, 5]
@arr[1..4]                            #=> [2, 3, 4, 5]
@arr[1..-3]                           #=> [2, 3, 4]
@arr.at(0)                            #=> 1
@arr.first                            #=> 1
@arr.last                             #=> 6
@arr.take(3)                          #=> [1, 2, 3]
@arr.drop(3)                          #=> [4, 5, 6]
@arr = ['a', 'b', 'c', 'd', 'e', 'f'] #=> ['a', 'b', 'c', 'd', 'e', 'f']
@arr.fetch(100, "oops")               #=> "oops"
#@arr.fetch(100)                      #=> IndexError: index 100 out of array