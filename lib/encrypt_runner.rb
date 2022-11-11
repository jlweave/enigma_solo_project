require "./enigma.rb"

class EncryptRunner
  attr_reader :file

  def reader_file(message)
    encrypted_file = File.open(ARGV[0], "r")
    encrypt_message = encrypted_file.read
    encrypted_file.close
  end

  def file_writer(message)
    enigma = Enigma.new
    file = File.open(ARGV[0], "r")
    message_txt = file.read
    message = enigma.encrypt(message_txt)
    file = File.open(ARGV[1], "w")
    file.write(message)
    puts "something #{ARGV[1]} key:#{message.length}, something something"
    file.close
  end
  

  # handle = File.open(ARGV[0], "r")
  # incoming_text = handle.read
  # handle.close
  # capitalized_text = incoming_text.upcase
  # writer = File.open(ARGV[1], "w")
  # writer.write(capitalized_text)
  # writer.close
end
#  File.write(ARGV[1], content)

    # puts "how am I suppose to get the keyyyy"

encrypt_runner = EncryptRunner.new
encrypt_runner.reader_file(ARGV[0])
encrypt_runner.file_writer(ARGV[1])
