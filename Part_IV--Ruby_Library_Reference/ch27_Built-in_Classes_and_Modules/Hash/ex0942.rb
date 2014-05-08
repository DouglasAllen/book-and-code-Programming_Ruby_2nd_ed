# Sample code from Programing Ruby, page 471

h                                                               = Hash.new("Go Fish")
h["a"]                                                          = 100
h["b"]                                                          = 200
puts h["a"].to_s                                                #=> 100
puts h["c"].to_s                                                #=> Go Fish
# The following alters the single default object
puts h["c"].upcase!.to_s                                        #=> GO FISH
puts h["d"].to_s                                                #=> GO FISH
puts h.keys.to_s                                                #=> ["a", "b"]
puts h.inspect                                                  #=> {"a"=>100, "b"=>200}