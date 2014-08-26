  # Note that this operation leaves the array unchanged.

@arr = [1, 2, 3, 4, 5]
@arr.each { |a| print a -= 10, " " }       # -9 -8 -7 -6 -5                                      
print "\n"

  # Another sometimes useful iterator is reverse_each which will iterate over the elements in
  # the array in reverse order.

@words = %w[first second third fourth fifth sixth]
@str = ""
@words.reverse_each { |word| @str += "#{word} " }
@str                                       #=> "sixth fifth fourth third second first "

  # The map method can be used to create a new array based on the original array, but with the
  # values modified by the supplied block:

@arr.map { |a| 2*a }                        
@arr                                       #=> [1, 2, 3, 4, 5]
@arr.map { |a| 2*a }                       #=> [2, 4, 6, 8, 10]
@arr.map! { |a| a**2 }                      
@arr                                       #=> [1, 4, 9, 16, 25]