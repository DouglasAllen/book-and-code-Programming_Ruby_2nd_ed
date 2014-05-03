Dir.glob("*.*").each do |i|
  puts i
  i != $PROGRAM_NAME ? File.open(i,"r") {|f| f.readlines.each {|l| puts instance_eval l }} : break
end