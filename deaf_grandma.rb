# grandma can't hear you unless you shout, and even then she can't
puts "HI SONNY, DID YOU WANT SOMETHING FROM GRANDMA?"
puts""

while true

	reply = gets.chomp

	if reply == "BYE"
		puts "BYE BYE, SWEETIE."
		break
	end

	if reply == reply.upcase
		year = 1930 + rand(21)
		puts "NO, NOT SINCE " + year.to_s + "!"
	else
		puts "HUH?! SPEAK UP, SONNY!"
	end
end


