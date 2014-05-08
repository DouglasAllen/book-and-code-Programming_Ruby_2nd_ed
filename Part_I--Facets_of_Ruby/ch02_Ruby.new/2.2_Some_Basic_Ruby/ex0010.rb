# Sample code from Programing Ruby, page 11
# modified by non author
def say_goodnight(name)
  result = "Good night, " + name
  return result
end

# Time for bed at "The Waltons" house.
puts say_goodnight("John-Boy")                     #=> Good night, John-Boy
puts say_goodnight("Mary-Ellen")                   #=> Good night, Mary-Ellen

# You don't need semicolons at the ends
# of statements as long as you put each statement on a separate line.
# But you may use them if you want to.
def say_goodnight_again(name);result = "Good night, " + name;return result;end
puts say_goodnight_again("John-Boy")               #=> Good night, John-Boy
puts say_goodnight_again("Mary-Ellen")             #=> Good night, Mary-Ellen

def say_whatever str_sent;str_sent.send :display;end
say_whatever "Good night, John-Boy"
say_whatever "Well hello Mary-Ellen"
	