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
to = TicketOffice.new
p to.sellTicket	        #=»	"Here is a ticket"
p to.allowSales(false)	#=»	false
p to.sellTicket	        #=»	"Sorry-come back tomorrow"
p to.allowSales(true)	#=»	true
p to.sellTicket	        #=»	"Here is a ticket"