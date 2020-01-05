#Using .to_s to convert a number to a string so that the two resulting strings can be added together
var1 = 2
var2 = "5"

puts var1.to_s + var2

#Using .to_i
puts var1 + var2.to_i

puts ""

#Testing out some conversions
puts "15".to_f
puts "99.999".to_f
puts "99.999".to_i #rounds down
puts ""
puts "5 is my favourite number!".to_i #finds 5 in the string so brings back 5
puts "Who asked you about 5 or whatever?".to_i #no integers so brings back 0
puts "Your momma did.".to_f
puts ""
puts "stringy".to_s #no change
puts 3.to_i #no change

puts ""

#gets retrieves a string from the user - this will wait for the user to type something & press enter.
puts gets

puts ""

#gets also sees the 'enter' and will offset the line when the enter is used.

puts "Hello there, and what's your name?"
name = gets
puts "Your name is " + name + "? What a lovely name!"
puts "Pleased to meet you, " + name + ". :)"

puts ""

#gets.chomp takes of any 'enter' characters at the end of strings.

puts "Hello there, and what's your name?"
name = gets.chomp
puts "Your name is " + name + "? What a lovely name!"
puts "Pleased to meet you, " + name + ". :)"