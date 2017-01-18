require './lib/amazon_top_games'
require 'open-uri'

class AmazonTopGames::Scraper

	def self.main_site(top_twenty_list)
		url = top_twenty_list.console.url
		doc = Nokogiri::HTML(open("https://www.amazon.com/Best-Sellers-Video-Games-PlayStation-Consoles-Accessories/zgbs/videogames/6427814011/ref=zg_bs_nav_vg_1_vg/156-9684545-1840139"))
		items = doc.css("div.zg_itemImmersion")
		items.each do |item|
			name = item.css("a").text.split(" -")[0].split(".")[0]
			price = item.css("strong").text
			if !price.include?("$")
				price = "Visit Amazon for price"
			end
			url = item.css("a").attr("href").value.strip

			list_item = AmazonTopGames::TopTwentyListItem.new(name, price, url)
			top_twenty_list.list << list_item
		end
	end


end


