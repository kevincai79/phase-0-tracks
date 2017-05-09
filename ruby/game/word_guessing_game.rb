# class
class WordGuessingGame

  def initialize(phrase)
    @phrase = phrase
  end

  def count
    count = 0
    @phrase.split(" ").each do |word|
      count += word.length
    end
    count
  end

  def original_state
    state = ""
    @phrase.each_char do |char|
      if char != " "
        char = "- "
        state << char
      else
        state << "  "
      end
    end
    state
  end

  def char_index(character)
    index = []
    @phrase.length.times do |i|
      if @phrase[i] == character
        index << i
      end
    end
    index
  end

  def complete_state
    complete_phrase = ""
    @phrase.each_char do |character|
      complete_phrase << character + " "
    end
    complete_phrase
  end
end

# USER INTERFACE

puts "Please inter a word/phrase"
phrase = gets.chomp.downcase
game = WordGuessingGame.new(phrase)

puts "Guess what characters are in below '_' spaces, you have maximum #{game.count} times to guess."
puts game.original_state

update_state = game.original_state
guess_characters = []
index = []
i = 0

while i < game.count

  puts "Enter what you guess, each time with one character"
  guess_character = gets.chomp.downcase
  if !guess_characters.include?(guess_character)
    guess_characters << guess_character
    index = game.char_index(guess_character)
    if !index.empty?
      index.each do |i|
        update_state[ i * 2 ] = guess_character
      end
      puts update_state
        if update_state == game.complete_state
          i = game.count
          update_state
        else
          i += 1
          update_state
        end
    else
      i += 1
      puts update_state
      update_state
    end
  else
    puts update_state
  end
end

if update_state == game.complete_state
  puts "Congratulations! You guessed it right!"
else
  puts "Too bad you could not guess it :("
end
