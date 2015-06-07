def name 
	puts " Write a program called name.rb that "
	puts "asks the user to type in their name and "
	puts "then prints out a greeting message with "
	puts "their name included."

	puts "What's your name?"
	name = gets.chomp
	puts "Hi there #{name}. How are you doing today?"
end

name