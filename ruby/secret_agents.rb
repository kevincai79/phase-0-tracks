# Input the text
# Split the text into single character,
# and replace it with a letter forward
# combine the new characters as a new string

def encrypt(text)
  i = 0
  new_text =""
  new_string =""
  while i < text.length        # Set loop times
    if text[i] == " " || text[i] == "z"
      if text[i] == " "    # Add conditional logic for " " case
        new_text = " "
      else
        new_text = "a"     # Add conditional logic for edge case
      end
    else
      new_text = text[i].next
    end
    new_string += new_text
    i += 1
  end
  puts new_string
  new_string
end
encrypt("abc")
encrypt("zed")

# Input the text
# Split the text into single character,
# and replace it with a letter backward
# combine the new characters as a new string

def decrypt(text)
  n = 0
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  new_text =""
  new_string =""
  while n < text.length   # Set loop times
    if text[n] == " "     # Add conditional logic for " " case
        new_text = " "
    else
      # Use alphabet to replace current character with one letter backward
      new_text = alphabet[alphabet.index(text[n])-1]
    end
    new_string += new_text
    n += 1
  end
  puts new_string
  new_string
end
decrypt("bcd")
decrypt("afe")

decrypt(encrypt("swordfish"))
=begin
Above code first calls the method encrypt("swordfish") and print out the value,
then the value as the parameter of the encrypt method and print out the encrypt value.
=end



