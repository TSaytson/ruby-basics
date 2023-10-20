require 'io/console'

class Bank
  attr_reader :number, :total
  attr_writer :number, :total

  def initialize
    @number, @total = rand(10000), 0
  end

  def deposit(value)
    @total += value
    balance
  end

  def withdraw(value)
    @total -= value
    balance
  end

  def balance
    print "Balance: "
    print @total
  end

  # def number
  #   @number
  # end

  # def number=(value)
  #   @number = value
  # end
  
  # def total
  #   @total
  # end
  # def total=(value)
  #   @total = value
  # end
end

STDOUT.clear_screen
print "Welcome to RubyBank\n"
$bank = Bank.new
print "Your account number is: " + $bank.number.to_s + "\n"

begin
  option = 0
  print "\n"
  print "1 - Deposit\n"
  print "2 - Withdraw\n"
  print "3 - Balance\n"
  print "4 - Exit\n"
  option = gets.chomp.to_i

  case option
  when 1
    print "Value: "
    value = gets.chomp.to_i
    $bank.deposit(value)
  when 2
    print "Value: "
    value = gets.chomp.to_i
    $bank.withdraw(value)
  when 3
    $bank.balance
  else
    print "Invalid option"
  end
  
end until option == 4
