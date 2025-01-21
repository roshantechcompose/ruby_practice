module TransactionLogger
  def transaction
    if @balance >= @withdrawamount and @balance!= 0
       @balance = @balance - @withdrawamount
       puts "Withdraw: $#{@withdrawamount}. New balance: $#{@balance}."
       @transactions = @withdrawamount
       @totalWithdraw = @totalWithdraw + @transactions
    else
      puts "Insufficient funds. Current balance: $#{@balance}."
    end
  end
end

class BankAccount
  include TransactionLogger
  def initialize
    @balance = 0.0
    @transactions = 0.0
    @totalWithdraw = 0.0
  end

  def deposit(amount)
    @deposit = amount
    @balance = @balance + @deposit
    puts "Deposit: $#{amount}. New balance: $#{@balance}."
  end

  def withdraw(amount)
    @withdrawamount = amount
    transaction
  end

  def check_balance
    puts "Current Balance: $#{@balance}."
  end

  def print_transactions
    puts "Transaction Log:"
    puts "Deposited: $#{@deposit}"
    puts "Withdrew: $#{@totalWithdraw} "
  end
end


account = BankAccount.new
account.deposit(100.00)
account.withdraw(30.00)
account.check_balance
account.withdraw(100.00)
account.check_balance
account.print_transactions
