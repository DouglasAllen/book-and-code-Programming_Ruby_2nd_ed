# Sample code from Programing Ruby, page 53
# modified by non author

def n_times(thing)
  return lambda {|n| thing * n }  
end

p1 = n_times(23)
# puts p1
# puts p1.class
# puts p1.instance_variables.inspect
puts p1.call(3)
puts p1.call(4)

def x_times(object)
  lambda {|x| object * x }  
end
p2 = x_times("Hello ")
# puts p2
puts p2.call(3)
x = lambda { |arg| x_times(arg).call(2) }
puts x
puts x.call("I'm calling lambda x ")

l = lambda {|n| puts  "You called number #{n}. Lambdas are anonymous methods" }
l.call(6)
a = lambda {|n| puts  "I'm the first lambda" }
m = lambda {|n| puts "I.m the last lambda" }
ary = [a, l, m, x]
ary.each {|el| el.call(1) }
y = lambda {puts "I don't have any arguments to worry about"}
y.call
