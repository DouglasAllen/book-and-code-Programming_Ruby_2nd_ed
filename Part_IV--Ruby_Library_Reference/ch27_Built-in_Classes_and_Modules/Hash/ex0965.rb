# Sample code from Programing Ruby, page 476

h1                                                           = { "a" => 100, "b" => 200 }
h2                                                           = { "b" => 254, "c" => 300 }
puts h1.merge(h2).to_s                                       #=> {"a"=>100, "b"=>254, "c"=>300}
puts h1.merge(h2) {|k,o,n| o}.to_s                           #=> {"a"=>100, "b"=>200, "c"=>300}
puts h1.to_s                                                 #=> {"a"=>100, "b"=>200}