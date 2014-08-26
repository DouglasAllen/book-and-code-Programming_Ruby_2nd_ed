# Sample code from Programing Ruby, page 406

# Multiple instances
@a = Array.new(2) { Hash.new }
@a                             #=> [{}, {}]
@a[0]['cat'] = 'feline'
@a                             #=> [{"cat"=>"feline"}, {}]
@a[1]['cat'] = 'Felix'
@a                             #=> [{"cat"=>"feline"}, {"cat"=>"Felix"}]

@b = Array.new(4) { |bae| bae = Hash.new }
@b
@b[0]['cat'] = 'feline'
@b
@b[1]['cat'] = 'Felix'
@b
@b.flatten
@b.inspect
@b[2]
@b.each {|bae| puts bae }
@cat_name = lambda {}
@cat_name
puts "Do you mean that there is a cat named Proc?"
@b[2]['cat'] = 'Proc'
puts "There is now. See? #{@b.inspect}"
puts "Does it have an id?"
puts @b[2].object_id
puts @cat_name.object_id
puts Object.new.object_id
puts Object.new.object_id
puts Object.new.object_id.to_s(16)