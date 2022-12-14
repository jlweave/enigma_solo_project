require 'date'
require './lib/key'
require './lib/offset'
require './lib/enigma'
require './lib/shift_final'

RSpec.describe Enigma do
  describe 'initialize' do
    it 'exists and has readable attributes' do
    enigma = Enigma.new
    end
  end

  describe '#change_method' do
    it 'can take the shift key and return the correct letters' do
      enigma = Enigma.new
      expect(enigma.change_method("hello world", "02715", "040895")).to be_a(String)
    end
  end
  
  describe '#encrypt' do
    it 'can encrypt a message with a key and date' do
      enigma = Enigma.new
      expect(enigma.encrypt("hello world", "02715", "040895")). to eq({
        encryption: "keder ohulw",
        key: "02715",
        offset: "040895"
      })
      expect(encrypted = enigma.encrypt("hello world", "02715")).to be_a(Hash)
      expect(enigma.encrypt("hello world")).to be_a(Hash)
    end
  end

  describe '#method_change' do
    it 'can take the shift key and return the correct letters' do
      enigma = Enigma.new
      expect(enigma.method_change("keder ohulw", "02715", "040895")).to be_a(String)
    end
  end

  describe '#decrypt' do
    it 'can decrypt a message with a key and date' do
      enigma = Enigma.new
      expect(enigma.decrypt("keder ohulw", "02715", "040895")).to eq({
        decryption: "hello world",
        key: "02715",
        offset: "040895"
      })
      expect(enigma.decrypt("keder ohulw", "02715")).to be_a(Hash)
    end
  end

end


