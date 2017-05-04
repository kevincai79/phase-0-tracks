# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # [fill in any steps here]
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]

  def create_list(items_string, quantity = 1)
    list = {}
    items = items_string.split(" ")
    items.each do |item|
      list[item] = quantity
    end
    list
  end
# output: [what data type goes here, array or hash?]
p create_list("monkey snake cat dog")
p create_list("flower tree grass", 3)

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
  # If the item_name is not the list
  # add item name and quantity as key-value pair to the list
  # If the item name is exist, plus value one to the quantity

# output: print list

def add_item(list, item_name, quantity = 1)
  if list.include?(item_name)
    list[item_name] += 1
  else
    list[item_name] = quantity
  end
  list
end

vegetables = create_list("tomato onion pepper")
p add_item(vegetables, "tomato")

p add_item(vegetables, "potato", 2)

# Method to remove an item from the list
# input: list, item name, and optional quantity
# steps:
  # If the item_name is not the list or if the quantity is 0
    # return 'No item to remove.'
  # If the item name does exist, substract 1 to the quantity
# output: print list

def remove_item(list, item_name, quantity)
  if !list.include?(item_name) || list[item_name] == 0
    puts "No item to remove."
  else
    if list[item_name] < quantity
      puts "You only have #{list[item_name]} #{item_name}."

    else
    list[item_name] -= quantity
    end
    list
  end
end

p remove_item(vegetables, "onion", 2)
p remove_item(vegetables, "apple", 1)
p remove_item(vegetables, "potato", 2)
p remove_item(vegetables, "potato", 1)

# Method to update the quantity of an item
# input: list, item and quantity
# steps:
  # Set the quantity to the item
# output: print list
def update_item(list, item_name, quantity)
  list[item_name] = quantity
  list
end

p update_item(vegetables, "potato", 100)
puts update_item(vegetables, "eggplan", 5)

# Method to print a list and make it look pretty
# input: Hash list.
# steps:
  # Loop through each key-value pair and print out. each key-value pair on each line.
# output: Each key-value pair on a line.
def print(list)
  list.each do |item, number|
    puts "#{item}: #{number}"
  end
end

print(vegetables)


