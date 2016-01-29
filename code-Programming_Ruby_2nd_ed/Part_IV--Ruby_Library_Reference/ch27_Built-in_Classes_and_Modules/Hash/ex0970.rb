# Sample code from Programing Ruby, page 478

h                                                           = { 1 => "a", 2 => "b", 3 => "c" }
puts h.shift.to_s                                           #=> [1, "a"]
puts h.to_s                                                 #=> {2=>"b", 3=>"c"}
