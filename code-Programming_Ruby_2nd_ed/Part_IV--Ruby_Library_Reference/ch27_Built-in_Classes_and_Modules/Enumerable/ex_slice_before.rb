# slice_before(pattern) → an_enumerator 
# slice_before {|elt| bool } → an_enumerator 
# slice_before(initial_state) {|elt, state| bool } → an_enumerator
 
# Creates an enumerator for each chunked elements.
# The beginnings of chunks are defined by _pattern_ and the block.
# If _pattern_ === _elt_ returns true or
# the block returns true for the element,
# the element is beginning of a chunk.

# The === and block is called from the first element to the last element
# of _enum_.
# The result for the first element is ignored.

# The result enumerator yields the chunked elements as an array for +each+
# method.
# +each+ method can be called as follows.

  # enum.slice_before(pattern).each {|ary| ... }
  # enum.slice_before {|elt| bool }.each {|ary| ... }
  # enum.slice_before(initial_state) {|elt, state| bool }.each {|ary| ... }

# Other methods of Enumerator class and Enumerable module,
# such as map, etc., are also usable.

# For example, iteration over ChangeLog entries can be implemented as
# follows.

##  iterate over ChangeLog entries.
  # open("ChangeLog") {|f|
    # f.slice_before(/\A\S/).each {|e| pp e}
  # }

##  same as above.  block is used instead of pattern argument.
  # open("ChangeLog") {|f|
    # f.slice_before {|line| /\A\S/ === line }.each {|e| pp e}
  # }
# “svn proplist -R” produces multiline output for each file. They can be chunked as follows:

  # IO.popen([{"LC_ALL"=>"C"}, "svn", "proplist", "-R"]) {|f|
    # f.lines.slice_before(/\AProp/).each {|lines| p lines }
  # }
  # => ["Properties on '.':\n", "  svn:ignore\n", "  svk:merge\n"]
    # ["Properties on 'goruby.c':\n", "  svn:eol-style\n"]
    # ["Properties on 'complex.c':\n", "  svn:mime-type\n", "  svn:eol-style\n"]
    # ["Properties on 'regparse.c':\n", "  svn:eol-style\n"]
    # ...

# If the block needs to maintain state over multiple elements,
# local variables can be used.
# For example, three or more consecutive increasing numbers can be squashed
# as follows:

  # a = [0,2,3,4,6,7,9]
  # prev = a[0]
  # p a.slice_before {|e|
    # prev, prev2 = e, prev
    # prev2 + 1 != e
  # }.map {|es|
    # es.length <= 2 ? es.join(",") : "#{es.first}-#{es.last}"
  # }.join(",")
  # => "0,2-4,6,7,9"

# However local variables are not appropriate to maintain state
# if the result enumerator is used twice or more.
# In such case, the last state of the 1st +each+ is used in 2nd +each+.
# _initial_state_ argument can be used to avoid this problem.
# If non-nil value is given as _initial_state_,
# it is duplicated for each "each" method invocation of the enumerator.
# The duplicated object is passed to 2nd argument of the block for
# +slice_before+ method.

##  word wrapping.
##  this assumes all characters have same width.
  # def wordwrap(words, maxwidth)
    ## if cols is a local variable, 2nd "each" may start with non-zero cols.
    # words.slice_before(cols: 0) {|w, h|
      # h[:cols] += 1 if h[:cols] != 0
      # h[:cols] += w.length
      # if maxwidth < h[:cols]
        # h[:cols] = w.length
        # true
      # else
        # false
      # end
    # }
  # end
  # text = (1..20).to_a.join(" ")
  # enum = wordwrap(text.split(/\s+/), 10)
  # puts "-"*10
  # enum.each {|ws| puts ws.join(" ") }
  # puts "-"*10
  # => ----------
    # 1 2 3 4 5
    # 6 7 8 9 10
    # 11 12 13
    # 14 15 16
    # 17 18 19
    # 20
    # ----------
# mbox contains series of mails which start with Unix From line. So each mail can be extracted by slice before Unix From line.

## parse mbox
# open("mbox") {|f|
  # f.slice_before {|line|
    # line.start_with? "From "
  # }.each {|mail|
    # unix_from = mail.shift
    # i = mail.index("\n")
    # header = mail[0...i]
    # body = mail[(i+1)..-1]
    # body.pop if body.last == "\n"
    # fields = header.slice_before {|line| !" \t".include?(line[0]) }.to_a
    # p unix_from
    # pp fields
    # pp body
  # }
# }

## split mails in mbox (slice before Unix From line after an empty line)
# open("mbox") {|f|
  # f.slice_before(emp: true) {|line,h|
    # prevemp = h[:emp]
    # h[:emp] = line == "\n"
    # prevemp && line.start_with?("From ")
  # }.each {|mail|
    # mail.pop if mail.last == "\n"
    # pp mail
  # }
# }

a = [0,2,3,4,6,7,9]
prev = a[0]
p a.slice_before {|e|
  prev, prev2 = e, prev
  prev2 + 1 != e
  }.map {|es|
    es.length <= 2 ? es.join(",") : "#{es.first}-#{es.last}"
  }.join(",")
                 