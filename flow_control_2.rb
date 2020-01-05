# Using "elsif" within If statements allows two different criteria to run either separate or the same code.

puts "Hello, what's your name?"
name = gets.chomp
puts "Hello, " + name + "."

if name == "Robbie"
	puts "What a lovely name!"
elsif name == "Ellie"
	puts "What a lovely name!" # this isn't very good code though because you repeat yourself!
end

puts ""

puts "Hello, what's your name?"
name = gets.chomp
puts "Hello, " + name + "."

if name == "Robbie" || name == "Ellie" # no repetition is better code! (|| means "or")
	puts "What a lovely name!"
end

puts ""

# Logical operators examples
i_am_robbie = true
i_am_purple = false
i_like_chocolate = true
i_eat_rocks = false

puts i_am_robbie && i_like_chocolate
puts i_like_chocolate && i_eat_rocks
puts i_am_purple && i_like_chocolate
puts i_am_purple && i_eat_rocks
puts
puts i_am_robbie || i_like_chocolate
puts i_like_chocolate || i_eat_rocks
puts i_am_purple || i_like_chocolate
puts i_am_purple || i_eat_rocks
puts
puts !i_am_purple
puts !i_am_robbie

puts

# example of a loop and a branch 
while true
	puts "What would you like to ask C to do?"
	request = gets.chomp

	puts "You say, \"C, please " + request + "\""

	puts "C's response:"
	puts "\"C " + request + ".\""
	puts "\"Papa " + request + ", too.\""
	puts "\"Mama " + request + ", too.\""
	puts "\"Ruby " + request + ", too.\""
	puts "\"Nono " + request + ", too.\""
	puts "\"Emma " + request + ", too.\""
	puts

	if request == "stop"
		break
	end
end
