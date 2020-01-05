# difference between single and double quoted strings
buffy_quote_1 = '\'Kiss rocks\'?
				Why would anyone want to kiss...
				Oh, wait. I get it.'

buffy_quote_2 = "'Kiss rocks'?\n" +
				"Why would anyone want to kiss...\n" +
				"Oh, wait. I get it."

puts buffy_quote_1
puts ""
puts buffy_quote_2
puts ""
puts (buffy_quote_1 == buffy_quote_2)   # this returns false becuase they are not the same.

puts ""

# multiline strings on one line of code
puts "3...\n2...\n1...\nHAPPY NEW YEAR!" # /n doesn't work with single quote marks ('')

puts ""

# interpolation using #{} works with double quoted strings.
name = "Luke"
zip = 90210

puts "Name = #{name}, Zipcode = #{zip}" # doesn't require .to_s

puts""

# it doesn't have to be a variable inside #{}, it can be any expression
puts "#{2 * 10**4 +1} Leagues Under the Sea, THE REVENGE!"