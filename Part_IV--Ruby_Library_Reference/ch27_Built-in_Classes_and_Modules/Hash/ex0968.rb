# Sample code from Programing Ruby, page 477

h                                                                 = { "a" => 100, "b" => 200 }
puts h.replace({ "c" => 300, "d" => 400 }).to_s                   #=> {"c"=>300, "d"=>400}