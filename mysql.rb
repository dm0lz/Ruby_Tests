#!/Users/molz/.rvm/rubies/ruby-1.9.3-p125/bin/ruby

require 'mysql2'

client = Mysql2::Client.new(:host => "localhost", :username => "root", :password => "sirene", :database => "ruby")
results = client.query("SELECT * FROM matable1")
res = client.query("SHOW DATABASES")
results.each do |r|
    puts r
end
res.each do |r|
    puts r
end
reqCreate=client.query("CREATE TABLE Animal(
                id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
                espece VARCHAR(40) NOT NULL,
                nom VARCHAR(20) NOT NULL,
                prenom VARCHAR(20) NOT NULL,
                PRIMARY KEY (id)
                )")
13.times do
n=1
reqPopulate=client.query("INSERT INTO Animal (espece, nom, prenom)
                        VALUES('chien','paf','pif')")
puts "iteration : #{n}"
n+=1
end
reqAffiche=client.query("SELECT * FROM Animal")
reqAffiche.each do |f|
    puts f
end


