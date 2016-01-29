# Sample code from Programing Ruby, page 12
# modified by non author
# both lines are equivalent
# puts say_goodnight("John-Boy")
# puts(say_goodnight("John-Boy"))
# But you don't need parentheses at all
def say_goodnight(name);result = "Good night! " + name;return result;end
puts say_goodnight "Say good night John-Boy!" 