class BankAccount
  attr_reader :balance, :account_number, :customer_id

  ALL = []

  def initialize(account_number, customer_id)
    @account_number = account_number
    @customer_id = customer_id
    
    @balance = 0
    ALL << self
  end

  def deposit(amt)
    @balance += amt
  end

  def widthdraw(amt)
    if @balance - amt > 0
      @balance -= amt
    else
      puts "not enough money :("
      @balance
    end
  end

  def self.all
    ALL
  end
end
