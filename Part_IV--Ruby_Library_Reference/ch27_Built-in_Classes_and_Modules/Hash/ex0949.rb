# Sample code from Programing Ruby, page 473

h                                                              = { "a" => 100, "b" => 200 }
h.default                                                      = "Go fish"
puts h["a"].to_s                                               #=> 100
puts h["z"].to_s                                               #=> Go fish
# This doesn't do what you might hope...
h.default = proc do |hash, key|
  hash[key] = key + key
end
puts h[2].to_s                                                 #=> #<Proc:0x1781fdd@ex0949.rb:8>
puts h["cat"].to_s                                             #=> #<Proc:0x1781fdd@ex0949.rb:8>
puts h.default.to_s                                            #=> #<Proc:0xb85b52@ex0949.rb:8>