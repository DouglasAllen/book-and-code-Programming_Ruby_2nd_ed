# Sample code from Programing Ruby, page 471

puts Hash["a", 100, "b", 200].to_s                               #=> {"a"=>100, "b"=>200}
puts Hash["a" => 100, "b" => 200].to_s                           #=> {"a"=>100, "b"=>200}
h                                                                = { "a" => 100, "b" => 200 }
puts h                                                           #=> { "a" => 100, "b" => 200 }                         
h                                                                = { a: 100, b: 200 }
puts h                                                           #=> {:a=>100, :b=>200}