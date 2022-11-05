require 'date'
require './lib/offset'
require './lib/enigma'

RSpec.describe Offset do
  before (:each) do
    @offset = Offset.new(date)
  end

  describe "#initialize" do
    it 'exists and has readable attributes' do
      expect(@offset).to be_a(Offset)
      expect(@offset.date).to eq(current_time)
    end
  end

  describe '#square' do
    it 'takes a  squared number and gives back the last four digits' do
      expect(@offset.square.length).to eq(4)
    end
  end
end