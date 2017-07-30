
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

				#need to call CLI#console_menu(playstation_console)  here
				#move "AmazonTopGames::ConsoleTopTwentyList.new(playstation_console)" into this method
				# going to need a print item method which takes the href of the corresponding list_item choice, scrapes it and prints it

				#when printing the individual description we'll take a gets.chomp.to_i   and call the item to be printed by it's index 
				AmazonTopGames::ConsoleTopTwentyList.new(AmazonTopGames::Console.new("Playstation 4", "https://www.amazon.com/Best-Sellers-Video-Games-PlayStation-Consoles-Accessories/zgbs/videogames/6427814011/ref=zg_bs_nav_vg_1_vg/156-9684545-1840139")).print_list
			when "2"
				AmazonTopGames::ConsoleTopTwentyList.new(AmazonTopGames::Console.new("Xbox One", "https://www.amazon.com/Best-Sellers-Video-Games-Xbox-One-Consoles-Accessories/zgbs/videogames/6469269011/ref=zg_bs_nav_vg_1_vg")).print_list
			when "3"
				AmazonTopGames::ConsoleTopTwentyList.new(AmazonTopGames::Console.new("Wii", "https://www.amazon.com/Best-Sellers-Video-Games-Wii-Consoles-Accessories/zgbs/videogames/14218901/ref=zg_bs_nav_vg_1_vg")).print_list
			when "4" 
				AmazonTopGames::ConsoleTopTwentyList.new(AmazonTopGames::Console.new("Nintendo DS", "https://www.amazon.com/Best-Sellers-Video-Games-Nintendo-DS-Consoles-Accessories/zgbs/videogames/11075831/ref=zg_bs_nav_vg_1_vg")).print_list
			when "exit"
				throw :exit
			else
				puts ("Invalid Entry, try again").red
				choose_console
		
			end
		end
	end
end