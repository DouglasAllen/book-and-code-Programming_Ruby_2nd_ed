# Sample code from Programing Ruby, page 471

# While this creates a new default object each time
h                                       = Hash.new {|hash, key| hash[key] = "Go Fish: #{key}" }
puts h["c"].to_s                        #=> Go Fish: c
puts h["c"].upcase!.to_s                #=> GO FISH: C
puts h["d"].to_s                        #=> Go Fish: d
puts h.keys.to_s                        #=> ["c", "d"]
puts h.inspect                          #=> {"c"=>"GO FISH: C", "d"=>"Go Fish: d"}