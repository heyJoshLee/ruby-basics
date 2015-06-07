def name 
	puts " Write a program called name.rb that "
	puts "asks the user to type in their name and "
	puts "then prints out a greeting message with "
	puts "their name included."

	puts "What's your name?"
	name = gets.chomp
	puts "Hi there #{name}. How are you doing today?"

	puts "Here is your name 10 times:"

	10.times {puts name}
end

def age
	puts "Write a program called age.rb that asks a user "
	puts "how old they are and then tells them how old they "
	puts "will be in 10, 20, 30 and 40 years. Below is the "
	puts "output for someone 20 years old."

	puts "How old are you?"
	age = gets.chomp.to_i

	puts "In 10 years you will be:\n" + (10 + age).to_s
	puts "In 10 years you will be:\n" + (20 + age).to_s
	puts "In 10 years you will be:\n" + (30 + age).to_s
	puts "In 10 years you will be:\n" + (40 + age).to_s

end

