class Transfer
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
  end
  def sender
    @sender
  end
  def receiver
    @receiver
  end
end
