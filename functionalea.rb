#!/Users/molz/.rvm/rubies/ruby-1.9.3-p125/bin/ruby

require 'mysql2'

client=Mysql2::Client.new(:host => "localhost", :username => "root", :password => "bip", :database => "ruby")
=begin
create=client.query("CREATE TABLE chiffres(
                   id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
                   prems SMALLINT NOT NULL,
                   deuse SMALLINT NOT NULL,
                   troise SMALLINT NOT NULL,
                   quatre SMALLINT NOT NULL,
                   cinq SMALLINT NOT NULL,
                   six SMALLINT NOT NULL,
                   sept SMALLINT NOT NULL,
                   huit SMALLINT NOT NULL,
                   neuf SMALLINT NOT NULL,
                   PRIMARY KEY (id)
                   )")
=end
def generate n
    rand(n)
end

a=generate 99
puts a
remplir=client.query("INSERT INTO chiffres (prems, deuse, troise, quatre, cinq, six, sept, huit, neuf)
                     VALUES (#{generate(999)}, #{generate(999)}, #{generate(999)}, #{generate(999)}, #{generate(999)}, #{generate(999)}, #{generate(999)}, #{generate(999)}, #{generate(999)})")

affiche=client.query("SELECT * FROM chiffres")
affiche.each do |l|
    puts l
end

