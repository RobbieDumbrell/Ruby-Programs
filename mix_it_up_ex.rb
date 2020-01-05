#Full name greeting
puts "Hello! What is your first name?"
first_name = gets.chomp

puts""

puts "Thank you! What is your middle name?"
middle_name = gets.chomp

puts""

puts "Thanks again! Finally, what is your last name?"
last_name = gets.chomp

puts""

puts "Welcome to the program, " + first_name + " " + middle_name + " " + last_name + "!"

puts ""

#Favourite Number
puts "What is your favourite number, " + first_name + "?"
number = gets.chomp
better_number = number.to_i + 1
string_number = better_number.to_s

puts""

puts "That's a fine number, however I think that " + string_number + " is a bigger and better favourite number..."

