# Array Drills

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array,
# printing each item in the array separated by an asterisk

zombie_apocalypse_supplies.each do | supply |
  puts  supply
  puts "*"
end

# 2. In order to keep yourself organized, sort your zombie_apocalypse_supplies
# in alphabetical order. Do not use any special built-in methods.

def sort_list(array)
  loop do
    sorted = false
    i = 0
    while i < array.length - 1
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        sorted = true
      end
        i += 1
    end
    break if sorted == false
  end
  array
end

puts sort_list(zombie_apocalypse_supplies)

# 3. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies. Do not use any special built-in methods.
# For instance: are boots in your list of supplies?

def check_item(string)
  zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

  i = 0
  is_supply = false

  while i < zombie_apocalypse_supplies.length
    if zombie_apocalypse_supplies[i] == string
      is_supply = true
      i = zombie_apocalypse_supplies.length
    else
      i += 1
    end
  end

  puts "#{string} is in your list of supplies." if is_supply == true
  puts "#{string} is not in your list of supplies." if is_supply == false
end

check_item("compass")
check_item("boots")


# 4. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5. Do not use any special built-in methods.

def only_5_item(array)
  new_array = []
  i = 0
  while i < 5
    new_array << array[i]
    i += 1
  end
  return array = new_array
end

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]
puts only_5_item(zombie_apocalypse_supplies)

# We can also use below code to change the array if we do not use method

=begin

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars", "shotgun", "compass", "CB radio", "batteries"]

new_array = []
i = 0
while i < 5
  new_array << zombie_apocalypse_supplies[i]
  i += 1
end

zombie_apocalypse_supplies = new_array

puts zombie_apocalypse_supplies

=end

# 5. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]
other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
                            "solar battery", "flashlight"]
combined_list = zombie_apocalypse_supplies

other_survivor_supplies.keep_if do |supply|
  zombie_apocalypse_supplies.index(supply) == nil
end

i = 0
while i < other_survivor_supplies.length
combined_list << other_survivor_supplies[i]
i += 1
end

puts combined_list

# Hash Drills

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.

extinct_animals.each do | key, value |
  puts "Extinct Animals: #{key}-#{value}"
  puts "*"
end

# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000. Do not use any special built-in methods.

updated_extinct_animals = Hash.new

extinct_animals.each do | animal, year |
  if year < 2000
    updated_extinct_animals[animal] = year
  end
end

extinct_animals = updated_extinct_animals

puts extinct_animals

# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# so they accurately reflect what year the animal went extinct.
# Do not use any special built-in methods.

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

updated_extinct_animals = Hash.new
extinct_animals.each do | animal, year |
  updated_extinct_animals[animal] = year - 3
end

puts updated_extinct_animals

# 4. You've heard that the following animals might be extinct, but you're not sure.
# Check if they're included in extinct_animals, one by one:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Do not use any special built-in methods.

def is_extinct_animal(animal)
  extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
  }
  in_list = false
  extinct_animal_names = []

  extinct_animals.each do | extinct_animal, year |
    extinct_animal_names << extinct_animal
  end

  i = 0
  while i < extinct_animal_names.length
    if animal == extinct_animal_names[i]
      in_list = true
      i = extinct_animal_names.length
    else
      i += 1
    end
  end

  puts "#{animal} is included in the extinct_animals." if in_list == true
  puts "#{animal} is not included in the extinct_animals." if in_list == false
end

is_extinct_animal("Andean Cat")
is_extinct_animal("Dodo")
is_extinct_animal("Saiga Antelope")

# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find the built-in method that helps you accomplish this in the Ruby documentation
# for Hashes.

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

p extinct_animals.delete_if { |animal, year| animal == "Passenger Pigeon"}
p extinct_animals.to_a