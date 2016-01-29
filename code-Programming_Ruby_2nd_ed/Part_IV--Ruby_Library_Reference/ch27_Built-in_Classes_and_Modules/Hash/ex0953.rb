# Sample code from Programing Ruby, page 474

h                                                           = { "a" => 100, "b" => 200 }
h.each {|key, value| puts "#{key} is #{value}" }            #=> a is 100
                                                            #=> b is 200