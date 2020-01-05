# Old-school Roman numerals only worked with addition of the symbols.

# I = 1, V = 5, X = 10, L = 50, C = 100, D = 500, M = 1000.

def old_roman_numerals num
	
	roman = ""

	roman = roman + "M" * (num / 1000)
	roman = roman + "D" * (num % 1000 / 500)
	roman = roman + "C" * (num % 500 / 100)
	roman = roman + "L" * (num % 100 / 50)
	roman = roman + "X" * (num % 50 / 10)
	roman = roman + "V" * (num % 10 / 5)
	roman = roman + "I" * (num % 5 / 1)

	puts roman

end

puts""
puts "Please enter any number and press enter to convert to old-style roman numerals:"
puts ""
old_roman_numerals gets.chomp.to_i