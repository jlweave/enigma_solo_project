require_relative 'offset'
require_relative 'key'
require_relative 'shift_final'

class Enigma

  def once_around(index)
    index >= 27 ? (index %27) : index
  end

  def check_shift_index(index)
    index > 3 ? (index %4) : index
  end

  def change_method(message, key = Key.randomizer, offset = Offset.current_time)
    e_message = ShiftFinal.new(key, offset)
    shift_array = e_message.shift_final_key.values
    new_message = []
    message.split("").to_a.each_with_index do |word, index|
      shift_index = check_shift_index(index)
      first_index = (e_message.alphabet.index(word) + (shift_array[shift_index]) %27)
        new_index = once_around(first_index)
        new_char = e_message.alphabet[new_index]
        new_message << new_char
    end
    new_message.join
  end

  def encrypt(message, key = Key.randomizer, offset = Offset.current_time)
    encrypt_message = change_method(message.downcase, optional_2 = key,optional_1 = offset)
    return_hash = {
       encryption: encrypt_message,
        key: key,
        offset: offset}
  end

  def method_change(message, key = Key.randomizer, offset = Offset.current_time)
    e_message = ShiftFinal.new(key, offset)
    shift_array = e_message.shift_final_key_decrypt.values
    new_message = []
    message.split("").to_a.each_with_index do |word, index|
      shift_index = check_shift_index(index)
      first_index = (e_message.alphabet.index(word) + (shift_array[shift_index]) %27)
        new_index = once_around(first_index)
        new_char = e_message.alphabet[new_index]
        new_message << new_char
    end
    new_message.join
  end

  def decrypt(message, key, offset = Offset.current_time)
    decrypt_message =  method_change(message, key, optional_1 = offset)
    hash_return = {
      decryption: decrypt_message,
      key: key,
      offset: offset
    }
  end
end