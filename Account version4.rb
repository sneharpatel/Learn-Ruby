class Account
  def initialize(balance, name, phone_number)
    @balance=balance
    @name=name
    @phone_number=phone_number
  end

  def deposite(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance-= amount
  end

  def balance(value)
    @balance=value
  end

  def display()
    puts "Name:" + @name
    puts "Phone_number:" + @phone_number.to_s
    puts "Balance:" + @balance.to_s
  end

  def transfer(amount,target_account)
    @balance -= amount
    target_account.deposite(amount)
  end

  def status
    return @balance
  end
  def balance
    @balance
  end
end

#inheritance of Account class
class SavingsAccount < Account
  def initialize(balance,name,phone_number,interest,minimum)
    super(balance,name, phone_number)
    @interest =interest
    @minimum=minimum
  end

  def accumulate_interest
    @balance += @balance * @interest
  end

#method overriding
  def withdraw(amount)
    if (@balance - amount >= @minimum)
      @balance -= amount
    else
      puts "Balance can't drop below:" + @minimum.to_s
    end
  end
end

#for inheritance
account= SavingsAccount.new(200.00,"Reynolds",9694905555,0.015,150)
puts account.deposite(200)
puts account.withdraw(500)
Reynolds_account=Account.new(25,"Reynolds",8945364848)
puts account.transfer(400,Reynolds_account)
puts account.accumulate_interest
account.display

#for Account class
mary_account =Account.new(500,"Mary",443843264)
puts mary_account.balance
bob_account=Account.new(500,"Bob",5554787787)
mary_account.transfer(200,bob_account)
puts mary_account.balance
#puts mary_account.deposite(300)
puts mary_account.balance
puts mary_account.status
mary_account.display()
#puts mary_account.withdraw(400)
#bob_account.display()
#puts bob_account.deposite(200)
#puts bob_account.withdraw(100)


