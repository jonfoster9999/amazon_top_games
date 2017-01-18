require './lib/amazon_top_games'
require 'open-uri'

class AmazonTopGames::Scraper

	def self.main_site(top_twenty_list)
		@url = top_twenty_list
		doc = Nokogiri::HTML(open("https://www.amazon.com/Best-Sellers-Video-Games-PlayStation-Consoles-Accessories/zgbs/videogames/6427814011/ref=zg_bs_nav_vg_1_vg/156-9684545-1840139"))
		items = doc.css("div.zg_itemImmersion")
		name = items[0].css("a").text.split(".")[0]
		price = items[0].css(".price").text
		url = items[0].css("a").attr("href").value.strip

		list_item = AmazonTopGames::TopTwentyListItem.new(name, price, url)
		binding.pry
	end


end


