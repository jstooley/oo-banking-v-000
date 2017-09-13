class BankAccount

def initialize(name)
  @name = name
  @balance = 1000
  @status = "open"
end

def name
  @name.dup.freeze
end

def balance
  @balance
end

def status
  @status.dup.freeze
end

def deposit(amount)
  @balance += amount
end

def display_balance
  "Your balance is #{@balance}."
end
end
