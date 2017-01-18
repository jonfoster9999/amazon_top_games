#this class will be responsible for calling the scraper and printing the top 10 list

require './lib/amazon_top_games'

class AmazonTopGames::ConsoleTopTwentyList
	attr_accessor :site, :list
	def initialize(console)
		@console = console
		@list = [] #has many list items
	end


	def print_list
		puts "#{@console.name}'s top 10 selling items: "
		#should call get_items and iterate over them with index printing out the name and price
	end


	def get_items

		#@items should be an array of List Objects with a name, price, and link href. 20 items
		AmazonTopGames::Scraper.main_site(self)
	end

end