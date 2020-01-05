# Examples of arrays
[] # empty array
[5] # array holding single number
["Hello", "Goodbye"] # array holding two strings

flavour = "vanilla"
[89.9, flavour, [true, false]] # array holding three objects (one being another array)

# array slots are referenced through index numbers
names = ["Ada", "Belle", "Chris"]

puts names
puts ""
puts names[0]
puts names[1]
puts names[2]
puts names[3] # this is out of range here, so will puts nil.

# assigning array slots like variables

other_peeps = []
other_peeps[3] = "beebee Meaner"
other_peeps[0] = "Ah-ha"
other_peeps[1] = "Seedee"
other_peeps[0] = "beebee Ah-ha"
puts other_peeps

puts ""

# .each method example acting on each slot in an array (this is a type of iterator)
languages = ["English", "Norwegian", "Ruby"]

languages.each do |lang|
	puts "I love " + lang + "!"
	puts "Don't you?"
end

puts "And let's hear it for Java!"
puts "<crickets chirp in the distance>"

puts ""

# x.times is another example of an iterator
3.times do
	puts "Hip-Hip-Hooray!"
end

puts ""

2.times do
	puts "...you can say that again..."
end

puts ""

#. to_s and .join methods effects on arrays
foods = ["artichoke", "brioche", "caramel"]

puts foods
puts ""
puts foods.to_s
puts ""
puts foods.join(", ")
puts ""
puts foods.join(" :) ") + " 8)"

200.times do
	puts [] # won't do anything as array is empty.
end

puts ""

# putsing arrays with arrays within them
puts ["Hello", "Goodbye", ["Red", "Blue"]]

puts ""

# .push, .pop, and .last, .length array methods.
favourites = []
favourites.push "raindrops on roses"
favourites.push "whiskey on kittens"

puts favourites[0]
puts favourites.last
puts favourites.length

puts favourites.pop #actually removes the object it will print to the screen.
puts favourites
puts favourites.length
