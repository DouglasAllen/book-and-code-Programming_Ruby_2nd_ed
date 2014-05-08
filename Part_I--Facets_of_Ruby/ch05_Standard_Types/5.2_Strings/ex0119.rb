# Sample code from Programing Ruby, page 58
    class String
      def inspect
        to_s
      end
    end
p %q/general single-quoted string/
p %Q!general double-quoted string!
p %Q{Seconds/day: #{24*60*60}}
