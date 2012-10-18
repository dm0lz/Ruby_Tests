#!/Users/molz/.rvm/rubies/ruby-1.9.3-p125/bin/ruby

puts "Bienvenue au convertisseur nombres_to_letters.!!!"
puts "Veuillez entrer un nombre :"
nombre=gets

if (nombre.to_i < 0 || nombre.to_i > 999)
        puts "entrer un nombre superieur a 0 et inferieur a 999"
else    
    puts nombre
        tab_unites=%w(zero un deux trois quatre cinq six sept huit neuf dix)
        tab_dixaines=%w(zero dix vingt trent qurante cinquante soixante soixante-dix quatre-vingt quatre-vingt-dix)
        tab_centaines=%w(zero cent deux-cents trois-cents quatre-cents cinq-cents six-cents septs-cent)


        unite_nombre=(nombre.to_i%10)
        dixaine_nombre=(((nombre.to_i%100) - (unite_nombre.to_i))/10)
        centaine_nombre=(((nombre.to_i%1000) - (nombre.to_i%100))/100)
        
        unite_lettre=tab_unites[unite_nombre.to_i]
        dixaine_lettre=tab_dixaines[dixaine_nombre.to_i]
        centaine_lettre=tab_centaines[centaine_nombre.to_i]

        puts "Le nombre #{nombre} equivaut en lettre a : #{centaine_lettre.to_s}-#{dixaine_lettre.to_s}-#{unite_lettre.to_s}"

end

