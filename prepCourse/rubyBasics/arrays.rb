def one
	puts "Below we have given you an "
	puts "array and a number. Write a "
	puts "program that checks to see if "
	puts "the number appears in the array."

	arr = [1,3,5,7,9,11]

	number = 3

	 if arr.include?(number)
	 	puts "#{arr.to_s} contains #{number}"
	 else
	 	puts "#{arr.to_s} does not contain #{number}"
	 end
end

one