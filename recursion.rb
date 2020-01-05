# Using recursion in place of while loops.
def ask_recursively question
	puts question
	reply = gets.chomp.downcase

	if reply == "yes"
		true
	elsif reply == "no"
		false
	else
		puts "Please answer \"yes\" or \"no\"."
		ask_recursively question # this line is the method calling itself within itself (so acts like a loop).
	end
end

ask_recursively "Do you wet the bed?"

puts ""

# Recursion is classically used in computing factorials.

def factorial num
	if num < 0
		return "You can't take the factorial of a negative number!"
	end

	if num <= 1
		1
	else
		num * factorial(num-1)
	end
end

puts factorial (3)
puts factorial (30)
