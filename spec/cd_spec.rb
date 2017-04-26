require_relative 'spec_helper'
require_relative '../lib/cd'

describe Cd do
  before(:context) do
    @cd = Cd.new('Say my name', 7.00, tracks, artist, runtime)
  end

  # check initialization
  # check that it is an extended from Item
  # check that it is an instance of Cd
  # check getters and setters
end
