# Samle code from rograming Ruby, age 409
a       = Array.new;        puts a.inspect         #=> [] # a is an empty array
a[4]    = "4";              puts a.inspect         #=> [nil, nil, nil, nil, "4"]
a[0]    = [ 1, 2, 3 ];      puts a.inspect         #=> [[1, 2, 3], nil, nil, nil, "4"]
a[0, 3] = [ 'a', 'b', 'c' ];puts a.inspect         #=> ["a", "b", "c", nil, "4"]
a[1..2] = [ 1, 2 ];         puts a.inspect         #=> ["a", 1, 2, nil, "4"]
a[0, 2] = "?";              puts a.inspect         #=> ["?", 2, nil, "4"]
a[0..2] = "A";              puts a.inspect         #=> ["A", "4"]
a[1]    = "Z";              puts a.inspect         #=> ["A", "Z"]
a[1..1] = nil;              puts a.inspect         #=> ["A", nil]