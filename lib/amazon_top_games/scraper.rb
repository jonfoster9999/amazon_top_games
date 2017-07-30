require './lib/amazon_top_games'
require 'open-uri'

class AmazonTopGames::Scraper

	def self.main_site(top_twenty_list)
		url = top_twenty_list.console.url
		doc = Nokogiri::HTML(open(url))
		items = doc.css("div.zg_itemImmersion")
		items.each do |item|
			name = item.css("a").text.split(" -")[0].split(".")[0].gsub("\n", "").split("  ")[0]
			price = item.css("strong").text
			if !price.include?("$")
				price = "Visit Amazon for price"
			end
			url = item.css("a").attr("href").value.strip

			list_item = AmazonTopGames::TopTwentyListItem.new(name, price, url)
			top_twenty_list.list << list_item
		end
	end

	def self.product_page(top_twenty_list_item)
		url = top_twenty_list_item.url
		doc = Nokogiri::HTML(open(url))
		binding.pry

	end


end


###NEW EGG SCRAPER########


#MAIN PAGE
#BRAND:
##item.css('.item-brand img').attr("title").text
#Title: 
# item.css('.item-title').text.strip


#PRODUCT PAGE
#####PRICE:
#doc.css('div meta').first["content"]
###Title:
## doc.css('h1 span').text.strip.split(" - ")[0]








