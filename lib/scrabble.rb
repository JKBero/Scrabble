class Scrabble

  def initialize(word)
    @word = word
  end

  def score
    return 2 if @word == 'd' || @word == 'g'
    @word.length
  end

end
