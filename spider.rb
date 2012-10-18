#!/Users/molz/.rvm/rubies/ruby-1.9.3-p125/bin/ruby
#
require "nokogiri"
require 'mysql2'
require "open-uri"

client = Mysql2::Client.new(:host => "localhost", :username => "root", :password => "sirene", :database => "ruby")

=begin
create=client.query("CREATE TABLE Annonces(
                   id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
                   texte TEXT NOT NULL,
                   prix TEXT NOT NULL,
                   PRIMARY KEY (id)
                   )")
=end
#urlFinales='http://www.iookaz.com/Recherche/Vehicule?Quoi=Quoi&SousSecteur=Auto&TypeVehicule'

reqUrl=client.query("SELECT url FROM Urls WHERE id=39").each(:symbolize_keys => true, :as => :array)

url1=reqUrl.to_s
urlFinale=url1.gsub(/[\]\[\"]/, '')

doc=Nokogiri::HTML(open(urlFinale))

doc.css('.annonce').each do |item|

    a=item.at_css('.texte').text
    b=item.at_css('.infoPrix').text

    req=client.query "INSERT INTO Annonces (texte, prix) 
                        VALUES (\"#{a}\", \"#{b}\")"

end

