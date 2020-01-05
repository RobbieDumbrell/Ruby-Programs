# creating our own .to_something version of a method.
class Integer 
	def to_eng
		if self == 5
			english = "five"
		else
			english = "forty-two"
		end

		english
	end
end

puts 5.to_eng
puts 42.to_eng

puts ""




# SHUFFLE METHOD TO AN ARRAY METHOD:

words = ["pineapple", "mango", "apple", "orange", "banana", "passionfruit", "raspberry"]

sorted_words = words.sort

puts sorted_words

puts ""

class Array # enter into the Array class before defining the method
	def shuffle 
		array = self   # turn array to self
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
end

puts sorted_words.shuffle   # allows you to put .shuffle 

puts ""




# FACTORIAL METHOD WITHIN INTEGER CLASS

class Integer
	def factorial
		if self <= 1
			1
		else 
			self * (self-1).factorial
		end
	end
end

puts 5.factorial


puts ""


# MODERN ROMAN NUMERALS WITHIN INTEGER CLASS


class Integer

	def to_roman

		num = self

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
end

puts 9.to_roman


# CREATING NEW CLASSES ENTIRELY

class Die

	def roll
		1 + rand(6)
	end
end

dice = [Die.new, Die.new] # we have made 2 new dice

dice.each do |die|
	puts die.roll    # and we are rolling the two dice
end

puts ""


# Instance variables are denoted with @s and last as long as the object they sit within lasts.
class Die
	def roll
		@number_showing = 1 + rand(6)
	end

	def showing
		@number_showing
	end
end

die = Die.new
die.roll
puts die.showing
puts die.showing
die.roll
puts die.showing
puts die.showing

puts ""


# initialize allows the object to be automatically set up in a certain way as it is created.

class Die
	def initialize
		roll   # we could set the dice to be a specific number if we wanted
	end

	def roll
		@number_showing = 1 + rand(6)
	end

	def showing
		@number_showing
	end
end

puts Die.new.showing




