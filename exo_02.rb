require 'rubygems'
require 'nokogiri'
require 'open-uri'


def crypto
list = {}

page = Nokogiri::HTML(open('https://coinmarketcap.com/'))

currency_name = []
currency_price = []

name = page.css('.currency-name-container')
price = page.css('.price')


name.each do |x|
name = x.text
currency_name << name
end

price.each do |x|
  price = x.text
  currency_price << price
end
puts Hash[currency_name.zip(currency_price)]
end

program = true

while program = true
crypto
puts "__________________________________________________"
puts ""
puts "Ce programme s'actualise toutes les 10000 secondes"
puts "Tapez ctrl c pour quitter ce programme"
puts "__________________________________________________"
sleep(10000)
end
