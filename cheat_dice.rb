# writing a cheat method to go with the dice method to allow the user to cheat.

class Die
	def initialize
		roll   # we could set the dice to be a specific number if we wanted
	end

	def roll
		@number_showing = 1 + rand(6)
	end

	def showing
		@number_showing
	end
end


puts "Hello! Today we are going to roll a dice."
puts "Would you like to cheat? (Yes or No)"

answer = gets.chomp
answer = answer.capitalize

puts ""

if answer == "Yes"
  puts "What number would you like your dice to come out with? (enter a digit 1 to 6)"
  cheat_number = gets.chomp.to_i

  if cheat_number < 1 || cheat_number > 6
    puts "You can't roll a dice to give that number, silly!"
    puts "Please choose another number:"
    cheat_number = gets.chomp.to_i

    if cheat_number < 1 || cheat_number > 6
      puts "You clearly don't know how dice work! Good day!"
    end

    if cheat_number >= 1 && cheat_number <= 6
      puts ""
      puts "Here is your dice roll:"
      puts cheat_number
    end

  elsif cheat_number >= 1 && cheat_number <= 6
    puts ""
    puts "Here is your dice roll:"
    puts cheat_number
  end

elsif answer == "No"
  puts "Here is your dice roll:"
  puts Die.new.showing
end
