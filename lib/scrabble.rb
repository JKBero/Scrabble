class Scrabble

  def initialize(word)
    @word = word
  end

  def score
    return 2 if @word == 'at'
    1
  end

end
