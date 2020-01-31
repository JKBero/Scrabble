class Scrabble

  def initialize(word)
    @word = word
  end

  def score
    @word.chars.reduce(0) do |score, char|
      if char == 'd' || char == 'g'
        score += 2
      else
        score += 1
      end
    end
  end

end
