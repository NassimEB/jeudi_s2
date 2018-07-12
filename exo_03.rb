require 'rubygems'
require 'nokogiri'
require 'open-uri'

page = Nokogiri::HTML(open('http://www2.assemblee-nationale.fr/deputes/liste/alphabetique'))
puts page.class

name_array = []
mail_array = []

name = page.css('.col-container')

name.each do |item|
name = item.text
name_array << name
end

puts name_array

