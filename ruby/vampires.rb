# OUR VAMPIRE CHECK METHOD

puts "How many employees will be processed?"
employee_number = gets.chomp.to_i

employee_number.times do

  puts "What's your name?"
  employee_name = gets.chomp

  puts "How old are you?"
  age = gets.chomp.to_i

  puts "When were you born?"
  born_year = gets.chomp.to_i

  puts "Our company cafeteria serves garlic bread. Should we order some for you (y/n)?"
  garlic_bread = gets.chomp

  puts "Would you like to enroll in the company's health insurance (y/n)?"
  insurance = gets.chomp

  correct_age = 2017 - born_year == age
  like_garlic_bread = garlic_bread == "y"
  take_insurance = insurance == "y"
  result = ""

  result = "Probably not a vampire." if correct_age && ( like_garlic_bread || take_insurance )

  result = "Probably a vampire."  if !correct_age && ( like_garlic_bread || take_insurance )

  result = "Almost certainly a vampire." if !correct_age && ( !like_garlic_bread && !take_insurance )

  result = "Definitely a vampire." if employee_name == "Drake Cula" || employee_name == "Tu Fang"

  result = "Results inconclusive." if result == ""

  puts "Name your allergies, once at a time and type 'done' when finished:"
    employee_allergy_input = ""
  until employee_allergy_input == "done"
        employee_allergy_input = gets.chomp
    if employee_allergy_input == "sunshine"
      if result == "Definitely a vampire."
        result
        employee_allergy_input = "done"
      elsif result == "Almost certainly a vampire."
        result
        employee_allergy_input = "done"
      else
        result = "Probably a vampire."
        employee_allergy_input = "done"
      end
    elsif employee_allergy_input == "done"
      puts "Thank you for the survey."
    else
      puts "Allergy: #{employee_allergy_input}"
      puts "Name your allergy or type 'done' to finish:"
    end
  end
  puts result
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."