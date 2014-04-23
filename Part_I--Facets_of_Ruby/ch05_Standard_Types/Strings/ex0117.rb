# Sample code from Programing Ruby, page 57
    class String
      def inspect
        to_s
      end
    end
"Seconds/day: #{24*60*60}\n".send(:display)
"#{'Ho! '*3}Merry Christmas!\n".send(:display)
$. = 10
"This is line #$.\n".send(:display)
