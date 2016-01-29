# Example 3 - delegate from existing object

require 'delegate'

class TicketSeller
  def sellTicket()
    return 'Here is a ticket'
  end
end

class NoTicketSeller
  def sellTicket()
    "Sorry-come back tomorrow"
   end
end

class TicketOffice < SimpleDelegator
  def initialize
    @seller = TicketSeller.new
    @noseller = NoTicketSeller.new
    super(@seller)
  end
  def allowSales(allow = true)
    __setobj__(allow ? @seller : @noseller)
    allow
  end
end

seller   = TicketSeller.new
noseller = NoTicketSeller.new
to = SimpleDelegator.new(seller)

p to.sellTicket	#=»	"Here's a ticket"
p to.sellTicket	#=»	"Here's a ticket"
p to.__setobj__(noseller)
p to.sellTicket	#=»	"Sorry-come back tomorrow"
p to.__setobj__(seller)
p to.sellTicket	#=»	"Here's a ticket"