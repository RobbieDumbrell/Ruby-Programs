# program to enter a name and give back that person's birthday based on a text file database.


birthdays = {}  # empty birthdays hash

File.read("birthdays.txt").each_line do |line|

	line = line.chomp
	first_comma = 0

	while line[first_comma] != "," && first_comma < line.length
		first_comma = first_comma + 1
	end

	name = line[0..(first_comma - 1)]
	date = line[-10..-1]

	birthdays[name] = date
end

puts ""

puts "Whose birthday would you like to know?"

puts ""

name = gets.chomp
date = birthdays[name]

if date == nil
	puts "Sorry, I don't know that person!"
else 
	puts date
end
