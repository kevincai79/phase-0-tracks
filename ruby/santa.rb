class Santa
  attr_reader :age, :ethnicity
  attr_accessor :gender

  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = rand(141)
    puts "Initializing Santa instance ..."
  end

  def speak
    puts "#{@ethnicity} #{@gender} Santa: Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "#{@ethnicity} #{@gender} Santa: That was a good #{cookie_type}!"
  end

  def celebrate_birthday
    @age += 1
    puts "#{@ethnicity} #{@gender} Santa celebrates #{@age} years old birthday."
  end

  def get_mad_at(reindeer_name)
    @reindeer_ranking.delete(reindeer_name)
    @reindeer_ranking << reindeer_name
    puts "#{@ethnicity} #{@gender} Santa is mad at the reindeer #{reindeer_name}, it has been moved to the last place in the ranking."
    puts "updated reindeer ranking:"
    puts "#{@reindeer_ranking}"
  end
end

santas = []
santa_genders = ["male", "trans", "bigender", "intersex", "female"]
santa_ethnicities = ["white", "latino", "black","asian", "N/A"]
reindeer_names = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
cookies = ["Dark Chocolate Cookie", "Peanut Butter Cookie", "Oatmeal Cranberry Cookie", "Walnut Chip Cookie"]

# Below test code for release 0 to release 3:

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

# Release 4
# Below we can print out as many Santas as we want
50.times do
  puts "-------------------------------------------------"
  Santa.new(santa_genders.sample, santa_ethnicities.sample).speak
  Santa.new(santa_genders.sample, santa_ethnicities.sample).eat_milk_and_cookies(cookies.sample)
  Santa.new(santa_genders.sample, santa_ethnicities.sample).celebrate_birthday
  Santa.new(santa_genders.sample, santa_ethnicities.sample).get_mad_at(reindeer_names.sample)
  puts"-------------------------------------------------"
end