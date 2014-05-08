# Sample code from Programing Ruby, page 473

h                                                     = { "a" => 100, "b" => 200 }
puts h.delete("a").inspect                            #=> 100
puts h.delete("z").inspect                            #=> nil
puts h.delete("z") {|el| "#{el} not found" }.to_s     #=> z not found