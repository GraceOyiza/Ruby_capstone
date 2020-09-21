require 'httparty'
require 'nokogiri'
require 'byebug'

class Electronic

    def initialize
        @url = 'https://www.ebay.com/b/Samsung/bn_21834655'
        @unparsed_page = HTTParty.get(@url)
        @parsed_page =  Nokogiri::HTML(@unparsed_page)
      end

      def scrape

        titles = parsed_page.css('h3.s-item__title')
        prices = parsed_page.css('span.s-item__price')

        puts "#{titles.length} items found" 

        titles.each_with_index do |item, index|
            puts "#{item.text} -  #{prices[index].text}"
        end

      end

end