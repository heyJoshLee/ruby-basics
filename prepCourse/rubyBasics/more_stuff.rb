def one 
	puts "Write a program that checks if the sequence of "
	puts "characters 'lab' exists in the following strings. "
	puts "If it does exist, print out the word."

	myArray = [
		"laboratory",
		"experiment",
		"Pans Labyrinth",
		"elaborate",
		"polar bear"
  ]

  myArray.each do |e|
    if /lab/.match(e)
      puts e + "- match!"
    else
      puts e + "- no match"
    end
  end
end

def execute(&block)
  puts "Modify the code in exercise 2 to "
  puts "make the block execute properly\n\n"

  block.call
end

execute {puts "Hello from inside the execute method!"}

