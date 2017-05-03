class Santa

  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
#    puts "Initializing Santa instance ..."
  end

  def speak
    puts "#{@gender}: Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}!"
  end

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(reindeer_name)
    @reindeer_ranking.delete(reindeer_name)
    @reindeer_ranking << reindeer_name
  end

  def gender=(new_gender)
    @gender = new_gender
  end

  def age
    @age
  end

  def ethnicity
    @ethnicity
  end

end

santas = []

santa_genders = ["male", "trans", "bigender", "intersex"]
santa_ethnicities = ["white", "latino", "asian", "N/A"]

santa_genders.length.times do |i|
  santas << Santa.new(santa_genders[i], santa_ethnicities[i])
end

#santas[1].speak
#santas.each(&:speak)
puts Santa.new("male", "white").celebrate_birthday
puts Santa.new("female", "asian").get_mad_at('Dasher')
puts Santa.new("female", "white").gender = "trans"
puts Santa.new("male", "asian").age
puts Santa.new("female", "black").ethnicity


#Santa.new.speak
#Santa.new.eat_milk_and_cookies("oreo")
