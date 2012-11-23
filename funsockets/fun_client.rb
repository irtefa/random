# socket() creates a new socket to connect to a server
# connect() Makes a network connection with specific IP address and port number

require 'socket'

host = 'localhost'
port = 5000

s = TCPSocket.open(host, port) # in this case open is equivalent to connect in C

while line = s.gets 
  puts line.chop
end

s.close
