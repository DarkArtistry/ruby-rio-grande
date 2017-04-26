require_relative 'spec_helper'
require_relative '../lib/digital_item'

describe DigitalItem do
  before(:context) do
    @d1 = DigitalItem.new('Avengers', 5.00)
end
describe 'Initialization' do
  it 'is an instance of the Item class' do
    expect(@d1).to be_instance_of(DigitalItem)
  end
  it 'should be an item' do
    expect(@d1).to be_kind_of(Item)
  end
  it 'is assigned a price' do
    expect(@d1.price).to eq(5.00)
  end
  it 'is assigned a name' do
    expect(@d1.name).to eq('Avengers')
  end
  describe 'getters and setters' do
    it 'assigns and reads the name' do
      @d1.name = 'Justice league'
      expect(@d1.name).to eq('Justice league')
    end
    it 'assigns and reads the price' do
      @d1.price = 6.00
      expect(@d1.price).to eq(6.00)
    end
end
describe 'Methods' do
  it 'quantity should always be 1' do
    expect(@d1.quantity).to eq(1)
  end
  it 'stock should not increase after stock' do
    result = @d1.stock 2
    expect(@d1.quantity).to eq(1)
  end
  it 'quantity should not decrease after being sold' do
    result = @d1.sell 6
    expect(@d1.quantity).to eq(1)
  end
end
end
end
