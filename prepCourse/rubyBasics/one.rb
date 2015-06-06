	
def one
	puts 'Add two strings together that, when concatenated,' 
	puts 'return your first and last name as your full name'
	puts 'one string.'
	puts "Josh " + "Lee"
end

def two
	puts "Use the modulo operator, division, or a combination of both "
	puts "to take a 4 digit number and find 1) the thousands number "
	puts "2) the hundreds 3) the tens and 4) and the ones."

	puts "Give me a number to eat. NOM NOM NOM"

	input = gets.to_i
	thousands = (input/1000)
	hundreds = (input%1000) / 100
	ones = input % 1000 % 100 % 10
	puts "There are #{thousands} thousands."
	puts "There are #{hundreds} hundreds."
	puts "There are #{ones} ones."
	
end

def three
  movies = {:movie1 => 1975,
            :movie2 => 2004,
            :movie3 => 2013,
            :movie4 => 2001,
            :movie5 => 1981
          }

  movies.each { |k, v| puts v}
end

def four
  movies = [1975, 2004, 2013, 2001, 1981]
  movies.each { |y| puts y}
end

four





