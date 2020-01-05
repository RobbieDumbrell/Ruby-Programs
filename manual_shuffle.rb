# Manually writing a shuffle method (something that does the opposite to sort)

words = ["pineapple", "mango", "apple", "orange", "banana", "passionfruit", "raspberry"]

sorted_words = words.sort

puts sorted_words

puts ""

def shuffle array
	shuf = []

	while array.length > 0
		# randomly pick one element in the array:
		random_index = rand(array.length)

		# then go through each item putting all into a remaining_list except for the chosen one into shuf.

		current_index = 0
	
		remaining_list = []

		array.each do |array_element|
			if current_index == random_index 
				shuf.push array_element
			else 
				remaining_list.push array_element
			end

			current_index = current_index + 1
		end

		array = remaining_list # replacing the original array to be sorted with the remaining list to repeat.

	end

 shuf

end

puts shuffle(sorted_words)




