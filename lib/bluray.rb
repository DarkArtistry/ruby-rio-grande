require_relative 'item.rb'

class Bluray < Item

  def initialize(name, price, runtime, director, producer)

    super(name, price)
    @runtime = runetime
    @director = director
    @producer = producer
    
  end

end
