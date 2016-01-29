# Sample code from Programing Ruby, page 412
a                                                  = [ 11, 22, 33, 44 ]
puts a.fetch(1).inspect                            #=> 22
puts a.fetch(3).inspect                            #=> 44
puts a.fetch(3,'cat').inspect                      #=> 44
puts a.fetch(3) {|i| i*i }.inspect                 #=> 44
puts a.fetch(4,'cat').inspect                      #=> "cat"
puts a.fetch(4) {|i| i*i }.inspect                 #=> 16