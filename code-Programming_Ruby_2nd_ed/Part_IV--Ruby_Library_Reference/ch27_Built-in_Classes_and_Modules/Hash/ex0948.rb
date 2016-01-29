# Sample code from Programing Ruby, page 473

h                                                          = Hash.new
puts h.default.inspect                                     #=> nil
puts h.default(2).inspect                                  #=> nil

h                                                          = Hash.new("cat")
puts h.default.to_s                                        #=> cat
puts h.default(2).to_s                                     #=> cat

h                                                          = Hash.new {|h,k| h[k] = k.to_i*10}
puts h.default.inspect                                     #=> nil
puts h.default(2).inspect                                  #=> 20
puts h.inspect                                             #=> {2=>20}