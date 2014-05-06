browsers = ['Chrome', 'Firefox', 'Safari', 'Opera', 'IE']
puts browsers.length.inspect                       #=> 5
puts browsers.count.inspect                        #=> 5
puts browsers.size.inspect                         #=> 5

  # To check whether an array contains any elements at all

puts browsers.empty?                               #=> false

  # To check whether a particular item is included in the array

puts browsers.include?('Konqueror')                #=> false