class Enigma

  def initialize

  end

  def encrypt(message, key, offset)
    encrypt_message = Encrypt.new.e_message(message, key, offset)
    return_hash = {
        message: e_message,
        key: key,
        offset: offset}
  end

  def decrypt()

  end
end