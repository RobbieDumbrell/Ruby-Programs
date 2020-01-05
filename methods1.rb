#.method syntax works with arithmetic, but it doesn't look very nice so isn't often used.
puts ("hello ".+ "world")
puts "hello " + "world"

puts ""

puts ((10.* 9).+ 9)
puts ((10 * 9) + 9)

puts ""

#puts and gets are methods that don't require the object to be specifically stated
#the object here is the "main" object that represents the whole program, as shown by "puts self"
puts self

puts ""

#.reverse example
var1 = "stop"
var2 = "deliver repaid desserts"
var3 = "....TCELES B HSUP  A magic spell?"

puts var1.reverse
puts var2.reverse
puts var3.reverse
puts var1
puts var2
puts var3

puts ""

#.length example - we need to convert to a string within the puts for this example to work
puts "What is your full name?"
name = gets.chomp
puts "Did you know there are " + name.length.to_s + " characters"
puts "in your name, " + name + "?"

puts ""

#.length example 2
puts "What is your first name?"
first_name = gets.chomp

puts ""

puts "What is your middle name?"
middle_name = gets.chomp

puts ""

puts "What is your last name?"
last_name = gets.chomp

puts ""

puts "Did you know there are " + (first_name.length + middle_name.length + last_name.length).to_s + " letters"
puts "in your name, " + first_name + " " + middle_name + " " + last_name + "?"

puts ""

#Case changing methods examples
letters = "aAbBcCdDeE"
puts letters.upcase
puts letters.downcase
puts letters.swapcase
puts letters.capitalize
puts " a".capitalize #first character is a space so capitalize doesn't work here.
puts letters

puts ""

#.center example
line_width = 50 #so it's easy to change later if we want to
puts ("Old Mother Hubbard".center(line_width))
puts ("Sat in her cupboard".center(line_width))
puts ("Eating her curds and whey, ".center(line_width))
puts ("When along came a spider".center(line_width))
puts ("Who sat down beside her".center(line_width))
puts ("And scared her poor shoe dog away.".center(line_width))

puts ""

#.ljust and r.just examples.
line_width2 = 40
str = "--> text <--"
puts (str.ljust(line_width2))
puts (str.center(line_width2))
puts (str.rjust(line_width2))
puts (str.ljust(line_width2/2) + str.rjust(line_width2/2))

puts ""

#Angry Boss example
puts "What the bloody hell do you want?"
answer = gets.chomp

puts ""

puts "WHAT DO YOU MEAN \"" +  answer.upcase + "\"?!? YOU'RE FIRED!"

puts ""

#Table of contents example

line_width3 = 50
puts ("Table of Contents".center(line_width3))
puts ""
puts ("Chapter 1: Getting Started".ljust(line_width3/2) + "page  1".rjust(line_width3/2))
puts ("Chapter 2: Numbers        ".ljust(line_width3/2) + "page  9".rjust(line_width3/2))
puts ("Chapter 3: Letters        ".ljust(line_width3/2) + "page 13".rjust(line_width3/2))