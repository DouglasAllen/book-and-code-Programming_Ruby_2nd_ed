  # The method pop removes the last element in an array and returns it:

arr =  [1, 2, 3, 4, 5, 6]
puts arr.pop.inspect                       #=> 6
puts arr.inspect                           #=> [1, 2, 3, 4, 5]

  # To retrieve and at the same time remove the first item, use shift:

puts arr.shift.inspect                     #=> 1
puts arr.inspect                           #=> [2, 3, 4, 5]

  # To delete an element at a particular index:

puts arr.delete_at(2).inspect              #=> 4
puts arr.inspect                           #=> [2, 3, 5]

  # To delete a particular element anywhere in an array, use delete:

arr = [1, 2, 2, 3]
puts arr.delete(2).inspect                 #=> 2
puts arr.inspect                           #=> [1,3]

  # A useful method if you need to remove nil values from an array is compact:

arr = ['foo', 0, nil, 'bar', 7, 'baz', nil]
puts arr.compact.inspect                   #=> ['foo', 0, 'bar', 7, 'baz']
puts arr.inspect                           #=> ['foo', 0, nil, 'bar', 7, 'baz', nil]
puts arr.compact!.inspect                  #=> ['foo', 0, 'bar', 7, 'baz']
puts arr.inspect                           #=> ['foo', 0, 'bar', 7, 'baz']

  # Another common need is to remove duplicate elements from an array.

# It has the non-destructive uniq, and destructive method uniq!

arr = [2, 5, 6, 556, 6, 6, 8, 9, 0, 123, 556]
puts arr.inspect
puts arr.uniq.inspect                      #=> [2, 5, 6, 556, 8, 9, 0, 123]
puts arr.inspect                           #=> [2, 5, 6, 556, 6, 6, 8, 9, 0, 123, 556]
puts arr.uniq!.inspect                     #=> [2, 5, 6, 556, 8, 9, 0, 123]
puts arr.inspect                           #=> [2, 5, 6, 556, 8, 9, 0, 123]