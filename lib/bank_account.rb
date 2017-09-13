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
  @balance.dup.freeze
end

def status 
  @status.dup.freeze
end
end
