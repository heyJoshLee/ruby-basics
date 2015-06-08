def one
	puts "Given a hash of family members, "
	puts "with keys as the title and an array "
	puts "of names as the values, use Ruby's "
	puts "built-in select method to gather only "
	puts "mmediate family members' names into a "
	puts "new array."

	# Given
	family = {  uncles: ["bob", "joe", "steve"],
           sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

    immediate_family = family.select do |k, v|
    	k == :sisters || k == :brothers
    end

    immediate_family.values.flatten


end


def two
	puts "Look at Ruby's merge method. Notice that"
	puts "it has two versions. What is the difference "
	puts "between merge and merge!? Write a program that "
	puts "uses both and illustrate the differences.\n\n"

	puts "merge! changes the hash"

	hash1 = {name: "Josh", age: "25", location: "China"}
	hash2 = {name: "Josh", age: "25", location: "USA", computer: "mac"}

	print "Hash1 :"
	puts hash1
	print "Hash2 :"
	puts hash2

	puts "\n\nuse hash1.merge(hash2)"
	hash1.merge(hash2)
	puts hash1

	puts "\n\n"
	puts "use hash1.merge!(hash2)"
	hash1.merge!(hash2)
	puts hash1
end

def three
	puts "Using some of Ruby's built-in Hash methods, "
	puts "write a program that loops through a hash and "
	puts "prints all of the keys. Then write a program "
	puts "that does the same thing except printing the "
	puts "values. Finally, write a program that prints both."

	my_hash = {name: "Josh", age: 25, location: "China"}

	p my_hash.keys
	p my_hash.values

	my_hash.each { |k,v| puts "#{k}'s value is #{v}."}
end

def five
	puts "What method could you use to find out if a Hash "
	puts "contains a specific value in it? Write a program "
	puts "to demonstrate this use.\n\n"


	my_hash = {name: "Josh", age: 25}

	if my_hash.has_value?(25)
		puts "yes contains the value"
	else
		puts "nope, doesn't contain the value"
	end
end

five
