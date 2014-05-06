# Sample code from Programing Ruby, page 417
args                                               = [ "m", "q", "filename" ]
puts args.shift.inspect                            #=> "m"
puts args.inspect                                  #=> ["q", "filename"]