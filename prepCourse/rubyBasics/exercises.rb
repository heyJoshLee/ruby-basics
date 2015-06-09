def one
	puts "Use the each method of Array to iterate "
	puts "over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and "
	puts "print out each value."

	[1,2,3,4,5,6,7,8,9,10].each {|e| puts e}

end


def two
	puts "Same as above, but only print out values greater than 5."

	[1,2,3,4,5,6,7,8,9,10].each do |e| 
		if e > 5 then puts e
			end
		end
end

def three 
	puts "Now, using the same array from #2, use the select method "
	puts "to extract all odd numbers into a new array."
	newArray = [1,2,3,4,5,6,7,8,9,10].select do |e|
		e.odd?
		end 
end

def four
	puts "Append '11' to the end of the original array. Prepend "
	puts "'0' to the beginning"
	arr = [1,2,3,4,5,6,7,8,9,10]
	arr << 11
	arr.unshift(0)
	arr
end

def five
	puts "Get rid of '11'. And append a '3'."
	arr = [0,1,2,3,4,5,6,7,8,9,10,11]
	arr[11] = 3
	puts arr
end

def six
	puts "Get rid of duplicates without specifically "
	puts "removing any one value."
	arr = [0,1,2,3,4,5,6,7,8,9,10,3]
	arr.uniq!
end

def eight
	puts "Create a Hash using both Ruby syntax styles."

	hash1 = {name: "Josh", age: 25}
	hash2 = {:name => "Ben", :age => 26}

	puts hash1
	puts hash2

end

def nine
	puts "Suppose you have a hash h = {a:1, b:2, c:3, d:4}"
	puts "1. Get the value of key `:b`."
	puts "2. Add to this hash the key:value pair `{e:5}`"
	puts "3. Remove all key:value pairs whose value is less than 3.5"

	h = {a: 1, b: 2, c: 3, d: 4}

	puts "Value of b: #{h[:b]}"
	h[:e] = 5

	puts "Adding :e -- #{h}"

	h.delete_if {|k, v| v < 3.5}
	puts "Removed all greater than 3.5 #{h}"
end

def twelve
	puts "Given the following data structures. "
	puts "Write a program that moves the information "
	puts "from the array into the empty hash that applies "
	puts "to the correct person."

	contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

	contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
	contacts["Joe Smith"][:email] = contact_data[0][0]
	contacts["Joe Smith"][:address] = contact_data[0][1]
	contacts["Joe Smith"][:phone_number] = contact_data[0][2]	
	contacts["Sally Johnson"][:email] = contact_data[1][0]
	contacts["Sally Johnson"][:address] = contact_data[1][1]
	contacts["Sally Johnson"][:phone_number] = contact_data[1][2]

	puts contacts
end

def fifteen
	puts "Use Ruby's Array method delete_if and String method start_with? "
	puts "to delete all of the words that begin with an 's' in the following "
	puts "array."

	arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

	arr.delete_if do |e|
		e.start_with?("s", "w")
	end
	arr
end

def sixteen
	puts "Take the following array:\n"
	puts "and turn it into a new array that consists of strings containing one "
	puts "word. (ex. ['white snow', etc...] → ['white', 'snow', etc...]. Look "
	puts "into using Array's map and flatten methods, as well as String's split "
	puts "method."

	a = ['white snow', 'winter wonderland', 'melting ice','slippery sidewalk', 
		'salted roads', 'white trees']
	b = a.map do |e|
		e.split
	end
	b
end

puts sixteen






