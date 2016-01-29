# Sample code from Programing Ruby, page 415
puts [ "w", "x", "y", "z" ].last.inspect           #=> "z"
puts [ "w", "x", "y", "z" ].last(1).inspect        #=> ["z"]
puts [ "w", "x", "y", "z" ].last(3).inspect        #=> ["x", "y", "z"]