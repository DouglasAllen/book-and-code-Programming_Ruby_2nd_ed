# Sample code from Programing Ruby, page 116

module Test
  State = {}
  def state=(value)
    #~ p object_id.to_s(16)
    State[object_id] = value
  end
  def state
    State[object_id]
  end
end

class Client
  include Test
end

p c1 = Client.new
p c2 = Client.new
p c1.object_id.to_s(16)
c1.state = 'cat'
p c2.object_id.to_s(16)
c2.state = 'dog'

p c1.state
p c2.state


