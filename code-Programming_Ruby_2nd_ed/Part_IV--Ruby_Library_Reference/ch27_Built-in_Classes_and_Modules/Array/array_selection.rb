@arr = [1, 2, 3, 4, 5, 6]
@arr.select { |a| a > 3 }      #=> [4, 5, 6]
@arr.reject { |a| a < 3 }      #=> [3, 4, 5, 6]
@arr.drop_while { |a| a < 4 }  #=> [4, 5, 6]
@arr                           #=> [1, 2, 3, 4, 5, 6]

  # Similar to select vs. reject, delete_if and keep_if have the exact opposite result when
  # supplied with the same block:

@arr.delete_if { |a| a < 4 }  #=> [4, 5, 6]
@arr                          #=> [4, 5, 6]

@arr = [1, 2, 3, 4, 5, 6]
@arr.keep_if { |a| a < 4 }    #=> [1, 2, 3]
@arr                          #=> [1, 2, 3]