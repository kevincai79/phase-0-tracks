puts "How many employees will be processed?"
employee_number = gets.chomp
n = employee_number.to_i
n.times do
  puts "What's your name?"
  employee_name = gets.chomp
  puts "How old are you? What year were you born? (right/ wrong)"
  age = gets.chomp
  puts "Our company cafeteria serves garlic bread. Should we worder some for you (y/n)?"
  garlic_bread = gets.chomp
  puts "Would you like to enroll in the company's health insurance (y/n)?"
  insurance = gets.chomp

  if employee_name == "Drake Cula" || employee_name == "Tu Fang"
    result = "Definitely a vampire."

    elsif age == "right" && (garlic_bread == "y" || insurance == "y")
      result = "Probably not a vampire."

    elsif age == "wrong" && (garlic_bread == "n" && insurance ==  "n")
      result = "Almost certainly a vampire."

    elsif age == "wrong" && (garlic_bread == "n" || insurance   == "n")
      result = "Probably a vampire."

    else
      result = "Results inconclusive."
  end
  puts result
end

print "Name your allergies, once at a time and type done when finished: "
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
      print "Name your allergy or type 'done' to finish: "
  end
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."