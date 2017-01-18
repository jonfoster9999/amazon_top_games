#this class will be responsible for calling the scraper and printing the top 10 list

class AmazonTopGames::MakeList
	attr_accessor :site
	def initialize(site)
		@site = site
	end


	def print_site
		puts "#{@site.name}'s top 10 selling items: "
		#should call get_items and iterate over them with index printing out the name and price
	end


	def get_items

		#@items should be an array of List Objects with a name, price, and link href. 10 items max
		@items = AmazonTopGames::Scraper.new.main_site(site.url)
	end

end