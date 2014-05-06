ary = [1, "two", 3.0]                      
puts ary.inspect                           #=> [1, "two", 3.0]
ary = Array.new                            
puts ary.inspect                           #=> []
ary = Array.new(3)                               
puts ary.inspect                           #=> [nil, nil, nil]
ary = Array.new(3, true)                         
puts ary.inspect                           #=> [true, true, true]
ary = Array.new(4) { Hash.new }              
puts ary.inspect                           #=> [{}, {}, {}, {}]
empty_table = Array.new(3) { Array.new(3) }
puts empty_table.inspect                   #=> [[nil, nil, nil], [nil, nil, nil], [nil, nil, nil]]
ary = Array({:a => "a", :b => "b"})
puts ary.inspect                           #=> [[:a, "a"], [:b, "b"]]