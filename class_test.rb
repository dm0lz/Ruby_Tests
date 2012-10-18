#!/Users/molz/.rvm/rubies/ruby-1.9.3-p125/bin/ruby

class Person
    attr_accessor :age, :poids

    def initialize age, poids
        @age=age
        @poids=poids
    end

end


jean = Person.new(12, 56)

puts "jean a : #{jean.age} ans et pese : #{jean.poids} kg."


