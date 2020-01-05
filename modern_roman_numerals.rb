# Modern roman numerals subtract if the smaller number is before the larger one (so more complicated!)

# I = 1, V = 5, X = 10, L = 50, C = 100, D = 500, M = 1000.

def modern_roman_numerals num

	thousands = (num / 1000)
	hundreds = (num % 1000 / 100)
	tens = (num % 100 / 10)
	ones = (num % 10 / 1)

	roman = "M" * thousands 

	if hundreds == 9
		roman = roman + "CM"
	elsif hundreds == 4 
		roman = roman + "CD"
	else 
		roman = roman + "D" * (num % 1000 / 500)
		roman = roman + "C" * (num % 500 / 100)
	end

	if tens == 9 
		roman = roman + "XC"
	elsif tens == 4
		roman = roman + "XL"
	else 
		roman = roman + "L" * (num % 100 / 50)
		roman = roman + "X" * (num % 50 / 10)
	end

	if ones == 9
		roman = roman + "IX"
	elsif ones == 4
		roman = roman + "IV"
	else
		roman = roman + "V" * (num % 10 / 5)
		roman = roman + "I" * (num % 5 / 1)
	end

	puts roman

end

puts ""

puts "Please enter a number to be converted into roman numerals:"

puts ""

while true

number = gets.chomp.to_i
	
		modern_roman_numerals number
		
		puts ""
end






