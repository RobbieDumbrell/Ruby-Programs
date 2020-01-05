# Writing a method
def say_moo
	puts "mooooooo..."
end # This just defines the method but doesn't call it.

say_moo #now it is called, the code will actually run.
say_moo
puts "coin-coin"
say_moo
say_moo

puts ""

# adding parameters to our methods
def say_moo number_of_moos
	puts "mooooooo..." * number_of_moos
end

say_moo 3
puts "oink oink"

puts ""

# local variables live inside a method only, and can't be used outside the methods
def double_this num
	num_times_2 = num * 2
	puts num.to_s + " doubled is " + num_times_2.to_s
end

double_this 44
# if you then coded:
# puts num_times_2.to_s - this would give an error because you can't call upon the local variable outside the method.

puts ""

# local variable usefulness example
tough_var = "You can't even touch my variable!"

def little_pest tough_var # this tough_var only changes for this specific method, not the global variable!
	tough_var = nil
	puts "HAHA! I ruined your variable!"
end

little_pest tough_var
puts tough_var

puts ""

# what does puts return?
return_val = puts "This puts returned:"
puts return_val


# A method returns the value of the last expression evaluated
def say_moo number_of_moos
	puts "mooooooo..." * number_of_moos
	"yellow submarine" #return value!
end

x = say_moo 3 # runs the code in the method
puts x.capitalize + ", dude..." # takes the return value of the method
puts x + "."

puts ""

# it's possible for the last expression not to be evaluated if the method has an explicit return:
def favourite_food name
	if name == "Lister"
		return "vindaloo"
	end

	if name == "Rimmer"
		return "mashed potatoes"
	end

	"hard to say...maybe fired plantain?"
end # this uses explicit returns

def favourite_drink name
	if name == "Jean-Luc"
		"tea, Earl Grey, hot"
	elsif name == "Kathryn"
		"coffee, black"
	else
		"perhaps...horchata?"
	end
end # this does not use explicit returns

puts favourite_food("Rimmer")
puts favourite_food("Lister")
puts favourite_food("Cher")
puts favourite_drink("Kathryn")
puts favourite_drink("Oprah")
puts favourite_drink("Jean-Luc")
