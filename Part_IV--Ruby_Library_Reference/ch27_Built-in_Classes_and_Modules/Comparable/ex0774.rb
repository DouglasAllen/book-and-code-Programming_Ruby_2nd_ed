# Sample code from Programing Ruby, page 426

 class CompareOnSize
  include Comparable
  attr :str
  def <=>(other)
    str.length <=> other.str.length
  end
  def initialize(str)
    @str = str
  end
  def inspect 
    @str.inspect
  end
 end

 s1 = CompareOnSize.new("Z")
 s2 = CompareOnSize.new([1,2])
 s3 = CompareOnSize.new("XXX")

puts (s1 < s2).inspect           #=> true
puts s2.between?(s1, s3).inspect #=> true
puts s3.between?(s1, s2).inspect #=> false
puts [ s3, s2, s1 ].sort.inspect #=> ["Z", [1, 2], "XXX"]
