class OrangeTree

attr_accessor :age, :height, :orangeCount

  def initialize(age)
    @age = age
    @height = height
    @orangeCount = orangeCount
  end

  def input
    input = gets.chomp
  end

# The growth rate of the orange tree
  def height
    if @age == 1
      h =  1
      puts "The tree is #{h} foot tall."
    elsif @age >= 2 && @age <= 12
      h = @age + 1
      puts "The tree is #{h} feet tall."
    else
      h = 13
      puts "The tree is #{h} feet tall."
    end
    h
  end

  def orangeCount
    if @age < 3
      @orangeCount = 0
    elsif @age >= 3 && @age <= 12
      @orangeCount = growth_formula
    elsif @age > 12 && @age <= 24
      @orangeCount = decay_formula
    else
    end
  end

  def growth_formula
    @orangeCount = (1..12)
    growth = @orangeCount.collect { |x| 6.25 * x }
    puts growth
  end

  def decay_formula
    initial_pop = @orangeCount
    k = -0.133026
    time = @age
    e = 2.71828
    puts '#{@orangeCount}'
    initial_pop*(e**(k*time))
  end

  def one_year_passes
    @age = @age + 1
    self.orangeCount
    @height = self.height
  end

  def life
    while age < 24
      self.one_year_passes
    end
  end

  def count_the_oranges
    puts "Your tree has #{@orangeCount} oranges."
  end

  def pick_an_orange
    @orangeCount = @orangeCount - 1
  end

  def death
    if @age == 24
      puts "The orange tree is dead."
    end
  end
end
