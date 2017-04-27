# CLINET DATA FOR INTERIOR DESIGN

# Set up an empty hash

# Prompt the designer/user to input the data

# Prompt the designer/user anything to update

# -- If designer/user type in 'none', skip it

# -- Otherwise prompt the designer/user to input item for update

# Print the latest version of hash

client_data = Hash.new

puts "What is the client's name?"
client_data[:name] = gets.chomp

puts "How old is the client?"
client_data[:age] = gets.chomp.to_i

puts "How many kids does the client have?"
client_data[:children_num] = gets.chomp.to_i

puts "What is the decor theme client wants?"
client_data[:deco_theme] = gets.chomp

puts "Does the client have cats (y/n)?"
client_data[:have_cat] = gets.chomp.downcase
if client_data[:have_cat] == "y"
  client_data[:have_cat] = true
else
  client_data[:have_cat] = false
end

puts "Is there anything you want to update?"
update_item = gets.chomp

if update_item != "none"
  puts "Please enter the new info for the update: #{update_item}?"
  client_data[update_item.to_sym] = gets.chomp
end

if update_item == "have_cat"
  if client_data[update_item.to_sym] == "y"
    client_data[update_item.to_sym] = true
  else
  client_data[update_item.to_sym] = false
 end
end

puts client_data