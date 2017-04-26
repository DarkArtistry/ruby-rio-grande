require_relative 'spec_helper'
require_relative '../lib/bluray'

describe Bluray do
  before(:context) do
    @b1 =  Bluray.new('Titanic',5.00,120,'Kenneth','Alvin')
  end
describe 'Initialization' do
  it 'should be an instance of Bluray' do
    expect(@b1).to be_instance_of(Bluray)
  end
  it 'should be an item' do
    expect(@b1).to be_kind_of(Item)
  end
  it 'is assigned a price' do
    expect(@b1.price).to eq(5.00)
  end

  it 'is assigned runtime' do
    expect(@b1.runtime).to eq(120)
  end

  it 'is assigned an director' do
    expect(@b1.director).to eq('Kenneth')
  end

  it 'is assigned an producer' do
    expect(@b1.producer).to eq('Alvin')
  end
end
describe 'getters and setters' do
  it 'assigns and reads the name' do
    @b1.name = 'Ghost Buster'
    expect(@b1.name).to eq('Ghost Buster')
  end

  it 'assigns and reads the price' do
    @b1.price = 10.00
    expect(@b1.price).to eq(10.00)
  end

  it 'assigns and reads the runtime' do
    @b1.run_time = 60
    expect(@b1.runtime).to eq(60)
  end

  it 'assigns and reads the director' do
    @b1.director = 'Mitchell'
    expect(@b1.author).to eq('Mitchell')
  end
  it 'assigns and reads the producer' do
    @b1.producer = 'Rey'
    expect(@b1.author).to eq('Rey')
  end
end
describe 'Methods' do
  it 'should be able to stock' do
    result = @b1.stock 5
    expect(result).to eq(true)
    expect(@b1.quantity).to eq(5)
  end
  it 'should not be able to sell more bluray than we have' do
    result = @b1.sell 6
    expect(result).to eq(false)
    expect(@b1.quantity).to eq(5)
  end
  it 'should be able to sell bluray and update quantity' do
    result = @b1.sell 3
    expect(result).to eq(true)
    expect(@b1.quantity).to eq(2)
  end
end
end


# check initialization
# check that it is an extended from Item
# check that it is an instance of Bluray
# check getters and setters
