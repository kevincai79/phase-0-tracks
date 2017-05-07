class WordGuessingGame
  attr_reader :is_over

  def initialize(phrase)
    @phrase = phrase
    @valid_input = false
    @is_over = false
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