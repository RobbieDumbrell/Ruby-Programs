# if grandma doesn't want you to leave?
puts "HI SONNY, DID YOU WANT SOMETHING FROM GRANDMA?"
puts""
bye_count = 0

while true

	reply = gets.chomp

	if reply == "BYE"
		bye_count = bye_count + 1
	else 
		bye_count = 0
	end

	if bye_count >= 3
		puts "OK, BYE SWEETIE!"
		break
	end

	if reply == reply.upcase
		year = 1930 + rand(21)
		puts "NO, NOT SINCE " + year.to_s + "!"
	else
		puts "HUH?! SPEAK UP, SONNY!"
	end
end


