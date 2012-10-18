#!/usr/local/bin/ruby

def salutation
	puts "veuillez saisir votre nom :"
	prenom=gets.chomp
	puts "Bienvenu " + prenom
end

#salutation

adresse_de_nicolas={
	"rue"			=>	"rue du rhum",
	"ville"			=>	"marseille",
	:pays			=>	"france",
	"code postal"	=>	"13008"
}
nicolas={
	:nom			=>	"dupont",
	:prenom		=>	"nicolas",
	:adresse		=>	adresse_de_nicolas
}	

def affiche_adresse(nom)
	
	puts "nom : " + nom[:nom]
	puts "prenom : " + nom[:prenom]
	puts "adresse : " + nom[:adresse].to_s
end

affiche_adresse(nicolas)

puts adresse_de_nicolas[:pays]