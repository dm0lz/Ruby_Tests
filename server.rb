#!/Users/molz/.rvm/rubies/ruby-1.9.3-p125/bin/ruby

require "socket"

server=TCPServer.new('localhost', 9090)

while (session=server.accept)

send=session.puts("hola mundo !! Ma super Banniere !!")
request = session.gets
puts request
#session.close	

end













