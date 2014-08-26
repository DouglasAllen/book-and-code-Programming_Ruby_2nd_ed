# Sample code from Programing Ruby, page 406

# only one instance of the default object is created
@a = Array.new(2, Hash.new)
@a                             #=> [{}, {}]
@a[0]['cat'] = 'feline'
@a                             #=> [{"cat"=>"feline"}, {"cat"=>"feline"}]
@a[1]['cat'] = 'Felix'
@a                             #=> [{"cat"=>"Felix"}, {"cat"=>"Felix"}]