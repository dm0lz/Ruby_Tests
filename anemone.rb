#!/Users/molz/.rvm/rubies/ruby-1.9.3-p125/bin/ruby
#
require 'anemone'

Anemone.crawl("http://www.iookaz.com/Recherche") do |anemone|
    anemone.on_every_page do |page|
        puts page.url
    end
end
