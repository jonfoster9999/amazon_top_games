
## Creates a site object with name for customizing list page and with url for passing along to scraper

class AmazonTopGames::Console
	attr_accessor :name, :url
	def initialize(name, url)
		@name = name
		@url = url
	end
end