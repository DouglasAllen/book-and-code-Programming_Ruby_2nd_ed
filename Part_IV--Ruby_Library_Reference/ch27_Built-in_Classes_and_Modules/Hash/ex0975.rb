# Sample code from Programing Ruby, page 479

h                                                      = { "a" => 100, "b" => 200, "c" => 300 }
puts h.values_at("a", "c").inspect                     #=> [100, 300]
puts h.values_at("a", "c", "z").inspect                #=> [100, 300, nil]
h.default = "cat"
puts h.values_at("a", "c", "z").inspect                #=> [100, 300, "cat"]

h                               = { "cat" => "feline", "dog" => "canine", "cow" => "bovine" }
puts h.values_at("cow", "cat").inspect                 #=> ["bovine", "feline"]
