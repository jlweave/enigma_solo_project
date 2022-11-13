require './lib/enigma'


RSpec.describe Encrypt do
describe 'initialize' do
    it 'exists and has readable attributes' do
    encrypt = Encrypt.new
    enigma = Enigma.new
    expect(encrypt).to be_a(Encrypt)
    end
  end

  describe '#change_method' do
    it 'can take the shift key and return the correct letters' do
      encrypt = Encrypt.new
      enigma = Enigma.new
      expect(encrypt.change_method("hello world", "02715", "040895")).to be_a(String)
    end
  end


end