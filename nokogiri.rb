#!/Users/molz/.rvm/rubies/ruby-1.9.3-p125/bin/ruby
#
require "nokogiri"
require "open-uri"

url='http://www.iookaz.com/Recherche/Vehicule?Quoi=Quoi&SousSecteur=Auto&TypeVehicule'
doc=Nokogiri::HTML(open(url))

doc.css('.annonce').each do |item|
    puts item.at_css(".texte").text
    puts item.at_css(".infoPrix").text
end




