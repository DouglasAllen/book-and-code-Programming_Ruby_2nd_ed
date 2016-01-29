# Sample code from Programing Ruby, page 436
# The current implementation of sort_by generates an array of tuples containing the original
# collection element and the mapped value. This makes sort_by fairly expensive when the
# key sets are simple

# require 'benchmark'

# a = (1..100000).map {rand(100000)}

# Benchmark.bm(10) do |b|
  # b.report("Sort")    { a.sort }
  # b.report("Sort by") { a.sort_by {|a| a} }
# end
# produces:

# user     system      total        real
# Sort        0.180000   0.000000   0.180000 (  0.175469)
# Sort by     1.980000   0.040000   2.020000 (  2.013586)

# However, consider the case where comparing the keys is a non-trivial operation. The 
# following code sorts some files on modification time using the basic sort method.

# files = Dir["*"]
# sorted = files.sort {|a,b| File.new(a).mtime <=> File.new(b).mtime}
# sorted   #=> ["mon", "tues", "wed", "thurs"]

# This sort is inefficient: it generates two new File objects during every comparison. A slightly
# better technique is to use the Kernel#test method to generate the modification times 
# directly.

# files = Dir["*"]
# sorted = files.sort { |a,b|
  # test(M, a) <=> test(M, b)
# }
# sorted   #=> ["mon", "tues", "wed", "thurs"]

# This still generates many unnecessary Time objects. A more efficient technique is to cache 
# the sort keys (modification times in this case) before the sort. Perl users often call this
# approach a Schwartzian Transform, after Randal Schwartz. We construct a temporary array, 
# where each element is an array containing our sort key along with the filename. We sort this 
# array, and then extract the filename from the result.

# sorted = Dir["*"].collect { |f|
   # [test(M, f), f]
# }.sort.collect { |f| f[1] }
# sorted   #=> ["mon", "tues", "wed", "thurs"]

# This is exactly what sort_by does internally.

# sorted = Dir["*"].sort_by {|f| test(M, f)}
# sorted   #=> ["mon", "tues", "wed", "thurs"]

require 'benchmark'
include Benchmark

a = (1..100000).map {rand(100000)}
a.send :display
bm(10) do |b|
  b.report("Sort")    { a.sort }
  b.report("Sort by") { a.sort_by {|a| a} }
end
