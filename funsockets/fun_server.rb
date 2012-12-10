# socket() opens a socket for a protol
# bind() binds to a specific port
# listen() waits for a client
# accept() accepts a client

require 'socket'

server = TCPServer.open(5000)

loop{
  client = server.accept       # waits for a connection and then accepts
  client.puts("Hi Tuganai!") # Send a message to the client
  client.close                 # Closes connection with the client
}


