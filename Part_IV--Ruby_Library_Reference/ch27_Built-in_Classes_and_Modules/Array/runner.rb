
Dir.glob("*.*").each do |rb_file|
  p rb_file	
  File.open(rb_file,"r") do |f|    
    f.readlines.each do |line|
       print eval(line).inspect, "\n"
    end    
  end  
end

