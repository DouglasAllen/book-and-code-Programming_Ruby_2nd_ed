# Sample code from Programing Ruby, page 478

h                                                      = { "a" => 100, "b" => 200, "c" => 300 }
puts h.select {|k,v| k > "a"}.to_s                     #=> {"b"=>200, "c"=>300}
puts h.select {|k,v| v < 200}.to_s                     #=> {"a"=>100}