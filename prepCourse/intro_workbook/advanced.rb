def four
	puts "A UUID is a type of identifier often used as a way to "
	puts "uniquely identify items...which may not all be created "
	puts "by the same system. That is, without any form of "
	puts" synchronization, two or more separate computer systems "
	puts "can create new items and label them with a UUID with no "
	puts "significant chance of stepping on each other's toes."
	puts "It accomplishes this feat through massive randomization. "
	puts "The number of possible UUID values is approximately "
	puts "3.4 X 10E38."
	puts "Each UUID consists of 32 hexadecimal characters, and is "
	puts "typically broken into 5 sections like this 8-4-4-4-12 and "
	puts "represented as a string."
	puts "It looks like this: 'f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91'"
	puts "Write a method that returns one UUID when called with no "
	puts "parameters."
	characters = [] 
    (0..9).each { |digit| characters << digit.to_s }
    ('a'..'f').each { |digit| characters << digit }

    uuid = ""
    sections = [8, 4, 4, 4, 12]
    sections.each_with_index do |section, index|
      section.times { uuid += characters.sample }
      uuid += '-' unless index >= sections.size - 1
    end

    uuid
end

def five
	def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false unless dot_separated_words.size == 4

  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless is_a_number?(word)
  end

  true
end