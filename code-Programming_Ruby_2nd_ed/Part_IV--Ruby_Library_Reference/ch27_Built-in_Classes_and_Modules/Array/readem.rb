Dir.glob("*.*").each do |i|  
  file = File.open(i,"r")
  line = file.readlines.each
  arr = line.to_a
  
  for n in 0..arr.size    
    unless arr[n].nil?
      instance_eval <<-es 
        puts arr[n]
      es
    end
  end
end