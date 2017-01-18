
require './lib/amazon_top_games'

class AmazonTopGames::CLI

	def run
		main_menu
		choose_console
	end



	def main_menu
		puts "Welcome to Amazon's top selling video game related products!"
		puts "Choose a console...."
	end


	def choose_console
		input = nil
		puts "1. Playstation 4"
		puts "2. Xbox One"
		puts "3. Wii"
		puts "4. Nintendo DS"
		print "Choose a console or type 'exit' to exit: "
		
		input = gets.chomp

		catch :exit do
			case input
			when "1"
				AmazonTopGames::ConsoleTopTwentyList.new(AmazonTopGames::Site.new("Playstation", "playstation_url")).print_list
			when "2"
				AmazonTopGames::ConsoleTopTwentyList.new(AmazonTopGames::Site.new("Xbox", "xbox_url")).print_list
			when "3"
				AmazonTopGames::ConsoleTopTwentyList.new(AmazonTopGames::Site.new("Wii", "wii_url")).print_list
			when "4" 
				AmazonTopGame::ConsoleTopTwentyList.new(AmazonTopGames::Site.new("Nintendo DS", "nindendo_DS_url")).print_list
			when "exit"
				throw :exit
			else
				puts ("Invalid Entry, try again").red
				choose_console
		
			end
		end
	end
end