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

