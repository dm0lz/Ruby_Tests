#!/Users/molz/.rvm/rubies/ruby-1.9.3-p125/bin/ruby
#
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
$cpt=0
$ci=0
$cj=0
$ck=0
$cl=0
$cm=0
$cn=0
$co=0
$cp=0
$cq=0
10.times do
i=rand(999)
j=rand(999)
k=rand(999)
l=rand(999)
m=rand(999)
n=rand(999)
o=rand(999)
p=rand(999)
q=rand(999)
$ci=i+$ci
$cj=j+$cj
$ck=k+$ck
$cl=l+$cl
$cm=m+$cm
$cn=n+$cn
$co=o+$co
$cp=p+$cp
$cq=q+$cq

remplir=client.query("INSERT INTO chiffres (prems, deuse, troise, quatre, cinq, six, sept, huit, neuf)
                     VALUES (#{i}, #{j}, #{k}, #{l}, #{m}, #{n}, #{o}, #{p}, #{q})")
                     $cpt+=1
end
affiche=client.query("SELECT * FROM chiffres")
affiche.each do |l|
    puts l
end
puts $cpt
puts "ci vaut : #{$ci}, cj vaut : #{$cj}, ck vaut : #{$ck}, cl vaut : #{$cl}, cm vaut : #{$cm}, cn vaut : #{$cn}, cp vaut : #{$cp}, cq vaut : #{$cq}"
puts "la moyenne de ci est #{$ci.to_i/10}"
puts "la moyenne de cj est #{$cj/10}"
puts "la moyenne de ck est #{$ck/10}"
puts "la moyenne totale est #{(($ci+$cj+$ck+$cl+$cm+$cn+$co+$cp+$cq)/10)/9}"


