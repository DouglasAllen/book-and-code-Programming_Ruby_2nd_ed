arr = [1, 2, 3, 4]
arr.push(5)
puts arr.inspect                           #=> [1, 2, 3, 4, 5]
arr << 6                              
puts arr.inspect                           #=> [1, 2, 3, 4, 5, 6]

  # unshift will add a new item to the beginning of an array.

arr.unshift(0)                        
puts arr.inspect                           #=> [0, 1, 2, 3, 4, 5, 6]

  # With insert you can add a new element to an array at any position.

arr.insert(3, 'apple')                
puts arr.inspect                           #=> [0, 1, 2, 'apple', 3, 4, 5, 6]

  # Using the insert method, you can also insert multiple values at once:

arr.insert(3, 'orange', 'pear', 'grapefruit')
puts arr.inspect                           #=> [0, 1, 2, "orange", "pear", "grapefruit", "apple", 3, 4, 5, 6]
