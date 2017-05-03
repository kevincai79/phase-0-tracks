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

puts "#{santas[2]} celebrate birthday of #{santas[2].celebrate_birthday}"
puts santas[0].get_mad_at("Vixen")
puts santas[1].age
puts santas[3].ethnicity

#Santa.new.speak
#Santa.new.eat_milk_and_cookies("oreo")
