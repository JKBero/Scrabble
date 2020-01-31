class Scrabble

  def initialize(word)
    @word = word
    @points = {
      'a' => 1,
      'e' => 1,
      'i' => 1,
      'o' => 1,
      'u' => 1,
      'l' => 1,
      'n' => 1,
      'r' => 1,
      's' => 1,
      't' => 1,
      'd' => 2,
      'g' => 2,
      'b' => 3,
      'c' => 3,
      'm' => 3,
      'p' => 3
    }
  end

  def score
    @word.chars.reduce(0) do |score, char|
        score += @points[char]
    end
  end

end
