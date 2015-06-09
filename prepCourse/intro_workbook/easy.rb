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

# quiz 2

def q1
	puts "In this hash of people and their age"
	puts "see if there is an age present for 'Spot'."

	ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

	puts ages.has_key?("Spot")
	puts ages.include?("Spot")
	puts ages.member?("Spot")
end

def q2
	puts "Add up all of the ages from our current Munster family hash:"
	ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, 
		"Marilyn" => 22, "Spot" => 237 }
    
    ages.values.inject(:+)
end

def q3
  puts "In the age hash"
  puts "throw out the really old people (age 100 or older)"

  ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

  ages.delete_if do |k,v|
      v > 100
    end
end

def q4
  puts "Starting with this string:"
  puts "munsters_description = 'The Munsters are creepy in a good way.'"
  puts "Convert the string in the following ways (code will be executed "
  puts "on original munsters_description above):"

  puts "The munsters are creepy in a good way."
  puts "tHE mUNSTERS ARE CREEPY IN A GOOD WAY."
  puts "the munsters are creepy in a good way."
  puts "THE MUNSTERS ARE CREEPY IN A GOOD WAY."

  munsters_description = "The Munsters are creepy in a good way."

  puts "ANSWERS\n"

  puts munsters_description.capitalize
  puts munsters_description.swapcase
  puts munsters_description.downcase
  puts munsters_description.upcase

end

def q5
  puts "We have most of the Munster family in our age hash:"
  puts "ages = { 'Herman' => 32, 'Lily' => 30, 'Grandpa' => 5843," 
  puts "'Eddie' => 10 }"
  puts "add ages for Marilyn and Spot to the existing hash"
  puts "additional_ages = { 'Marilyn' => 22, 'Spot' => 237 }"
  ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
  additional_ages = { "Marilyn" => 22, "Spot" => 237 }

  ages.merge(additional_ages)
end

def q6 
  puts "Pick out the minimum age from our current Munster family hash:"

  ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, 
    "Marilyn" => 22, "Spot" => 237 }

    ages.values.min
end

def d7  
  puts "See if the name 'Dino' appears in the string below:"
  advice = "Few things in life are as important as house training your pet dinosaur."

  if advice.match("Dino")
    puts "Dino is in advice"
  else
    puts "This should print becuase Dino is capitalized"
  end
end

def q8
  puts "Find the index of the first name that starts with 'Be'"

  flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
  flintstones.index { |name| name[0, 2] == "Be" }
end

def q9 
  puts "Using array#map!, shorten each of these names to just 3"
  puts  "characters:"

  flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

  flintstones.map! do |name|
    name[0, 3]
  end
end

def q10
  puts "Using array#map!, shorten each of these names to just 3"
  puts  "characters:"

  flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

  flintstones.map! { |name| name[0, 3]}
end

def meth1
  puts "How can we add the family pet 'Dino' to our usual array:"

  flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

  flintstones << "Dino"
end

def meth2
  puts "How can we add multiple items to our array? (Dino and Hoppy)"
  flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
  flintstones.concat(%w(Dino Hoppy))
end

def meth4
  puts "Shorten this sentence: \nremove everything starting from 'house'."

  advice = "Few things in life are as important as house training your pet dinosaur."
  advice.slice!(0, advice.index("house"))
  advice
end

def meth5
  puts "Write a one-liner to count the number of lower-case 't' "
  puts "characters in the following string:"

  statement = "The Flintstones Rock!"

  statement.count("t")
end

def meth6
  puts "Back in the stone age (before CSS) we used spaces to align "
  puts "things on the screen. If we had a 40 character wide table of "
  puts "Flintstone family members, how could we easily center that "
  puts "title above the table with spaces?"

  title = "Flintstone Family Members"

  #title << (" " * 20)
  #title.prepend(" " * 20)
  title.center(40)
end

puts meth6
















