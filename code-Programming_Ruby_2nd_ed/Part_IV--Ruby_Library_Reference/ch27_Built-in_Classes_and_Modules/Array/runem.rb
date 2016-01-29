def get_binding(param)
  return binding
end

Dir.glob("*.*").each do |rb_file|  
  File.open(rb_file,"r") do |f|    
    f.readlines.each do |line|
      @lstr = ""
      @lstr << line.chomp << ";"
      #~ b = get_binding(line)
      #~ str = b.eval("param").chomp
      #~ instance_eval(str)      
    end    
  end
  puts rb_file
  puts instance_eval @lstr
end

