# Sample code from Programing Ruby, page 478

h                                                        = { "a" => 20, "b" => 30, "c" => 10  }
puts h.sort.to_s                                         #=> [["a", 20], ["b", 30], ["c", 10]]
puts h.sort {|a,b| a[1]<=>b[1]}.to_s                     #=> [["c", 10], ["a", 20], ["b", 30]]
