#Exponentiation and Modulus arithmetic methods example
puts 5**2
puts 5**0.5
puts 7/3
puts 7%3
puts 365%7

puts ""

#.abs returns absolute values
puts (5-2).abs
puts (2-5).abs
puts (2-5)

puts ""

#rand examples
puts rand
puts rand
puts rand
puts (rand(100))
puts (rand(100))
puts (rand(100))
puts (rand(1)) # will always give 0 as integer is specified
puts (rand(1))
puts (rand(1))
puts (rand(99999999999999999999999999999999999))
puts ("The weatherman said there is a")
puts (rand(101).to_s + "% chance of rain")
puts ("but you can never trust a weatherman.")

puts ""

#srand sets the seed for the same random numbers to be re-used
srand 1976
puts (rand(100))
puts (rand(100))
puts (rand(100))
puts (rand(100))
puts ""
srand 1976
puts (rand(100))
puts (rand(100))
puts (rand(100))
puts (rand(100))

puts ""

#The Math Object examples - uses :: notation (scope operator)
puts (Math::PI)
puts (Math::E)
puts (Math.cos(Math::PI/3))
puts (Math.tan(Math::PI/4))
puts (Math.log(Math::E**2))
puts ((1 + Math.sqrt(5))/2)

