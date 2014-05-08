# Sample code from Programing Ruby, page 475

h                                          = { "a" => 100, "b" => 200 }
puts h.index(200).to_s                     #=> b 
puts h.index(999).to_s                     #=> warning: Hash#index is deprecated; use Hash#key