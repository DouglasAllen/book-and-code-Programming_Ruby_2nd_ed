# Sample code from Programing Ruby, page 478

h                                         = { "c" => 300, "a" => 100, "d" => 400, "c" => 300  }
puts h.to_a.to_s                          #=> [["a", 100], ["c", 300], ["d", 400]]