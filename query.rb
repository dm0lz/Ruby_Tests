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
#url='http://www.iookaz.com/Recherche/Vehicule?Quoi=Quoi&SousSecteur=Auto&TypeVehicule'

reqUrl=client.query("SELECT url FROM Urls WHERE id=39").each(:symbolize_keys => true, :as => :array)

url1=reqUrl.to_s

p url1.gsub(/[\]\[\"]/, '')

url2=url1.sub(/"\]\]$/, '')
urlFinale=url2.sub(/^.../, '')

