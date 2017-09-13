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
end
