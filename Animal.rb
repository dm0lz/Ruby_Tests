
#!/usr/bin/ruby

class Animal
    

    attr_accessor :parole, :age

    def initialize(parole="jj", age=4)
        @parole=parole
        @age=age
    end


end

cochon=Animal.new
puts cochon.parole
puts cochon.age
cochon.parole="groin groinn"
cochon.age=12
puts "le cochon fait : #{cochon.parole}"
puts "le cochon a : #{cochon.age} ans."

