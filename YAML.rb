# Importing YAML example
require "yaml"   # this imports YAML

test_array = ["Give Quiche A Chance",
			  "Mutants Out!",
			  "Chameleonic Life-Forms, No Thanks"]

# .to_yaml method converts an array to a YAML description of itself.
test_string = test_array.to_yaml

filename = "RimmerTShirts.txt"

File.open filename, "w" do |f|
	f.write test_string
end

read_string = File.read filename  #reads the file back out again

read_array = YAML::load read_string

puts(read_string == test_string)
puts(read_array == test_array)