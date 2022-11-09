require './lib/enigma'

#reading the file 
handle = File.open(ARGV[0], "r")
#message to be encrypted
incoming_text = handle.read
handle.close
#return e_message
writer = File.open(ARGV[1], "w")
#write to new file and output to terminal
writer.write()