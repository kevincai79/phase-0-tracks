# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # [fill in any steps here]
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]

  def create_list(items_string, quantity = 1)
    item_and_num = {}
    items = items_string.split(" ")
    items.each do |item|
      item_and_num[item] = quantity
    end
    item_and_num
  end
# output: [what data type goes here, array or hash?]
p create_list("monkey snake cat dog")
p create_list("flower tree grass", 3)
# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
# output:

# Method to remove an item from the list
# input:
# steps:
# output:

# Method to update the quantity of an item
# input:
# steps:
# output:

# Method to print a list and make it look pretty
# input:
# steps:
# output: