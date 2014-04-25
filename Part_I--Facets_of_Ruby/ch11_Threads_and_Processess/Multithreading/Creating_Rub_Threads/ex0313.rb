# Sample code from Programing Ruby, page 128

require 'net/http'

#~ pages = %w( www.rubycentral.com  slashdot.org  www.google.com )
pages = %w(\
http://usdrama.net/play.php?tid=lkttwz|nkntzwzenv \
https://www.ruby-toolbox.com/categories/packaging_to_executables \
http://www.erikveen.dds.nl/distributingrubyapplications/ \
http://rubyonwindows.blogspot.com/2009/05/ocra-one-click-ruby-application-builder.html \
http://ocra.rubyforge.org/ \
http://code.activestate.com/lists/ruby-talk/43859/ \
http://stackoverflow.com/questions/4512149/is-there-a-way-to-convert-ruby-scripts-to-executablelinuxmint \
https://www.ruby-forum.com/topic/4417944 \
http://www.srinivasprabhu.com/blog/2013/07/26/ruby-to-exe-converter/ \
http://www.fincher.org/tips/Languages/Ruby/ \
http://rubyforge.org/frs/?group_id=167 \
http://stackoverflow.com/questions/1515012/is-it-possible-to-convert-a-ruby-script-to-an-exe-so-that-the-source-code-is-no \
http://www.erikveen.dds.nl/rubyscript2exe/ \
http://ruby.11.x6.nabble.com/Convert-ruby-rb-to-msdos-exe-file-td3314851.html \
http://watirmelon.com/2013/05/14/packaging-a-ruby-script-as-an-windows-exe-using-ocra/ \
http://ruby-gnome2.sourceforge.jp/hiki.cgi?tips_rubyscript2exe \
https://groups.google.com/forum/#!topic/watir-general/TuJ1ukdpuUQ \
https://www.ruby-forum.com/topic/187340 \
http://raveendran.wordpress.com/2007/08/02/rubyscript-2-exe-conversion/ \
https://www.ruby-forum.com/topic/2541181 \
https://www.ruby-forum.com/topic/3548094#1143912)
threads = []

for page_to_fetch in pages

  threads << Thread.new(page_to_fetch) do |url|

    h = Net::HTTP.new(url, 80)
    
    puts "Fetching: #{url}"
    
    resp = h.get('/')
    
    puts "Got #{url}:  #{resp.message}"

  end

end

threads.each {|thr|  thr.join }
