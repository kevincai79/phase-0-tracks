# OUR VAMPIRE CHECK METHOD

puts "How many employees will be processed?"
employee_number = gets.chomp.to_i

employee_number.times do

  puts "What's your name?"
  employee_name = gets.chomp

  puts "How old are you?"
  age = gets.chomp.to_i

  puts "What year were you born?"
  born_year = gets.chomp.to_i

  puts "Our company cafeteria serves garlic bread. Should we worder some for you (y/n)?"
  garlic_bread = gets.chomp

  puts "Would you like to enroll in the company's health insurance (y/n)?"
  insurance = gets.chomp

  correct_age = 2017 - born_year == age
  like_garlic_bread = garlic_bread == "y"
  take_insurance = insurance == "y"
  result = ""

  result = "Probably not a vampire." if age == "right" && (garlic_bread == "y" || insurance == "y")

  result = "Probably a vampire."  if age == "wrong" && (garlic_bread == "n" || insurance == "n")

  result = "Almost certainly a vampire." if age == "wrong" && (garlic_bread == "n" && insurance ==  "n")

  result = "Definitely a vampire." if employee_name == "Drake Cula" || employee_name == "Tu Fang"

  result = "Results inconclusive." if result == ""

  puts result

end

puts "Name your allergies, once at a time and type done when finished: "
  employee_input = ""
until employee_input == "done"
      employee_input = gets.chomp
  if employee_input == "sunshine"
      puts "Probably a vampire."
      employee_input = "done"
   elsif employee_input == "done"
      puts "Thank you for the survey."
    else
      puts "Allergy: #{employee_input}"
      puts "Name your allergy or type 'done' to finish: "
  end
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."