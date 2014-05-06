# The following steps show how to convert a decimal number (only the whole
# numbers) to the equivalent binary number. The basic idea goes something like
# this:
# 1. Divide the number by 2.
# 2. The remainder is the bit value of the 2.0 position.
# 3. Divide the quotient by 2.
# 4. The remainder is the bit value of the 2.1 position.
# 5. Divide the quotient by 2.
# 6. The remainder is the bit value of the 2.2 position.
# 7. Repeat the procedure until you cannot divide any further, that is, until the
# quotient becomes 0.

n = 5.5
b20 = n % 2
q20 = n / 2
b21 = q20 % 2
q21 = q20 / 2
b22 = q21 % 2

puts b22, b21, b20
puts q21, q20, n

puts Integer(n).to_s(2)
puts Integer(n).to_s(3)
puts Integer(n).to_s(4)
puts Integer(5280).to_s(16)

puts Integer(299_792_458).to_s(16)
puts Integer(299_792_458).to_s(32)
puts Integer(299_792_458).to_s(33)
puts Integer(299_792_458).to_s(34)
puts Integer(299_792_458).to_s(35)
puts Integer(299_792_458).to_s(36)
