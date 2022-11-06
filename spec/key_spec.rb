require './lib/key'
require './lib/enigma'

RSpec.describe Key do
  before (:each) do
    @key = Key.randomizer
  end

  describe '#randomizer' do
    it 'give five random numbers' do
      expect(@key).to be_a String
      expect(@key.length).to eq(5)
    end
  end
end