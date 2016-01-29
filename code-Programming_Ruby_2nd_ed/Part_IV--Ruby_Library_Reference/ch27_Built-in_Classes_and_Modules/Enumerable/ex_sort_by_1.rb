# Sample code from Programming Ruby, page 437

words = %w{ puma cat bass ant aardvark gnu fish }
words.send :display
puts
sorted = words.sort_by {|w| [w.length, w] }
sorted.send :display
puts
sorted
