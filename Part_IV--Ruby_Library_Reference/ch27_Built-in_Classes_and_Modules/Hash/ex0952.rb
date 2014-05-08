# Sample code from Programing Ruby, page 474

h                                                   = { "a" => 100, "b" => 200, "c" => 300 }
puts h.delete_if {|key, value| key >= "b" }.to_s    #=> {"a"=>100}
puts h.to_s                                         #=> {"a"=>100}