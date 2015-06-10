def q1one 
	puts "Let's do some 'ASCII Art' (a stone-age form of "
	puts "nerd artwork from back in the days before computers "
	puts "had video screens)."
	puts "For this exercise, write a one-line program that creates "
	puts "10 lines of the following:"

	puts "The Flintstones Rock!
 			   The Flintstones Rock!
 			    The Flintstones Rock!\n\n\n"

  10.times { |number| puts (" " * number) + "The Flintstones Rock!" }
end

def q1two
  puts "Create a hash that expresses the frequency with which each "
  puts "letter occurs in this string:"

  statement = "The Flintstones Rock"
  hash = {}
  statement.length.times do |n|
    if hash.has_key?(statement[n])
      hash[statement[n]] += 1
    else
      hash[statement[n]] = 1
    end
  end
  hash
end


def q1nine
  puts "Modify the hash such that each member of the Munster family "
  puts "has an additional 'age_group' key that has one of three values "
  puts "describing the age group the family member is in (kid, adult, or "
  puts "senior). Your solution should produce the hash below"
  
  munsters = { 
    "Herman" => { "age" => 32, "gender" => "male" }, 
    "Lily" => { "age" => 30, "gender" => "female" }, 
    "Grandpa" => { "age" => 402, "gender" => "male" }, 
    "Eddie" => { "age" => 10, "gender" => "male" },
    "Marilyn" => { "age" => 23, "gender" => "female"}
  }

  age_group_hash = {}

  munsters.each do |k,v|
    case
    when munsters[k]["age"] >= 65
      munsters[k]["age_group"] = "senior"
    when munsters[k]["age"] >= 18
      munsters[k]["age_group"] = "adult"
    else
      munsters[k]["age_group"] = "child"
    end
    munsters
  end
end

def q2one
  puts "Figure out the total age of just the male members of the family"
  total_male_age = 0
  munsters.each do |name, details|
    total_male_age += details["age"] if details["gender"] == "male"
  end
end

def q2three
  puts "One of the most frequently used real-world string properties is "
  puts "that of 'string substitution', where we take a hard-coded string "
  puts "and modify it with various parameters from our program."
  puts "Given this previously seen family hash, print out the name, age "
  puts "and gender of each family member like this"
  puts "(Name) is a (age) year old (male or female).\n\n"
  puts "ANSWER"

  munsters = { 
  "Herman" => { "age" => 32, "gender" => "male" }, 
  "Lily" => { "age" => 30, "gender" => "female" }, 
  "Grandpa" => { "age" => 402, "gender" => "male" }, 
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
  }

  munsters.each do |k, v|
    current = munsters[k]
    puts "#{k} is a #{current['age']} old #{current['gender']}"
  end
end

def q2four
  puts "A common idiom used to solve this conundrum is to use the "
  puts "String#split and String#join methods to break our string up "
  puts "and then put it back together again."
  puts "Use this technique to break up the following string and put "
  puts "it back together with the words in reverse order:"
  puts "sentence = 'Humpty Dumpty sat on a wall.'\n\n"
  puts "ANSWER"

  sentence = "Humpty Dumpty sat on a wall."

  sentence.delete!('.')
  puts sentence.split.reverse.join(" ") + "."
end

q2four














