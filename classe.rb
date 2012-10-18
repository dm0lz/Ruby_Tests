#!/usr/local/bin/ruby


adresse_de_nicolas={
	"rue"			=>	"rue du rhum",
	"ville"			=>	"marseille",
	"pays"			=>	"france",
	"code postal"	=>	"13008"
}
nicolas={
	"nom"			=>	"dupont",
	"prenom"		=>	"nicolas",
	"adresse"		=>	adresse_de_nicolas
}	


class Personne
	attr_accessor :nom, :prenom
		def initialize
		@nom = @prenom 
	end
end

personne=Personne.new(nicolas)

puts personne.nom
