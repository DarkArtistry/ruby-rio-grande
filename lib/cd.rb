require_relative 'item.rb'

class Cd < Item

  attr_accessor :name, :price, :tracks, :artist, :runtime
  attr_reader :quantity

  def initialize(name, price, tracks, artist, runtime)

    super(name, price)
    @tracks = tracks
    @artist = artist
    @runtime = runtime
  end
end
