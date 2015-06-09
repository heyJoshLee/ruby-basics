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

