# Sample code from Programing Ruby, page 434

# include?(obj) → true or false click to toggle source 
# member?(obj) → true or false 
# Returns true if any member of enum equals obj. Equality is tested using ==.

# IO.constants.include? :SEEK_SET          #=> true
# IO.constants.include? :SEEK_NO_FURTHER   #=> false
        
  IO.constants.include? "SEEK_SET".send :display
  puts
  IO.constants.include? "SEEK_NO_FURTHER".send :display
  puts
