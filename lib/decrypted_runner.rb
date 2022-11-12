require_relative 'enigma'


read_file = ARGV[0].dup.prepend('./lib/')
write_file = ARGV[1].dup.prepend('./lib/')

enigma = Enigma.new

encrypted = enigma.encrypt(File.read(read_file))
File.write(write_file, encrypted[:encryption])
puts "something something something"