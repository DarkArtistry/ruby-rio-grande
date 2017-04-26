require_relative 'spec_helper'
require_relative '../lib/cd'

describe Cd do
  before(:context) do
    @cd = Cd.new('Say my name', 7.00, 4, 'alvin', 10)
  end
  describe 'Initialization' do
    it 'should be a book' do
      expect(@cd).to be_instance_of(Cd)
    end

    it 'should be an item' do
      expect(@cd).to be_kind_of(Item)
    end

    it 'is assigned a name' do
      expect(@cd.name).to eq('Say my name')
    end

    it 'is assigned a price' do
      expect(@cd.price).to eq(7.00)
    end

    it 'is assigned tracks number ' do
      expect(@cd.tracks).to eq(4)
    end

    it 'is assigned an author' do
      expect(@cd.artist).to eq('alvin')
    end
    it 'is assigned an run time' do
      expect(@cd.runtime).to eq(10)
    end
  end

  # check getters and setters
  describe 'getters and setters' do
    it 'assigns and reads the name' do
      @cd.name = 'Blank'
      expect(@cd.name).to eq('Blank')
    end

    it 'assigns and reads the price' do
      @cd.price = 20.00
      expect(@cd.price).to eq(20.00)
    end

    it 'assigns and reads the tracks' do
      @cd.tracks = 2
      expect(@cd.tracks).to eq(2)
    end

    it 'assigns and reads the artist' do
      @cd.artist = 'Taylor Swift'
      expect(@cd.artist).to eq('Taylor Swift')
    end
    it 'assigns and reads the run time' do
      @cd.runtime = 4
      expect(@cd.runtime).to eq(4)
    end
  end

  describe 'methods' do
    it 'check if you can sell when there is no quantity' do
      expect(@cd.sell(1)).to eq false
    end

    it 'check if you are able to add stock' do
      @cd.stock(1)
      expect(@cd.quantity).to eq 1
    end

    it 'check if are able to sell' do
      @cd.sell(1)
      expect(@cd.quantity).to eq 0
    end
  end
end
