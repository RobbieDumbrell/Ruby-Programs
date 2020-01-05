# Manually writing a sorting method that sorts words alphabetically using an array & recursive method.

words = ["pineapple", "mango", "Apple", "orange", "apple", "Banana", "passionfruit", "PASSIONFRUIT", "raspberry"]

def my_dic_sort array
	recursive_sort array, [] # array is the unsorted list, and the blank array will be the sorted list.
end

def recursive_sort unsorted, sorted
	if unsorted.length <= 0
		return sorted
	end
	
	# If we get past this point, we still have words to sort.

	smallest = unsorted.pop
	still_unsorted = []

	unsorted.each do |x|
		if x.downcase < smallest.downcase # just need to add .downcase on the comparison as capitals are irrelevant to the ordering
			still_unsorted.push smallest
			smallest = x
		else still_unsorted.push x
		end
	end

	# Now smallest points to the actual smallest left in the unsorted list, and all the rest is in still_unsorted.

	sorted.push smallest

	# Moves smallest onto the end of the new sorted list.

	recursive_sort still_unsorted, sorted

	# Recursion repeats the process but starting with the remaining unsorted_list this time.
end

puts my_dic_sort(words)

