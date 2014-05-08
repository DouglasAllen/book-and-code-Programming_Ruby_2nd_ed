# Sample code from Programing Ruby, page 475

h                                             = { "a" => 100, "b" => 200 }
puts h.has_key?("a").to_s                     #=> true
puts h.has_key?("z").to_s                     #=> false