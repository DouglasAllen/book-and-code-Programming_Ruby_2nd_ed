# Sample code from Programing Ruby, page 408
@a                                     = [ "a", "b", "c", "d", "e" ]
@a[2] + @a[0] + @a[1]                  #=> "cab"
@a[6]                                  #=> nil
@a[1, 2]                               #=> ["b", "c"]
@a[1..3]                               #=> ["b", "c", "d"]
@a[4..7]                               #=> ["e"]
@a[6..10]                              #=> nil
@a[3, 3]                               #=> ["d", "e"]
