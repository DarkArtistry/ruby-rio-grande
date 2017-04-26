require_relative 'item.rb'

class Bluray < Item

  attr_accessor :name, :price, :runtime, :director, :producer
  attr_reader :quantity

  def initialize(name, price, runtime, director, producer)

    super(name, price)
    @runtime = runtime
    @director = director
    @producer = producer

  end

end
