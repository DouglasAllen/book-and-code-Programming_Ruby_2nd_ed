# Sample code from Programing Ruby, page 475

h                                                 = { "a" => 100, "b" => 200 }
puts h.fetch("z").to_s                            #=> KeyError: key not found: z