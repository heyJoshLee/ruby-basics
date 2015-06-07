def stop
	puts "Write a while loop that takes input "
	puts "from the user, performs an action, and "
	puts "only stops when the user types 'STOP'. "
	puts "Each loop can get info from the user."

	puts "\n Please give me a string"
	input = gets

	while input != "STOP"
		puts "You told me #{input}"
		puts "Give me another string"
		input = gets.chomp
	end
end

def index_loop
	my_array = ['apple', 'banana', 'cherry']

	my_array.each_with_index do |e, i|

		puts "#{e} is in position #{i}"
	end
end

def count_down(num)
	if num == 0 
		puts "Done!"
	elsif num < 1
		puts "Already lower than 0!"
	else
		puts "Currently on number #{num}"
		num -= 1
		count_down(num)
	end
end

count_down(100)
