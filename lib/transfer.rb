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
      self.sender.balance - self.amount
      self.receiver.balance + self.amount
      self.status = "complete"
    end
  end
end
