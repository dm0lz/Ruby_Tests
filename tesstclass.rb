#!/Users/molz/.rvm/rubies/ruby-1.9.3-p125/bin/ruby


class Some
    puts self
end

class Other
    puts self
end

some=Some.new
other=Other.new
puts self
puts self.class

