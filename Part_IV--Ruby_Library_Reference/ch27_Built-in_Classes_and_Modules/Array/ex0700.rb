# Sample code from Programing Ruby, page 406

a = Array.new(2) { Hash.new }  # Multiple instances
a[0]['cat'] = 'feline'
p a
a[1]['cat'] = 'Felix'
p a
