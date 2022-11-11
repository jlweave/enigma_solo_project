class EncryptRunner

  def read_and_write
    content = File.read(ARGV[0])
    File.write(ARGV[1], content)

    puts "how am I suppose to get the keyyyy"
  end
  # handle = File.open(ARGV[0], "r")
  # incoming_text = handle.read
  # handle.close
  # capitalized_text = incoming_text.upcase
  # writer = File.open(ARGV[1], "w")
  # writer.write(capitalized_text)
  # writer.close
end


EncryptRunner.new.read_and_write