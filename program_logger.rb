# a method that takes a string descirption of a block, telling you when its running and when its finished.

def log desc, &block
  puts "Beginning '" + desc + "'..."
  result = block.call
  puts "...'" + desc + "' finished, returning: " + result.to_s
end

log "outer block" do
  log "some little block" do
    1**1 + 2**2
  end

  log "yet another block" do
    "!doof iahT ekil I".reverse
  end

  "0" == 0
end

puts ""

# Better program logger with indented inner blocks.

$logger_depth = 0 # global variable

def log desc, &block
  prefix = " "*$logger_depth

  puts prefix + "Beginning '" + desc + "'..."

  $logger_depth = $logger_depth + 1

  result = block.call

  $logger_depth = $logger_depth - 1

  puts prefix + "...'" + desc + "' finished, returning: " + result.to_s
end

log "outer block" do
  log "some little block" do
    log "teeny-tiny block" do
      "lOtS oF lOVe".downcase
    end
    7 * 3 * 2
  end
  log "yet another block" do
    "doof naidnI evol I".reverse
  end
  "0" == '0'
end
