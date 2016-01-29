class BankAccount
  @@interestRate = 6.5

  def getInterestRate()
    @@interestRate
  end

  attr_accessor :balance	
  def initialize (bal)
    @balance = bal
  end
end

ba = BankAccount.new(100.00)
puts ba.balance
puts ba.getInterestRate()

