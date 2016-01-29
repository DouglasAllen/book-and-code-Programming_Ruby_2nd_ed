# Sample code from Programing Ruby, page 472

h1                                               = { "a" => 1, "c" => 2 } 
h2                                               = { 7 => 35, "c" => 2, "a" => 1 }
h3                                               = { "a" => 1, "c" => 2, 7 => 35 }
h4                                               = { "a" => 1, "d" => 2, "f" => 35 }
puts (h1 == h2).to_s                             #=> false
puts (h2 == h3).to_s                             #=> true
puts (h3 == h4).to_s                             #=> false