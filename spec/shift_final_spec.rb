require './lib/key'
require './lib/offset'
require './lib/enigma'
require './lib/shift_final'

RSpec.describe ShiftFinal do
  before (:each) do
    key = Key.randomizer
    offset = Offset.square
    @shift_final = ShiftFinal.new(key, offset)
  end

  describe '#initialize' do
    it 'exists and has readable attributes' do
      # require 'pry'; binding.pry
      expect(@shift_final).to be_a(ShiftFinal)
    end
  end

end