puts "Please enter a starting year:"
start_year = gets.chomp.to_i

puts ""

puts "Please enter an ending year:"
end_year = gets.chomp.to_i

puts "Here are all the leap years between " + start_year.to_s + " and " + end_year.to_s + ":"

year = start_year

while year <= end_year
	if year % 4 == 0
		if year % 100 != 0 || year % 400 == 0
			puts year
		end
	end

	year = year + 1
end

	