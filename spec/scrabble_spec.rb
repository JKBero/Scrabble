require 'scrabble'

describe Scrabble do

  describe 'score' do

    it 'returns 1 point when given a character worth 1 point' do
      scrabble = Scrabble.new('a')
      expect(scrabble.score).to eq 1
      scrabble = Scrabble.new('e')
      expect(scrabble.score).to eq 1
    end

    it 'returns 2 points when given a word with two 1 point characters' do
      scrabble = Scrabble.new('at')
      expect(scrabble.score).to eq 2
    end

  end

end
