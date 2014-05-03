# Sample code from Programing Ruby, page 406
# Multiple instances
        a = Array.new(2) { Hash.new }
        a[0]['cat'] = 'feline'
        a
        a[1]['cat'] = 'Felix'
        a

