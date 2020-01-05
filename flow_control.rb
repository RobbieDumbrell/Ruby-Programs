# Using comparison objects
puts 1 > 2
puts 1 < 2

puts ""

puts 5 >= 5
puts 5 <= 4

puts ""

puts 1 == 1
puts 2 != 1

puts ""

puts "cat" < "dog" # cat first in alphabetical order, so has a lower value, so is < than dog.

puts ""

puts "bug lady" < "Xander" # will give false as capital X comes first.
puts "bug lady" < "Xander".downcase # will give true as Xander is downcased.

puts ""

puts 2 < 10
puts "2" < "10" # will give false because "1" character comes before "2" character.

puts ""

# Branching (using If statements to run code under specific circumstances)

puts "Hello, what's your name?"
name = gets.chomp
puts "Hello, " + name + "."

if name == "Robbie"
	puts "What a lovely name!"
end

puts ""

puts "I am a fortune teller. Tell me your name:"
name = gets.chomp

if name == "Robbie"
	puts "I see great things in your future"
else
	puts "Your future is...oh my! Look at the time!"
	puts "I really have to go, sorry!"
end

puts ""

#Branching within branching

puts "Hello, and welcome to seventh grade English"
puts "My name is Mrs. Gabbard. And your name is...?"
name = gets.chomp

if name == name.capitalize
	puts "Please take a seat, " + name + "."
else
	puts name + "? You mean " + name.capitalize + ", right?"
	puts "Don't you even know how to spell your own name??"
	reply = gets.chomp
	if reply.downcase == "yes"
		puts "Hmph!, Well, sit down!"
	else 
		puts "GET OUT!!"
	end
end

puts ""

# Looping (using While statements to repeat tasks whilst a criteria is true).

input = ""
while input != "bye"
	puts input
	input = gets.chomp
end
puts "Come again soon!"

puts ""

# using "if" and "break" within the While statement allows it to flow more logically.
while true
	input = gets.chomp
	puts input
	if input == "bye"
		break
	end
end

puts "Come again soon!"