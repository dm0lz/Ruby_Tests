#!/Users/molz/.rvm/rubies/ruby-1.9.3-p125/bin/ruby

chaine=[]
puts "saisir 10 chaines de caracteres :"
i=0
while i<10
	chaine[i]=gets.chomp
	i+=1
end

puts "vous avez termine la saisie"
puts "vous avez saisi :" + chaine.sort.to_s

chaine.each do |ccc|
	puts ccc
end
