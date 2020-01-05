# Orange tree clas that grows taller, grows oranges, and allows you to pick oranges.

class OrangeTree

  def initialize
    @height = 0
    @oranges = 0
    @age = 0
    @alive = true
    puts "An Orange Tree seed is planted"
  end

  def one_year_passes
    @age = @age + 1
    @height = @height + 0.5
    if @age > 10
      @alive = false
      puts "The tree is dead!"
      exit
    else
      if @age >= 4
        @oranges = @age * 5
        else
          @oranges = 0
      end
    puts "The tree is #{@age} years old!"
    puts "The tree is #{@height} metres tall!"
    puts "The tree has #{@oranges} oranges on it!"
    end
  end

  def count_the_oranges
    puts "There are currently #{@oranges} oranges!"
  end

  def pick_an_orange
    if @oranges <= 0
      puts "There are no oranges to pick!"
    else
    @oranges = @oranges - 1
    puts "You picked an orange, it was delicious!"
    end
  end

end

my_tree = OrangeTree.new
puts ""
my_tree.one_year_passes
puts ""
my_tree.one_year_passes
puts ""
my_tree.pick_an_orange
my_tree.count_the_oranges
puts ""
my_tree.one_year_passes
puts ""
my_tree.one_year_passes
puts ""
my_tree.one_year_passes
puts ""
my_tree.one_year_passes
puts ""
my_tree.one_year_passes
puts ""
my_tree.pick_an_orange
my_tree.count_the_oranges
my_tree.pick_an_orange
my_tree.count_the_oranges
puts ""
my_tree.one_year_passes
puts ""
my_tree.one_year_passes
puts ""
my_tree.one_year_passes
puts ""
my_tree.one_year_passes
puts ""
