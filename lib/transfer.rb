class Transfer
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end
  def sender
    @sender
  end
  def receiver
    @receiver
  end
  def amount
    @amount
  end
  def status
    @status
  end
  def valid?
    self.sender.valid? && self.receiver.valid?
  end
  def execute_transaction
    if status != "complete"
      if self.valid?
        self.sender.deposit(-self.amount)
        self.receiver.deposit(self.amount)
        @status = "complete"
      end
    end
  end
end
