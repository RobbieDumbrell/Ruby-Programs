# writing a method that allows for an object to be saved and loaded with one method call using YAML.
require "yaml"

# methods need to be defined:
def yaml_save object, filename
	File.open filename , "w" do |f|
		f.write(object.to_yaml)
	end
end

def yaml_load filename
	yaml_string = File.read filename

	YAML::load yaml_string
end

# ...and then we can use the methods:
test_array = ["Slick Shoes",
			  "Bully Blinders",
			  "Pinchers of Peril"]

filename = "DatasGadgets.txt"

#saving:
yaml_save test_array, filename
#loading:
read_array = yaml_load filename

puts(read_array == test_array)