
class AmazonTopGames::TopTwentyListItem
	attr_accessor :name, :price, :url, :console   #A top twenty list item belongs_to a console

	def initialize(name, price, url)
		@name = name
		@price = price
		@url = url
	end
end