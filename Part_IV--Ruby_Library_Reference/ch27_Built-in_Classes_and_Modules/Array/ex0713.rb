# Sample code from Programing Ruby, page 409
s1                                                 = [ "colors", "red", "blue", "green" ]
s2                                                 = [ "letters", "a", "b", "c" ]
s3                                                 = "foo"
a                                                  = [ s1, s2, s3 ]
puts a.assoc("letters").inspect                    #=> ["letters", "a", "b", "c"]
puts a.assoc("foo").inspect                        #=> nil