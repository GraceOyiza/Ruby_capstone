# !/usr/bin/env ruby

require_relative '../lib/scraper.rb'

electronic = Phone.new
electronic.scrape

puts "#{electronic.count} items found"

electronic.titles.each_with_index do |item, index|
  puts "#{item.text} ------------------  #{electronic.prices[index].text}"
  puts '**************************************************************************************************************'
  puts ''
end
