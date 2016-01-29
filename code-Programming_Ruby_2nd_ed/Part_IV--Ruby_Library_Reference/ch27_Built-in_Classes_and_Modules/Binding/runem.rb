def get_binding(param)
  return binding
end

Dir.glob("*.*").each do |rb_file|  
  File.open(rb_file,"r") do |f|    
    f.readlines.each do |line|
      puts line
      @lstr = []       
      b = get_binding(line)
      @lstr = b.eval("param")
      #~ puts @lstr
      #~ instance_eval(str)      
    end    
  end
  puts rb_file
  puts instance_eval @lstr
end

