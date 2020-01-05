def english_number number
	# We accept integers from 0 to 100:
	if number < 0 
		return "Please enter a number zero or greater."
	end
	if number > 100
		return "Please enter a number 100 or less."
	end

	num_string = "" # This is the string we will return.

	# "left" is how much of the number we still have left to write out.
	# "write" is the part we are writing out right now.

	left = number
	write = left/100   # How many hundreds left?
	left = left - write*100   # Subtract off those hundreds.

	if write > 0
		return "one-hundred"
	end

	write = left/10   # How many tens left?
	left = left - write*10   # Subtract off those tens.

	if write > 0
		if write == 1
			# The teens work differently so have to make an exception...
			if left == 0 
				num_string = num_string + "ten"
			elsif left == 1
				num_string = num_string + "eleven"
			elsif left == 2
				num_string = num_string + "twelve"
			elsif left == 3
				num_string = num_string + "thirteen"
			elsif left == 4
				num_string = num_string + "fourteen"
			elsif left == 5
				num_string = num_string + "fifteen"
			elsif left == 6
				num_string = num_string + "sixteen"
			elsif left == 7
				num_string = num_string + "seventeen"
			elsif left == 8
				num_string = num_string + "eighteen"
			elsif left == 9
				num_string = num_string + "nineteen"
			end

			left = 0
		elsif write == 2
			num_string = num_string + "twenty"
		elsif write == 3
			num_string = num_string + "thirty"	
		elsif write == 4
			num_string = num_string + "fourty"	
		elsif write == 5
			num_string = num_string + "fifty"	
		elsif write == 6
			num_string = num_string + "sixty"	
		elsif write == 7
			num_string = num_string + "seventy"	
		elsif write == 8
			num_string = num_string + "eighty"	
		elsif write == 9
			num_string = num_string + "ninety"	
		end

		if left > 0 
			num_string = num_string + "-"
		end
	end

	write = left    # How many ones left to write out?
	left = 0   # Subract off those ones.

	if write > 0 
		if write == 1
			num_string = num_string + "one"
		elsif write == 2
			num_string = num_string + "two"
		elsif write == 3
			num_string = num_string + "three"
		elsif write == 4
			num_string = num_string + "four"
		elsif write == 5
			num_string = num_string + "five"
		elsif write == 6
			num_string = num_string + "six"
		elsif write == 7
			num_string = num_string + "seven"
		elsif write == 8
			num_string = num_string + "eight"
		elsif write == 9
			num_string = num_string + "nine"
		end
	end

	if num_string == ""
		return "zero" # only way num_string could still be empty is if the number is 0.
	end

	return num_string
end

puts ""

puts "Please enter an integer between 0 and 100 to be converted to words. Enter \"stop\" to end program."

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


