# Sample code from Programing Ruby, page 411
puts [ "a", "b", "c" ].eql?(["a", "b", "c"]).inspect #=> true
puts [ "a", "b", "c" ].eql?(["a", "b"]).inspect      #=> false
puts [ "a", "b", "c" ].eql?(["b", "c", "d"]).inspect #=> false
