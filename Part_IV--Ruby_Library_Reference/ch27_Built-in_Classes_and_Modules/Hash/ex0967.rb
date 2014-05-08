# Sample code from Programing Ruby, page 477

a                                                       = [ "a", "b" ]
c                                                       = [ "c", "d" ]
h                                                       = { a => 100, c => 300 }
puts h[a].to_s                                          #=> 100
a[0]                                                    = "z"
puts h[a].inspect                                       #=> nil
puts h.rehash.to_s                                      #=> {["z", "b"]=>100, ["c", "d"]=>300}
puts h[a].to_s                                          #=> 100