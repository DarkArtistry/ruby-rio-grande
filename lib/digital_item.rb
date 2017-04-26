# You are on your own... good luck.
class DigitalItem < Item
  def initialize(name,price)
    super(name,price)
    @quantity = 1
  end
  def sell(amount)
    if @quantity >= amount
      @quantity -= amount
      true
    else
      false
    end
  end

  def stock(amount)
    @quantity += amoungit
    true
  end

end
