#!/usr/bin/env ruby

class Account
  attr_reader :name, :balance

  def initialize name, balance=100
    @name    = name
    @balance = balance
  end

  public

  def display_balance pin_number
    puts pin_number == pin ? "Balance: $#{@balance}." : pin_error
  end

  def deposit pin_number, amount
    if pin_number == pin
      @balance += amount
      puts "Deposited $#{amount}. New balance: $#{@balance}."
    else
      puts pin_error
    end
  end

  def withdraw pin_number, amount
    if pin_number != pin
      puts pin_error
    elsif amount > @balance
      puts "Requested withdrawal amount ($#{amount}) exceeds current " +
           "balance ($#{@balance})."
    else
      @balance -= amount
      puts "Withdrew $#{amount}. New balance: $#{@balance}."
    end
  end

  private

  def pin
    @pin = 1234
  end

  def pin_error
    "Access denied: incorrect PIN."
  end
end

checking_account = Account.new("Steve Jones", 1000)
checking_account.withdraw 12345, 200
checking_account.withdraw 1234, 200
checking_account.deposit 1234, 100
checking_account.withdraw 1234, 1000

