# ALIAS PROGRAME FOR SECRECT AGENTS

# BUSINESS LOGIC

# Split the full name to names

# Swap the first and last name.

# Split name to array with character

=begin
Translate each character in each word with below rules:
  - if character is vowel(a,e,i,o, or u) then change it to next vowel with order (aeiou).
    - if the character is u, translate it to a.
  - if character is consonant, translate it to next consonant in the alphabet order.
    - if the character is z, translate it to b.
=end

def translate_char(char)
  vowel = "aeiou"
  consonant = "bcdfghjklmnpqrstvwxyz"
    if vowel.index(char) != nil
      if char == "u"
        char = "a"
      else
        vowel[vowel.index(char) + 1]
      end
    else
      if char == "z"
        char = "b"
      else
        consonant[consonant.index(char) + 1]
      end
    end
end

def translate_name(name)
  new_name = ""
  name.each do |char|
    new_name += translate_char(char)
  end
  new_name
end

def translate_full_name(full_name)
  new_full_name = ""
  split_names = full_name.split (" ")
  transfer = split_names[0]
  split_names[0] = split_names[-1]
  split_names[-1] = transfer
  split_names.each do |name|
    new_full_name << translate_name(name.split ("")).capitalize + " "
  end
new_full_name.chop
end

# USER INTERFACE

loop do
puts "Please enter your full name, letters and space only, type 'quit' to quit."
full_name = gets.chomp.downcase
if full_name != "quit" && !full_name.empty?
  puts translate_full_name(full_name)
end
break if full_name == "quit"
end

# STORE THE DATA