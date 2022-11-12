require_relative 'enigma'


read_file = ARGV[0].dup.prepend('./lib/')
write_file = ARGV[1].dup.prepend('./lib/')
key = ARGV[2]
date = ARGV[3]

enigma = Enigma.new

decrypted = enigma.decrypt(File.read(read_file), key, date)
File.write(write_file, decrypted[:decryption])
puts "Created #{ARGV[1]} with the key #{decrypted[:key]} and date #{decrypted[:offset]}"