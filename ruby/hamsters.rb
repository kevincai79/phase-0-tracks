def hamster_data
  puts "What's the hamster's name?"
  hamster_name = gets.chomp
  puts "How loud is this hamster (level 1 - 10)?"
  volume = gets.chomp
  puts "What's its fur color?"
  fur_color = gets.chomp
  puts "Is it a good candidate for adoption?"
  adoptable = gets.chomp
  puts "Estimated age?"
  estimated_age = gets.chomp
  if estimated_age == ""
    estimated_age = nil
  end
  puts "Hamster Name: #{hamster_name}"
  puts "Volume: #{volume}"
  puts "Fur Color: #{fur_color}"
  puts "Adoptable: #{adoptable}"
  puts "Estimated Age: #{estimated_age}"
end
hamster_data