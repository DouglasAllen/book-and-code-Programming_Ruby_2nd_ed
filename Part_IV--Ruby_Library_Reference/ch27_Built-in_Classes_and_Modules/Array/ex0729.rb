# Sample code from Programing Ruby, page 412
a                                                  = [ "q", "r", "s", "t" ]
puts a.first.inspect                               #=> "q"
puts a.first(1).inspect                            #=> ["q"]
puts a.first(3).inspect                            #=> ["q", "r", "s"]