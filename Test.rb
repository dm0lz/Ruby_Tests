#!/usr/local/bin/ruby

puts "quel est votre nom ?"
nom=gets.chomp
puts "vous vous appelez " + nom
puts "quel est votre age ??"
age=gets
age=age.chomp
puts "vous avez " + age.to_s + " ans."
year=2012-age.to_i
puts nom.to_s + " est né en " + year.to_s
puts "saisir un nombre :"
nombre=gets
carre=nombre.to_i*nombre.to_i
puts "le carre du nombre que vous avez saisi est : " + carre.to_s

puts "quel est votre age ??"
age=gets.chomp.to_i
if age > 60
	puts "prix senior"
elsif age >= 14
	puts "prix adulte"
else 
	puts "gratuit"
end

