# Sample code from Programing Ruby, page 476

h                                         = { "d" => 100, "a" => 200, "v" => 300, "e" => 400 }
puts h.length.to_s                        #=> 4
puts h.delete("a").to_s                   #=> 200
puts h.length.to_s                        #=> 3