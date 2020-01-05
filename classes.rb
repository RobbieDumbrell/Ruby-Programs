# The Time Class examples
time = Time.new   # returns the moment we ran this code.
time2 = time + 60   # returns one minute after we ran the code.

puts time
puts time2

puts ""

# local times give a difference to GMT at the end of the output
puts Time.local(2000, 1, 1)
puts Time.local(1976, 8, 3, 12, 31)

puts ""

# .gm gives GMT only
puts Time.gm(1955, 11, 5)

puts ""

# Arithmetic with times
time_a = Time.local(2000,1, 1, 4, 32, 43)
time_b = Time.local(2000, 2, 5, 12, 44, 2)

puts (time_b - time_a) # gives number of seconds between the two times

puts ""

# Hashes example
dict_array = [] # array literal; same as Array.new
dict_hash = {} # hash literal; same as Hash.new

dict_array[0] = "candle"
dict_array[1] = "glasses"
dict_array[2] = "truck"
dict_array[3] = "Alicia"
dict_hash["shia-a"] = "candle"
dict_hash["shaya"] = "glasses"
dict_hash["shasha"] = "truck"
dict_hash["sh-sha"] = "Alicia"

dict_array.each do |word|
	puts word
end

dict_hash.each do |c_word, word|
	puts "#{c_word}: #{word}"
end

puts ""

# You can use any object to name slots of a hash but this is not very common
weird_hash = Hash.new

weird_hash[12] = "monkeys"
weird_hash[[]] = "emptiness"
weird_hash[Time.new] = "no time like the present"

puts ""

# Ranges examples
letters = "a".."c"   # this is the range literal to make a new range

puts (["a", "b", "c"] == letters.to_a)  # this converts a range to an array

("A".."Z").each do |letter|
	print letter
end

puts ""

god_bless_the_70s = 1970..1979
puts god_bless_the_70s.min
puts god_bless_the_70s.max
puts(god_bless_the_70s.include?(1979))
puts(god_bless_the_70s.include?(1980))
puts(god_bless_the_70s.include?(1974.5))

puts ""

# Using the [...] method on a string rather works the same as an array
da_man = "Mr. T"
big_T = da_man[4]
puts big_T

puts ""

puts "Hello. My name is Julian."
puts "I'm extremely perceptive."
puts "What's your name?"

name = gets.chomp
puts "Hi, #{name}."

if name[0] == "R"
	puts "I bet you're RRRRRidiculous!"
	puts "I can just tell."
end

puts ""

# You can pass in two numbers to a string to say where to start from and how long the substring should be, or pass in a range.
prof = "We tore the universe a new space-hole, alright!"

puts prof [12, 8]
puts prof[12..19]

puts ""

def is_avi? filename
	filename.downcase[-4..-1] == ".avi"   #  negative index means that it counts from the end of the string.
end

puts is_avi?("DANCEMONKEYBOY.AVI")
puts is_avi?("toilet_paper_fiasco.jpg")
