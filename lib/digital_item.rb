# You are on your own... good luck.
class DigitalItem < Item
  def initialize(name,price)
    super(name,price)
  end
  def sell(amount)
    if @quantity >= amount
      true
    else
      falsegit
    end
  end

  def stock(amount)
    @quantity += amount
    true
  end

end
