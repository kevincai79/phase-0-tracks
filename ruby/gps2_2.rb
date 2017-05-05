# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # Define a creat_list method and take two parameters -  string & quantity, set default quantity as 0.
  # print the list to the console [can you use one of your other methods here?]

def create_list(items_string, quantity = 0)
  list = {}
  items = items_string.split(" ")
  items.each do |item|
    list[item] = quantity
  end
  list
end

# output: return a list with hash data structure

puts create_list("flower tree grass", 3)

# Method to add an item to a list
# input: list, item, and optional quantity
# steps:
  # IF iteam does exist, set item name equal optional quantity, if optional quantity is not input, default is 1.
  # IF the item name does exist, plus optional quantity to item, if optional quantity is not input, default is 1.

def add_item(list, item_name, quantity = 1)
  if list.include?(item_name)
    list[item_name] += quantity
  else
    list[item_name] = quantity
  end
  list
end

# output: return a list with hash data structure

grocery_list = create_list("Lemonade Tomatoes Onions Ice_Cream")
add_item(grocery_list, "Lemonade", 2)
add_item(grocery_list, "Tomatoes", 3)
add_item(grocery_list, "Onions", 1)
add_item(grocery_list, "Ice_Cream", 4)

puts grocery_list

# Method to remove an item from the list
# input: list and the item want to be removed
# steps:
  # IF there is a item in the list which is the same from the remove_item, delete it.
  # Otherwise tells the user there is not such an item to remove

def remove_item(list, remove_item)
  if list.include?(remove_item)
      list.delete_if { |item| item == remove_item }
      list
    else
      puts "There is not #{remove_item} in the list"
    end
end

# output: return a list with hash data structure

puts remove_item(grocery_list, "Lemonade")

=begin
# Method to remove quantity of the items
# input: list, item name, and optional quantity
# steps:
  # IF the item_name is not the list or if the quantity is 0
    # return 'No item to remove.'
  # IF the item name does exist, substract 1 to the quantity
# output: print list

def remove_item_2(list, item_name, quantity)
  IF !list.include?(item_name) || list[item_name] == 0
    "No item to remove."
  else
    IF list[item_name] < quantity
      "You only have #{list[item_name]} #{item_name}."
    else
      list[item_name] -= quantity
      list
    end
  end
end

puts remove_item_2(vegetables, "onion", 2)
puts remove_item_2(vegetables, "apple", 1)
puts remove_item_2(vegetables, "potato", 1)
=end

# Method to update the quantity of an item
# input: list, item and quantity
# steps:
  # Set the item equal the input quantity to update it

def update_item(list, item_name, quantity)
  list[item_name] = quantity
  list
end

# output: return a list with hash data structure

puts update_item(grocery_list, "Ice_Cream", 1)

# Method to print a list and make it look pretty
# input: Hash list.
# steps:
  # Loop through each key-value pair and print out each key-value pair on each line.
def print(list)
  list.each do |item, number|
    puts "Need to purchase: #{item} -- #{number}"
  end
end

# output: Each key-value pair on a line.

print(grocery_list)

# Test for printing the result of method creat_list

print(create_list("flower tree grass", 3))

=begin

Release 4: Reflect

On your own, add a commented reflection section to your gps2_2.rb file. Answer the following questions in your reflection:

What did you learn about pseudocode from working on this challenge?
I learned a bit from doing pseudocode by following the pseudocode to kind of translate it to code. Although I am still not familiar with write pseudocode, hope I can improve in the future.

What are the tradeoffs of using arrays and hashes for this challenge?
We decided to use hash as the list we wanted to use is more like key-value pair than ordered items.

What does a method return?
A method return the last expression it evaluates.

What kind of things can you pass into methods as arguments?
Basically all kinds of variable: string, integer, hash etc.

How can you pass information between methods?
By setting variables and parameters.

What concepts were solidified in this challenge, and what concepts are still confusing?
Solidified:
  The ways to seperate functions with different methods;
  Manipulate the hash with data.
Still confusing:
  Not sure how to refactor the code with best result.
  Still don't know many build-in methods in doc.

end