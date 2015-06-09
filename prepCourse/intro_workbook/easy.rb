def three 
	puts "Replace the word 'important' with 'urgent' in this string:" 
	puts "Few things in life are as important as house training your pet dinosaur."

	advice = "Few things in life are as important as house training your pet dinosaur."
	puts advice.gsub("important", "urgent")

end

def five 
	if (10..100).include?(42)
		puts "42 is between 10 and 100"
	else
		puts "this shouldn't print"
	end
end

def six
	puts "Starting with the string:"
	puts "'famous_words = and seven years ago...'"
	puts "show two different ways to put the expected"
	puts "'Four score and' in front of it"

	puts "first method \n"
	famous_words = "and seven years ago..."

	#puts famous_words.insert(0,"Four score and ")

	puts famous_words.prepend("Four score and ")
end

def eight
	flintstones = ["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]

	p flintstones.flatten!
end

def nine
	puts "Turn this into an array containing only two elements: "
	puts "Barney's name and Barney's number"

	flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, 
		"Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

	flintstones.assoc("Barney")
end

def ten
	puts "Given the array below"
	puts "Turn this array into a hash where the names are "
	puts "the keys and the values are the positions in the array."
	
	flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
	
	my_hash = {}
	
	i = 0
	# flintstones.each_with_index also works too
	flintstones.each do |e|
		my_hash[e] = i
		i += 1
	end

my_hash
end

p ten
















