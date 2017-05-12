# OUR ENCRYPT AND DECRYPT METHODS FOR SECRET AGENTS

# Input the text
# Split the text into single character,
# and replace it with a letter forward
# combine the new characters as a new string

def encrypt(text)
  i = 0
  new_text = ""   # Declare an empty string to take the replace character
  new_string = ""  # Declare an empty string we will add to
  while i < text.length        # Set loop times
    if text[i] == " " || text[i] == "z"
      if text[i] == " "    # Add conditional logic for " " case
        new_text = " "
      else
        new_text = "a"     # Add conditional logic for edge case
      end
    else
      new_text = text[i].next  # Replace the character with one letter forward
    end
    new_string += new_text  # Add up the characters to the new string
    i += 1
  end
  new_string  # To avoid debugging and return value of nil
end
puts encrypt("abc")      # Test method and print the result
puts encrypt("zed")

# Input the text
# Split the text into single character,
# and replace it with a letter backward
# combine the new characters as a new string
def is_letter_space(text)
  alphabet = "abcdefghijklmnopqrstuvwxyz "
  text_array = []
  text.chars.each do |char|
    if alphabet.index(char) == nil
      text_array << false
    else
      text_array << true
    end
  end

  if !text_array.include?(false)
    return true
  end
end

def decrypt(text)
  if is_letter_space(text)
    n = 0
    # Declare alphabet string to index letters
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    new_text = ""  # Declare an empty string to take the replace character
    new_string = ""   # Declare an empty string we will add to
    while n < text.length   # Set loop times
      if text[n] == " "     # Add conditional logic for " " case
          new_text = " "
      else
        # Use alphabet to replace current character with one letter backward
        new_text = alphabet[alphabet.index(text[n])-1]
      end
      new_string += new_text  # Add up the characters to the new string
      n += 1
    end
    new_string   # To avoid debugging and return value of nil
  else
    "Invalid input, letters and spaces only."
  end
end
puts decrypt("bcd")   # Test method and print the result
puts decrypt("afe")
puts decrypt("a*7e")

puts decrypt(encrypt("swordfish"))
=begin
Above code first calls the method encrypt("swordfish") and return encrypt value,
then the value as the parameter of the encrypt method and return the encrypt value.
=end

# Ask a secrect agent what he/she wants to do
puts "Would you like to decrypt or encrypt a password (decrypt/encrypt)?"

# Prompt for secrect agent's request
request = gets.chomp

# Ask a secrect agent's password
puts "Please enter your password (letters and space only):"

# Prompt for secrect agent's password
password = gets.chomp.downcase

# Conduct the requested operation and print the result
# to the screen
if request == "decrypt"
  puts "#{password} decrypt password is: #{decrypt(password)}"
else
  puts "#{password} encrypt password is: #{encrypt(password)}"
end

# Exit and say bye to the secrect agent
puts "Bye!"



