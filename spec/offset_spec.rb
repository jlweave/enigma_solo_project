require 'date'
require './lib/offset'
require './lib/enigma'

RSpec.describe Offset do
  before (:each) do
    @offset = Offset.square
  end

  describe "#square" do
    it 'returns date to a square' do
      expect(@offset).to be_a String
       expect(@offset.length).to eq(4)
    end
  end
end