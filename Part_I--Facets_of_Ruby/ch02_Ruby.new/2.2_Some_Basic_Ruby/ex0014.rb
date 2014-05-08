# Sample code from Programing Ruby, page 13
# modified by non author
def say_goodnight(name)
  result = "Good night, #{name}"
  return result
end
puts say_goodnight('Pa')
# Can we interpolate single quotes?
def say_goodnight(name)
  result = 'Good night, #{name}'
  return result
end
puts say_goodnight('Pa')