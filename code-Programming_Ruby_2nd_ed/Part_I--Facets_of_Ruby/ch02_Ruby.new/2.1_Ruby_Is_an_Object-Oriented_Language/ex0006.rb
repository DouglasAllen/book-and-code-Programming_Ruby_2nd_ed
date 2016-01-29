# Sample code from Programing Ruby, page 10
# modified by non author to view some things about these new objects

class Song
  # the special instance method known as a constructor
  # this is what the method .new() actually calls
  def initialize(a)
  end
end

# creating new objects
song1 = Song.new("Ruby Tuesday")
song2 = Song.new("Enveloped in Python")
# and so on


puts song1, song1.object_id, song1.object_id.to_s(16)
puts song2, song2.object_id, song2.object_id.to_s(16)

#puts song1.title
#puts song1.name