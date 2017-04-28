# Challenge 5.3 Mandatory Pair
# Chris McMenomy
# Kevin Cai
# 4/25/17

#Release 0
#countup will count up from 0 to integer passed to it. It will finally run a code block stating the
#number counter to.

def countup(int)
  counter = 0
  while counter < int
    puts counter
    counter += 1
  end
  yield(int)
end

countup(10) { |int| puts "This concludes the countup method. We counted up to #{int-1}." }


zoo_animals = ["lion", "tiger", "snake", "monkey"]
visitor = {
  "name" => "John",
  "age" => 30,
  "fav_color" => "green"
}

#Release 1 array .each iteration
p zoo_animals
zoo_animals.each do |animal|
  puts "The zoo contains a #{animal}"
end
p zoo_animals

#Release 1 array .map iteration
p zoo_animals
zoo_animals.map! do |animal|
  animal = "bird"
  puts "The zoo contains a #{animal}"
  animal
end
p zoo_animals

#Release 1 hash .each iteration
visitor.each do |key, value|
  puts "#{key}: #{value}"
end

#Release 2

#Array
random_number = [ 1, 5, 55, -6, 222 ]

#1
puts random_number.delete_if { |x| x > 50 }
p random_number
#2
random_number = [ 1, 5, 55, -6, 222 ]
puts random_number.keep_if { |x| x > 200 }
p random_number
#3
random_number = [ 1, 5, 55, -6, 222 ]
puts random_number.select { |x| x.even? }
p random_number
#4
puts random_number.drop_while { |i| i < 2 }
p random_number


#Hash
student_data = {
  "a" => 8,
  "b" => 82,
  "c" => 91,
  "d" => 100
}

#1
puts student_data.delete_if { |key, value| key < "c" }
p student_data

student_data = {
  "a" => 8,
  "b" => 82,
  "c" => 91,
  "d" => 100
}

#2
puts student_data.keep_if { |key, value| value > 80 }
p student_data

student_data = {
  "a" => 8,
  "b" => 82,
  "c" => 91,
  "d" => 100
}

#3
puts student_data.select { |key, value| key == "b" || key == "c" }
p student_data

#4
student_data = {
  "a" => 8,
  "b" => 82,
  "c" => 91,
  "d" => 100
}