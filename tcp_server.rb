#!/Users/molz/.rvm/rubies/ruby-1.9.3-p125/bin/ruby
require 'socket'
port=(ARGV[0] || 80).to_i

server=TCPServer.new('localhost', port)

while(session=server.accept)
    
    puts "request : #{session.gets}"
    puts " connection_info : #{session.addr.join(':')}"
    session.print "HTTP/1.1 200/OK\r\nContent-type: text/html\r\n\r\n"
    session.print "<html><h1>Hello World!!</h1><p>#{Time.now}</p></html>"
    session.close

end
    
