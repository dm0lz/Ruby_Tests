#!/Users/molz/.rvm/rubies/ruby-1.9.3-p125/bin/ruby

class Creation
    

    def self.create_fold nom
        Dir::mkdir("folder_"+nom, 0777)
    end

end

tab=%w(jean paul pierre louis bob juan)

tab.each do |i|
    Creation.create_fold i
end







