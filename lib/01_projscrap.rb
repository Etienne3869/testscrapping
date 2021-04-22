require 'nokogiri'
require 'open-uri'

page = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all/"))  

crypto_name = page.xpath('//tr/td[2]//a[contains(@href, "currencies")]')
crypto_price = page.xpath('//tr/td[5]//a[contains(@href, "markets")]')

crypto_name_text = []
crypto_price_text = []

crypto_name.each do |crypto_name|
    crypto_name_text << crypto_name.text 
  end

crypto_price.each do |crypto_price|
  crypto_price_text << crypto_price.text 
end

global = Hash[crypto_name_text.zip(crypto_price_text)]
puts global



#page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))


#crypto_name = page.xpath('//a[@class="cmc-link"][@title]')
#crypto_price = page.xpath('//tr/td[5]/a[contains(@href, "markets")]')


#puts crypto_name
#puts crypto_price

