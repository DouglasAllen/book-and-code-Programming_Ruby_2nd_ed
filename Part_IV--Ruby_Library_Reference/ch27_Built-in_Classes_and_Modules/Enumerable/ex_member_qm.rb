
# member?(obj) → true or false
# include?(obj) → true or false
 
# Returns true if any member of enum equals obj. Equality is tested using ==.

# IO.constants.member? :SEEK_SET          #=> true
# IO.constants.member? :SEEK_NO_FURTHER   #=> false

(IO.constants.member? :SEEK_SET).send :display          #=> true
puts
(IO.constants.member? :SEEK_NO_FURTHER).send :display   #=> false
puts