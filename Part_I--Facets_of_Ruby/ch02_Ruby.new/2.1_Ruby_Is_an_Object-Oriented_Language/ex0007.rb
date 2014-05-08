# Sample code from Programing Ruby, page 10
# modified by non author
# we may make these variables
song = 1
sam = ""

# a method
def sam.play(a)
  "duh dum, da dum de dum ..."
end

# an instance of a String class sending it to length method
"gin joint".length
puts "gin joint".length.inspect          #=> 9
puts "gin joint".length.class            #=> Fixnum
puts "gin joint".class                   #=> String

# an instance of a String class sending it to index() method
"Rick".index("c")
puts "Rick".index("c").inspect           #=> 2 # at what index is "c"?
puts "Rick".index("c").class.inspect     #=> Fixnum
# an instance of a Fixnum class sending to abs method which returns absolute values 
-1942.abs
puts -1942.abs                           #=> 1942
puts -1942.abs.class                     #=> Fixnum
# send to our method here above
sam.play(song)
puts sam.play(song).inspect              #=> "duh dum, da dum de dum ..."
puts sam.play(song).class.inspect        #=> String
puts self                                #=> Who's doing all this work?