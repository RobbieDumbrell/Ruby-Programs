# Table of contents, revisited

# Original program
line_width3 = 50
puts ("Table of Contents".center(line_width3))
puts ""
puts ("Chapter 1: Getting Started".ljust(line_width3/2) + "page  1".rjust(line_width3/2))
puts ("Chapter 2: Numbers        ".ljust(line_width3/2) + "page  9".rjust(line_width3/2))
puts ("Chapter 3: Letters        ".ljust(line_width3/2) + "page 13".rjust(line_width3/2))

# Program using an array

title = "Table of Contents"

chapters = [["Getting Started",    1],
			["Numbers",            9],
			["Letters",           13]]

puts title.center(50)
puts ""

chap_num = 1

chapters.each do |chap|
	name = chap[0]
	page = chap[1]
 
	beginning = "Chapter " + chap_num.to_s + ": " + name
	ending = "page " + page.to_s

	puts beginning.ljust(30) + ending.rjust(20)
	chap_num = chap_num +1
end
			