class Scrabble

  def initialize(word)
    @word = word
  end

  def score
    @word.length
  end

end
