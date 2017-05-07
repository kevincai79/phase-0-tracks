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
    expect(WordGuessingGame.new("hello world").count).to eq 10
  end

  it "display state" do
    expect(WordGuessingGame.new("sea world").original_state).to eq "- - -   - - - - - "
  end

  it "check guessing character matching index from original phrase" do
    expect(WordGuessingGame.new("hello world").char_index("o")).to eq [4, 7]
  end

  it "complete state" do
    expect(WordGuessingGame.new("hello world").complete_state).to eq "h e l l o   w o r l d "
  end

end