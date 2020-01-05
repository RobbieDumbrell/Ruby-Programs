# code that times how long it takes to run.
# with added ability to turn all profiling on or off.

def profile block_description, &block
  # to turn profiling on/off, set this to true/false
  profiling_on = true

  if profiling_on
  start_time = Time.new
  block.call
  duration = Time.new - start_time
  puts "#{block_description}: #{duration} seconds"
  else
    block.call
  end
end





# examples

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
