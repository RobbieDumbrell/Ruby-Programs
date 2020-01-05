def english_number number
	if number < 0 # No negative numbers...
		return "Please enter a number that isn't negative."
	end
	if number == 0 
		return "zero"
	end

	# No more special cases...
	num_string = "" # This is the string we will return.

	ones_place = ["one",       "two",       "three", 
				  "four",      "five",      "six", 
				  "seven",     "eight",     "nine"]

	tens_place = ["ten",       "twenty",    " thirty",
				  "forty",     "fifty",     "sixty",
				  "seventy",   "eighty",    "ninety"]

	teens      = ["eleven",    "twelve",    "thirteen",
				  "fourteen",  "fifteen",   "sixteen", 
				  "seventeen", "eighteen",  "nineteen"]

	# "left" is how much of the number we still have left to write out.
	# "write" is the part we are writing out right now.

	left = number
	write = left/100     # How many hundreds left?
	left = left - write*100    # Subtract off those hundreds.

	if write > 0
		# here's the recursion...
		hundreds = english_number write 
		num_string = num_string + hundreds + " hundred"
		if left > 0
			# so we don't write "two hundredfifty-one"
			num_string = num_string + " "
		end
	end

	write = left/10     # How many tens left?
	left = left - write*10    #Subtract off those tens.

	if write > 0
		if ((write == 1) and (left > 0))
			# these are the teens so are different...
			num_string = num_string + teens[left-1]
			left = 0
		else 
			num_string = num_string + tens_place [write-1]
		end

		if left > 0 
			num_string = num_string + "-"
		end
	end

	write = left    # How many ones left to write out?
	left = 0    # Subtract those ones.

	if write > 0
		num_string = num_string + ones_place[write-1]
	end

	return num_string
end

puts ""

puts "Please enter a positive INTEGER to be converted to words. Enter \"stop\" to end program."

puts ""

while true

my_integer = gets.chomp

	if my_integer == "stop"
		puts "Goodbye!"
		break
	end

	i_my_integer = my_integer.to_i

puts english_number i_my_integer 

puts ""

end