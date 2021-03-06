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
  split_names = full_name.downcase.split (" ")
  split_names[0], split_names[-1] = split_names[-1], split_names[0]
  split_names.each do |name|
    new_full_name << translate_name(name.split ("")).capitalize + " "
  end
new_full_name.chop
end

# USER INTERFACE

agent_name = Hash.new

loop do

  puts "Please enter your full name, letters and space only, type   'quit' to quit."
  full_name = gets.chomp

  characters = full_name.downcase.split ("")
  x = "abcdefghijklmnopqrstuvwxyz "
  letter_and_space = []
  characters.each do |char|
    if x.index(char) != nil
      letter_and_space << true
    else
      letter_and_space << false
    end
    letter_and_space
  end

  if full_name.downcase != "quit" && !full_name.empty? && !letter_and_space.include?(false)
    translate_full_name(full_name)
    agent_name[full_name.to_sym] = translate_full_name(full_name)
  end

  break if full_name.downcase == "quit"

end

agent_name.each do |real_name, fake_name|
puts "#{real_name.to_s} is also known as #{fake_name}."
end

p agent_name