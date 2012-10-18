#!/Users/molz/.rvm/rubies/ruby-1.9.3-p125/bin/ruby

require "socket"

myserver=TCPServer.new('localhost', 666)
sockaddr=myserver.addr

puts "echo server running on #{sockaddr.join(':')}"

while true
	Thread.start(myserver.accept) do |sock|
		puts ("#{sock} connected at #{Time.now}")
		while sock.gets
			sock.write($_)
			puts "User entered : #{$_}"
		end
		
	puts ("#{sock} disconnected at #{Time.now}")
	s.close
	end
end