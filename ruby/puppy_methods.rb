class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(int)
    int.times { puts 'Woof!'}
  end

  def roll_over
    puts '*rolls over*'
  end

  def dog_years(int)
    p int * 7
  end

  def jump(int)
    puts "The dog just jumped #{int} times!"
  end

  def initialize
    puts "Initializing new puppy instance ..."
  end

end

puppy = Puppy.new
puppy.fetch('ball')
puppy.speak(5)
puppy.roll_over
puppy.dog_years(5)
puppy.jump(100)

class Zoo

  def initialize(animal, age)
    @animal = animal
    @age = age
  end

  def swim(int)
    puts "#{@animal} can swim #{int} feets."
  end

  def eat(int)
    puts "#{@animal} eats #{int} times a day."
  end
end

zoo_animal = []

50.times do
  zoo_animal << Zoo.new("monkey", 2)
end

i = 1
zoo_animal.each do |animal|
  puts "Loop time #{i}:"
  animal.swim(100)
  animal.eat(3)
  i += 1
end


