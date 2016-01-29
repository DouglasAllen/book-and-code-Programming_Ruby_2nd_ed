# Sample code from Programing Ruby, page 410
puts [ "a", nil, "b", nil, "c" ].compact!.inspect  #=> ["a", "b", "c"]
puts [ "a", "b", "c" ].compact!.inspect           #=> nil
