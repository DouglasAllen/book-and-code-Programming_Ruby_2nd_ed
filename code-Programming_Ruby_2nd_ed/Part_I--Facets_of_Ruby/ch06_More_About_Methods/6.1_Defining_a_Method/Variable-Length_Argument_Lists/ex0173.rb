# Sample code from Programing Ruby, page 75

def varargs(arg1, *rest)
  "Got #{arg1} and #{rest.join(', ')}"
end

p varargs("one")
p varargs("one", "two")
p varargs "one", "two", "three"
