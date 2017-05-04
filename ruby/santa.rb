class Santa
  attr_reader :age, :ethnicity
  attr_accessor :gender

  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
    puts "Initializing Santa instance ..."
  end

  def speak
    puts "#{@gender}: Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "#{@ethnicity}: That was a good #{cookie_type}!"
  end

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(reindeer_name)
    @reindeer_ranking.delete(reindeer_name)
    @reindeer_ranking << reindeer_name
  end
end

santas = []
santa_genders = ["male", "trans", "bigender", "intersex"]
santa_ethnicities = ["white", "latino", "asian", "N/A"]

santa_genders.length.times do |i|
  santas << Santa.new(santa_genders[i], santa_ethnicities[i])
end

santas.each(&:speak)
santas[0].eat_milk_and_cookies("Oreo")

new_santa = Santa.new("female", "black")
puts "New Stanta is #{new_santa.ethnicity} #{new_santa.gender}."
puts new_santa.celebrate_birthday
puts new_santa.get_mad_at("Comet")
new_santa.gender = "male"
puts "#{new_santa.ethnicity} #{new_santa.gender} Santa is #{new_santa.age} year old."
