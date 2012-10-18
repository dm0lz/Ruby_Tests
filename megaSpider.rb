#!/Users/molz/.rvm/rubies/ruby-1.9.3-p125/bin/ruby
#
require 'anemone'
require 'mysql2'


puts "Veuillez saisir l'url : "
url=gets.chomp
#url="http://www.iookaz.com/Recherche"

client = Mysql2::Client.new(:host => "localhost", :username => "root", :password => "sirene", :database => "ruby")
=begin
createUrlsTable=client.query("CREATE TABLE Urls(
    id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    url TEXT NOT NULL,
    PRIMARY KEY (id)
    )")
=end

Anemone.crawl(url) do |anemone|

    anemone.on_every_page do |page|
        req=client.query "INSERT INTO Urls (url) 
                        VALUES (\"#{page.url}\")"
        
    end
end


