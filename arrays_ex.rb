# Building and sorting an array
entered_words = []


puts "Please type words one at a time and press enter to add to the list:"
puts "(Leave blank and just press enter to finalise list)"

while true 

	word = gets.chomp

	if word == ""
		puts ""
		puts "Here is your alphabetised list:"
		puts entered_words.sort
		break

	else
		entered_words.push word
		
	end
end
