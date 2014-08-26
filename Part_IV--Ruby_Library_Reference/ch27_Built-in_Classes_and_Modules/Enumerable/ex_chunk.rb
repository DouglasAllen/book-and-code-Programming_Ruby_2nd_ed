# chunk {|elt| ... } → an_enumerator
# chunk(initial_state) {|elt, state| ... } → an_enumerator 
# Creates an enumerator for each chunked elements. The consecutive elements which have 
# same block value are chunked.

# The result enumerator yields the block value and an array of chunked elements. So “each” 
# method can be called as follows.

# enum.chunk {|elt| key }.each {|key, ary| ... }
# enum.chunk(initial_state) {|elt, state| key }.each {|key, ary| ... }
# For example, consecutive even numbers and odd numbers can be splitted as follows.

# [3,1,4,1,5,9,2,6,5,3,5].chunk {|n|
  # n.even?
# }.each {|even, ary|
  # p [even, ary]
# }
# => [false, [3, 1]]
  # [true, [4]]
  # [false, [1, 5, 9]]
  # [true, [2, 6]]
  # [false, [5, 3, 5]]
[3,1,4,1,5,9,2,6,5,3,5].chunk {|n|
  n.even?
}.each {|even, ary|
  p [even, ary]
}  
# This method is especially useful for sorted series of elements. The following example counts 
# words for each initial letter.

# open("/usr/share/dict/words", "r:iso-8859-1") {|f|
  # f.chunk {|line| line.ord }.each {|ch, lines| p [ch.chr, lines.length] }
# }
# => ["\n", 1]
  # ["A", 1327]
  # ["B", 1372]
  # ["C", 1507]
  # ["D", 791]
  # ...
# open("/usr/share/dict/words", "r:iso-8859-1") {|f|
  # f.chunk {|line| line.ord }.each {|ch, lines| p [ch.chr, lines.length] }
# }  
# The following key values has special meaning:

  # nil and :_separator specifies that the elements are dropped.

  # :_alone specifies that the element should be chunked as a singleton.

# Other symbols which begins an underscore are reserved.

# nil and :_separator can be used to ignore some elements. For example, the sequence of 
# hyphens in svn log can be eliminated as follows.

# sep = "-"*72 + "\n"
# IO.popen("svn log README") {|f|
  # f.chunk {|line|
    # line != sep || nil
  # }.each {|_, lines|
    # pp lines
  # }
# }
# => ["r20018 | knu | 2008-10-29 13:20:42 +0900 (Wed, 29 Oct 2008) | 2 lines\n",
   # "\n",
   # "* README, README.ja: Update the portability section.\n",
   # "\n"]
  # ["r16725 | knu | 2008-05-31 23:34:23 +0900 (Sat, 31 May 2008) | 2 lines\n",
   # "\n",
   # "* README, README.ja: Add a note about default C flags.\n",
   # "\n"]
  # ...
sep = "-"*72 + "\n"
IO.popen("svn log README") {|f|
  f.chunk {|line|
    line != sep || nil
  }.each {|_, lines|
    pp lines
  }
}  
# paragraphs separated by empty lines can be parsed as follows.

# File.foreach("README").chunk {|line|
  # /\A\s*\z/ !~ line || nil
# }.each {|_, lines|
  # pp lines
# }
require 'pp'
File.foreach("README").chunk {|line|
  /\A\s*\z/ !~ line || nil
}.each {|_, lines|
  pp lines
}
puts
# :_alone can be used to pass through bunch of elements. For example, sort consecutive lines 
# formed as Foo#bar and pass other lines, chunk can be used as follows.

# pat = /\A[A-Z][A-Za-z0-9_]+\#/
# open(filename) {|f|
  # f.chunk {|line| pat =~ line ? $& : :_alone }.each {|key, lines|
    # if key != :_alone
      # print lines.sort.join('')
    # else
      # print lines.join('')
    # end
  # }
# }
pat = /\A[A-Z][A-Za-z0-9_]+\#/
filename = "README"
open(filename) {|f|
  f.chunk {|line| pat =~ line ? $& : :_alone }.each {|key, lines|
    if key != :_alone
      print lines.sort.join('')
    else
      print lines.join('')
    end
  }
}
puts
# If the block needs to maintain state over multiple elements, initial_state argument can be 
# used. If non-nil value is given, it is duplicated for each “each” method invocation of the 
# enumerator. The duplicated object is passed to 2nd argument of the block for “chunk” 
# method.
