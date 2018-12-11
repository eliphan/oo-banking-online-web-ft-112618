class BankAccount
  attr_accessor :balance, :status
  attr_reader :name
 def initialize(name)
  @name = name
  @balance = 1000
  @status = "open"
 end
 
 def display_balance
   "Your balance is $#{balance}."
 end

 def close_account
  self.balance = 0
  self.status = "closed"
 end
  
 def deposit(amount)
  self.balance += amount
 end
 
 def valid?
   balance > 0 && status == "open"
 end
 
end
