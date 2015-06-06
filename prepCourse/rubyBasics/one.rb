	
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
  puts "Write a program that uses a hash to store a list "
  puts "of movie titles with the year they came out. Then" 
  puts "use the puts command to make your program print out"
  puts "the year of each movie to the screen. The output for"
  puts "your program should look something like this."
  puts "1975"
  puts "2004"
  puts "2013"
  puts "2001"
  puts "1981\n\n\n"
  movies = {:movie1 => 1976,
            :movie2 => 2005,
            :movie3 => 2014,
            :movie4 => 2002,
            :movie5 => 1982
          }

  movies.each { |k, v| puts v}
end

def four
  puts "Use the dates from the previous example and" 
  puts "store them in an array. Then make your program"
  puts "output the same thing as exercise 3"
  movies = [1976, 2005, 2014, 2002, 1982]
  movies.each { |y| puts y}
end

def five 
  puts "Write a program that outputs the factorial of the "
  puts "numbers 5, 6, 7, and 8."

  puts "5: " + (5 * 4 * 3 * 2 * 1).to_s
  puts "6: " + (6 * 5 * 4 * 3 * 2 * 1).to_s
  puts "7: " + (7 * 6 * 5 * 4 * 3 * 2 * 1).to_s
  puts "8: " + (8 * 7 * 6 * 5 * 4 * 3 * 2 * 1).to_s
end

def six
  puts "Write a program that calculates the squares of 3 float "
  puts "numbers of your choosing and outputs the result to the screen."

  puts "4.5 : " + (4.5 * 4.5).to_s
  puts "31.143 : " + (31.143 * 31.143).to_s
  puts "341.435 : " + (341.435 * 341.435).to_s
end

def seven
  puts "What does the following error message tell you?\n\n"
  puts "SyntaxError: (irb):2: syntax error, unexpected ')', expecting '}'
    from /usr/local/rvm/rubies/ruby-2.0.0-rc2/bin/irb:16:in `<main>'\n\n"

  puts "One line 2 there is a ')' but there should be a '}'."
end

seven





