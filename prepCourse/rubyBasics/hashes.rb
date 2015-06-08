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
p one