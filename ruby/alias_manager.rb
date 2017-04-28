# ALIAS PROGRAME FOR SECRECT AGENTS

# BUSINESS LOGIC

# Swap the first and last name.

# Split name to words

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
      if char == 'u'
        char = "a"
      else
        vowel[vowel.index(char) + 1]
      end
    elsif consonant.index(char) != nil
      if char == "z"
        char = "b"
      else
        consonant[consonant.index(char) + 1]
      end
    else
      puts "Please input valid name."
    end
end

def translate_word(word)

end

# USER INTERFACE
def translate_name
  puts "Please enter your full name:"
  full_name = gets.chomp

end

# STORE THE DATA