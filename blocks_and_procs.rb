# creating a proc that holds a block of code.
toast = Proc.new do
  puts "Cheers!"
end

toast.call # this calls the proc
toast.call
toast.call

puts ""

# blocks can take parameters
do_you_like = Proc.new do |good_stuff|
  puts "I *really* like #{good_stuff}!"
end

do_you_like.call "chocolate"
do_you_like.call "Ruby"

puts ""

# passing a proc into a method, we can control how we call it.
def do_self_importantly some_proc
  puts "Everybody just HOLD ON! I'm doing something..."
  some_proc.call
  puts "OK everyone, I'm done. As you were."
end

say_hello = Proc.new do
  puts "hello"
end

say_goodbye = Proc.new do
  puts "goodbye"
end

do_self_importantly say_hello
do_self_importantly say_goodbye

puts ""

# you can write methods that will determine how many times to call a proc.
def maybe_do some_proc
  if rand(2) == 0
    some_proc.call
  end
end

def twice_do some_proc
  some_proc.call
  some_proc.call
end

wink = Proc.new do
  puts "<wink>"
end

glance = Proc.new do
  puts "<glance>"
end

maybe_do wink
maybe_do wink
maybe_do glance
maybe_do glance
twice_do wink
twice_do glance

puts ""

# procs passed into the same method can be very different.

def do_until_false first_input, some_proc
  input = first_input
  output = first_input

  while output
    input = output
    output = some_proc.call input
  end

  input
end

build_array_of_squares = Proc.new do |array|
  last_number = array.last
  if last_number <= 0
    false
  else
    # take off the last number
    array.pop
    # ...and replace it with its square
    array.push last_number*last_number
    # ...followed by the next smallest number.
    array.push last_number - 1
  end
end

always_false = Proc.new do |just_ignore_me|
  false
end

puts do_until_false([5], build_array_of_squares).inspect

yum = "lemonade with a hint of orange blossom water"
puts do_until_false(yum, always_false)

puts ""

# methods that return procs.
def compose proc1, proc2
  Proc.new do |x|
    proc2.call(proc1.call(x)) # call for proc1 has to be inside parentheses for proc2 to run it first.
  end
end

square_it = Proc.new do |x|
  x * x
end

double_it = Proc.new do |x|
  x + x
end

double_then_square = compose double_it, square_it
square_then_double = compose square_it, double_it

puts double_then_square.call(5)
puts square_then_double.call(5)

puts ""

# passing blocks directly into methods (i.e. not defining procs)
class Array

  def each_even (&was_a_block__now_a_proc) # this makes the method not ignore the block
    # we start with "true" because
    # arrays start with 0, which is even.
    is_even = true

    self.each do |object|
      if is_even
        was_a_block__now_a_proc.call object
      end

      # toggle from even to odd, or odd to even.
      is_even = !is_even
    end
  end

end

fruits = ["apple", "bad apple", "cherry", "durian"]
fruits.each_even do |fruit|
  puts "Yum! I just love #{fruit} pies, don't you?"
end

# remember, we are getting the even-numbered *elements*
# of the array, which in this case are all the odd numbers...
[1, 2, 3, 4, 5].each_even do |odd_ball|
  puts "#{odd_ball} is NOT an even number!"
end

puts ""

# code that times how long it takes to run.
def profile block_description, &block
  start_time = Time.new
  block.call
  duration = Time.new - start_time
  puts "#{block_description}: #{duration} seconds"
end

profile "25000 doublings" do
  number = 1
  25000.times do
    number = number + number
  end

  puts "#{number.to_s.length} digits"
  # i.e. gives the number of digits in this huge number.
end

profile "count to a million" do
  number = 0
  1000000.times do
    number = number + 1
  end
end

puts ""

# you can also use yield to do the same thing
def do_it_twice(&block)
  block.call
  block.call
end

do_it_twice do
  puts "Hello"
end

# is the same as...
def do_it_twice
  yield
  yield
end

do_it_twice do
  puts "Hello"
end
