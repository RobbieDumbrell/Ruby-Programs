#Creating variables i.e. storing strings with assigned names
my_string = "...you can say that again"

puts my_string
puts my_string

puts ""

name = "Anya Christina Emmanuella Jenkins Harris"

puts "My name is " + name + "."
puts "Wow! " + name
puts "is a really long name!"

puts ""

#reassigning a variable to a new object
composer = "Mozart"
puts composer + " was \"da bomb\" in his day."

composer = "Beethoven"
puts "But I prefer " + composer +", personally."

puts ""

#variables can point to any kind of object, not just strings.
my_own_var = "just another " + "string"
puts my_own_var

my_own_var = 5 * (1+2)
puts my_own_var

puts ""

#variables pointing to other variables won't change as the orginal variable it points to changes
var1 = 8
var2 = var1
puts var1
puts var2

puts ""

var1 = "eight"
puts var1
puts var2