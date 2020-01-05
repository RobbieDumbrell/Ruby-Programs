# Moving and renaming a load of pictures from one folder to another in a Ruby program.

# Changing working directory, this is where the pics are to be moved to:
Dir.chdir "C:/Users/Rober/Desktop/Chris Pine Ruby Programs/Pictures" 

# Find all of the pictures to be moved:
pic_names = Dir["C:/Users/Rober/Documents/Developer Stuff/Ad Hoc/Pictures example/*.jpg"]

puts "What would you like to call this batch?"
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files:  "

# This will be our counter, starting from 1
pic_number = 1

pic_names.each do |name|
	print "."  # This is our progress bar

	new_name = if pic_number < 10
		"#{batch_name}0#{pic_number}.jpg"
	else
		"#{batch_name}#{pic_number}.jpg"
	end

	while File.exist?(new_name) == true
		new_name = if pic_number < 10
		"#{batch_name}0#{pic_number}a.jpg"
	else
		"#{batch_name}#{pic_number}a.jpg"
	end
end


	File.rename name, new_name #this renames the moved file 

	pic_number = pic_number + 1
end

puts 
puts"Done!"