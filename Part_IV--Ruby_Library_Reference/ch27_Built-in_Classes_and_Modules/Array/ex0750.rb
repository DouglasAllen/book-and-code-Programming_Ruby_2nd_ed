# Sample code from Programing Ruby, page 418

class Array
  def slice!(*args)
    result = self[*args]
   self[*args] = nil
    result
  end
end

a                                                 = [ "a", "b", "c" ]
puts a.slice!(1).inspect                          #=> "b"
puts a.inspect                                    #=> ["a", nil, "c"]
puts a.slice!(1).inspect                          #=> "c"
puts a.inspect                                    #=> ["a", nil, "c"]
puts a.slice!(100).inspect                        #=> nil
puts a.inspect                                    #=> ["a", nil, "c", nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil]