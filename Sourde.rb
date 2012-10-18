#!/Users/molz/.rvm/rubies/ruby-1.9.3-p125/bin/ruby
#Mamie est sourde

puts "Bienvenu dans le programme Mamie est sourde"

puts "Parle a Mamie !!"

a=''
while a!='ciao'
	a=gets.chomp
	if a==a.upcase
	puts "Non !! Pas depuis 1938 !!"
	else
		if a=='ciao'
		puts 'ciao kjlskjd!!!'
		else
		puts "Hein ?! Parlez plus fort !!"
		end
	end
end

