require './lib/key'
require './lib/offset'
require './lib/enigma'
require './lib/shift_final'

RSpec.describe ShiftFinal do
  before (:each) do
    @shift_final = ShiftFinal.new(key, offset) #date?
  end

  describe '#initialize' do
    it 'exists and has readable attributes' do
      expect(@shift_final).to be_a(ShiftFinal)
    end
  end

  xdescribe '#' do
    it '' do
      #how do you test random numbers? .length?
    end
  end
end