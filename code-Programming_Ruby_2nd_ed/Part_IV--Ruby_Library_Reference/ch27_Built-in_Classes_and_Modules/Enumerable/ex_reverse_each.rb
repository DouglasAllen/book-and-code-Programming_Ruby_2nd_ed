# reverse_each(*args) {|item| block } → enum  
# reverse_each(*args) → an_enumerator
 
# Builds a temporary array and traverses that array in reverse order.

# If no block is given, an enumerator is returned instead.

  # (1..3).reverse_each {|v| p v }

# produces:

  # 3
  # 2
  # 1
  
(1..3).reverse_each {|v| p v }.send :display
puts