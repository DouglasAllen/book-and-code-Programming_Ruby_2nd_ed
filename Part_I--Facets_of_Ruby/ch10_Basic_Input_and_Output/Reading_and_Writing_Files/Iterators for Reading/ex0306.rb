# Sample code from Programing Ruby, page 123
# read into string
str = IO.read("testfile")
p str.length
p str[0, 30]

# read into an array
arr = IO.readlines("testfile")
p arr.length
p arr[0]
