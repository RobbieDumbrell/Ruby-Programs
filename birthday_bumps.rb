# figure out how old someone is from their birthday and give them the bumps!
puts ""

puts "What year were you born in?"
year = gets.chomp.to_i

puts ""

puts "What month were you born in? (please enter month number from 1-12)"
month = gets.chomp.to_i

puts ""

puts "What day of the month were you born in? (please enter the day number e.g. the 1st would be 1)"
day = gets.chomp.to_i

puts ""

birthday = Time.gm(year, month, day)

bumps = (((Time.new - birthday)/60/60/24)/365)

puts "You are #{bumps.to_i} years old! So here are #{bumps.to_i} bumps for you!"

puts ""

(bumps.to_i).times do
	puts "BUMP!"
end