# Sample code from Programing Ruby, page 475

h                                                          = { "a" => 100, "b" => 200 }
puts h.fetch("a").to_s                                     #=> 100
puts h.fetch("z", "go fish").to_s                          #=> go fish
puts h.fetch("z") {|el| "go fish, #{el}"}.to_s             #=> go fish, z