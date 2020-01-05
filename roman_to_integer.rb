# Converting (Modern) Roman Numerals to regular numbers

# I = 1, V = 5, X = 10, L = 50, C = 100, D = 500, M = 1000.

def roman_to_integer roman_number

	digit_vals = {"i" => 1,
				  "v" => 5,
				  "x" => 10,
				  "l" => 50,
				  "c" => 100,
				  "d" => 500,
				  "m" => 1000}

	total = 0
	prev = 0
	index = roman_number.length - 1

	while index >= 0 

		c = roman_number[index].downcase
		index = index - 1
		val = digit_vals[c]

		if !val
			puts "This is not a valid roman numeral!"
			return
		end

		if 
			val < prev
			val = val * -1
		else 
			prev = val
		end 

		total = total + val
	end

	total 
end

puts ""

puts "Please enter your Roman Numeral to be converted into an actual number:"

puts ""

roman = gets.chomp 

converted_roman = roman_to_integer roman

puts converted_roman


