# method that takes a block and calls it once for each hour passed today.

def grandfather_clock &block

  current_time = Time.new.hour

  if current_time > 12
    current_time = current_time - 12
  else
    current_time = current_time
  end
 x = current_time.to_i
 x.times do
   block.call
 end
end

grandfather_clock do
  puts "DONG!"
end
