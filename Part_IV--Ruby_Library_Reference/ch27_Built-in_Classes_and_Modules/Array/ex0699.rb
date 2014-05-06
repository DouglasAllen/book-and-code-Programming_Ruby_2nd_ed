# Sample code from Programing Ruby, page 406

# only one instance of the default object is created
a = Array.new(2, Hash.new)
puts a.inspect                             #=> [{}, {}]
a[0]['cat'] = 'feline'
puts a.inspect                             #=> [{"cat"=>"feline"}, {"cat"=>"feline"}]
a[1]['cat'] = 'Felix'
puts a.inspect                             #=> [{"cat"=>"Felix"}, {"cat"=>"Felix"}]