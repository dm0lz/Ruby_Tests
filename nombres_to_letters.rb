#!/Users/molz/.rvm/rubies/ruby-1.9.3-p125/bin/ruby

puts "Bienvenue au convertisseur nombres_to_letters.!!!"
puts "Veuillez entrer un nombre :"
nombre=gets.chomp
puts nombre=nombre.to_i

def nombres_to_letters(nombre)

    if(nombre.to_i < 0 || nombre.to_i > 999)
        puts "entrer un nombre superieur a 0 et inferieur a 999"
    else

        tab_unites=%w(zero un deux trois quatre cinq six sept huit neuf dix)
        tab_dixaines=%w(zero dix vingt trente quarante cinquante soixante soixante-dix quatre-vingt quatre-vingt-dix)
        tab_centaines=%w(zero cent deux-cents trois-cents quatre-cents cinq-cents six-cents septs-cent huit-cent neuf-cent)

        unite_nombre=(nombre%10).to_i
        dixaine_nombre=(((nombre%100) - (nombre%10))/10).to_i
        centaine_nombre=(((nombre%1000) - (nombre%100))/100).to_i

        unite_lettre=tab_unites[unite_nombre]
        dixaine_lettre=tab_dixaines[dixaine_nombre]
        centaine_lettre=tab_centaines[centaine_nombre]
        
        puts "le chiffre entre : #{nombre} convertit en lettre donne : #{centaine_lettre} #{dixaine_lettre} #{unite_lettre}"

    
    end

end

nombres_to_letters(nombre)

