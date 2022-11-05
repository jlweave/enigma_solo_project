require './lib/key'
require './lib/enigma'

RSpec.describe Key do
  before (:each) do
    @key = Key.new
  end

  describe '#initialize' do
    it 'exists and has readable attributes' do
      expect(@key).to be_a(Key)
    end
  end

  describe '#randomizer' do
    it 'give five random numbers' do
      expect(@key.randomizer).to be_a String
    end
  end
end