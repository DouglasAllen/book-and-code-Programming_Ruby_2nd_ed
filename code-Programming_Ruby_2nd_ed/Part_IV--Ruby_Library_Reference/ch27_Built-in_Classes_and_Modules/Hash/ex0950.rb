# Sample code from Programing Ruby, page 473

h                                                   = Hash.new {|h,k| h[k] = k*k }
puts h.inspect                                      #=> {}
p = h.default_proc                                  
puts p.inspect                                      #=> #<Proc:0x25249a@ex0950.rb:3>
a = []
puts p.call(a, 4).to_s                              #=> 16 
puts a.to_s                                         #=> [nil, nil, nil, nil, 16]
puts h.inspect                                      #=> {}