# first → obj or nil 
# first(n) → an_array 
# Returns the first element, or the first n elements, of the enumerable. If the enumerable is empty, 
# the first form returns nil, and the second form returns an empty array.

# %w[foo bar baz].first     #=> "foo"
# %w[foo bar baz].first(2)  #=> ["foo", "bar"]
# %w[foo bar baz].first(10) #=> ["foo", "bar", "baz"]
# [].first                  #=> nil

%w[foo bar baz].first.send :display     #=> "foo"
puts
%w[foo bar baz].first(2).send :display  #=> ["foo", "bar"]
puts
%w[foo bar baz].first(10).send :display #=> ["foo", "bar", "baz"]
puts
[].first.send :display                  #=> nil
puts