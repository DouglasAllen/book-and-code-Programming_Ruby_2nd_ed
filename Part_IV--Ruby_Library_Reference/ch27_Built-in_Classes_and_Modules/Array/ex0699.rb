# Sample code from Programing Ruby, page 406

# only one instance of the default object is created
a = Array.new(2, Hash.new)
a[0]['cat'] = 'feline'
p a
a[1]['cat'] = 'Felix'
p a
