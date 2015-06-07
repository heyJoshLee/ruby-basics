def to_caps(string)
	puts "Write a method that takes a string "
	puts "as argument. The method should return "
	puts "he all-caps version of the string, only "
	puts "if the string is longer than 10 characters."
	if string.length < 10
		return string.upcase
	else
		return "String is too long"
	end
end

#puts to_caps("hi there")


def num_check
	puts "Write a program that takes a number "
	puts "from the user between 0 and 100 and "
	puts "reports back whether the number is "
	puts "between 0 and 50, 50 and 100, or above 100."

	puts"\n Give me a number, please"

	input = gets.to_i

	answer = case 
		when (input > 0 and input <= 50)
			puts "Your number is between 0 and 50."
		when (input > 50 and input <= 100)
			puts "Your number is between 50 and 100"
		end
end
