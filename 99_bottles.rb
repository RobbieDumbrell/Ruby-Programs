
amount_of_bottles = 99

while amount_of_bottles > 2

	puts amount_of_bottles.to_s + " bottles of beer on the wall, " + amount_of_bottles.to_s + " bottles of beer!"

	amount_of_bottles = amount_of_bottles - 1

	puts "You take one down, and pass it around, there's " + amount_of_bottles.to_s + " bottles of beer on the wall!"

end

puts "2 bottles of beer on the wall, 2 bottles of beer!"
puts "You take one down, and pass it around, there's 1 bottle of beer on the wall!"
puts "1 bottle of beer on the wall, 1 bottle of beer!"
puts "You take one down, and pass it around, there are no more bottles of beer on the wall!"
puts "Woop!"

