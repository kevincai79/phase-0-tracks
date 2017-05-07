# WORD GUESSING GAME
# Prompt user1 for input a word/phrase.
# Prompt users to guess the word/phrase.
# Each time guess a character, guess maximum times is the number of the characters of the word/phrase.
# Users will start seeing something like ‘_____’.
  # If the user2 guesses the correct character, the character will show up on its position(s) in the word/phrase.
  # Otherwise the result shows the same last state of the word.
# User2 gets a congratulatory message if they win
# Otherwise they get a taunting message.

require_relative "word_guessing_game"

describe WordGuessingGame do

  it "show maximum guess times" do
    expect(WordGuessingGame.new("Hello World").count).to eq 10
  end

  it "display state" do
    expect(WordGuessingGame.new("Sea World").original_state).to eq "_ _ _     _ _ _ _ _ "
  end

  it "check guessing character" do
    expect(WordGuessingGame.new("Hello World").check_char("o")).to eq [4, 7]
  end

end