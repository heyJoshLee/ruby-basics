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

def seven
	puts "Write a program that iterates over an array "
	puts "and builds a new array that is the result of "
	puts "incrementing each value in the original array "
	puts "by a value of 2. You should have two arrays at "
	puts "the end of this program, The original array and "
	puts "the new array you've created. Print both arrays "
	puts "to the screen using the p method instead of puts.\n\n"

	arr1 = [1,2,3,4,5]
	arr2 = []

	arr1.each do |i|
		arr2.push(i + 2)
	end

	p arr1
	p arr2

end








