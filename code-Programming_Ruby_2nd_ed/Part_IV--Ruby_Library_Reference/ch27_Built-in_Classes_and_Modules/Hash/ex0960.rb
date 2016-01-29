# Sample code from Programing Ruby, page 475

h                                                      = { "a" => 100, "b" => 200 }
puts h.has_value?(100).to_s                            #=> true
puts h.has_value?(999).to_s                            #=> false