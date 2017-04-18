def hamster_data
  puts "What's the hamster's name?"
  hamster_name = gets.chomp
  puts "How loud is this hamster (level 1 - 10)?"
  volume = gets.chomp.to_f
  puts "What's its fur color?"
  fur_color = gets.chomp
  adoptable = ""
  loop do
    puts "Is it a good candidate for adoption (y/n)?"
    adoptable = gets.chomp
    if adoptable == "y"
      adoptable = true
      break
    elsif adoptable == "n"
      adoptable = false
      break
    end
  end
  puts "Estimated age?"
  estimated_age = gets.chomp.to_i
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