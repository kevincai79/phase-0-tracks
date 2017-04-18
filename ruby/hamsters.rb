def hamster_data
  puts "What's the hamster's name?"
  hamster_name = gets.chomp
  puts "How loud is this hamster (level 1 - 10)?"
  volume = gets.chomp
  puts "What's its fur color?"
  fur_color = gets.chomp
  puts hamster_name, volume, fur_color
end

hamster_data