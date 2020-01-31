require 'scrabble'

describe Scrabble do

  describe 'score' do

    it 'returns 1 point when given a character worth 1 point' do
      scrabble = Scrabble.new('a')
      expect(scrabble.score).to eq 1
      scrabble = Scrabble.new('e')
      expect(scrabble.score).to eq 1
    end

    it 'returns the correct points when given a word with only 1 point characters' do
      scrabble = Scrabble.new('at')
      expect(scrabble.score).to eq 2
      scrabble = Scrabble.new('street')
      expect(scrabble.score).to eq 6
    end

    it 'returns 2 when given a character worth 2 points' do
      scrabble = Scrabble.new('d')
      expect(scrabble.score).to eq 2
      scrabble = Scrabble.new('g')
      expect(scrabble.score).to eq 2
    end

    it 'returns the correct points when give a word with 1 and 2 point characters' do
      scrabble = Scrabble.new('god')
      expect(scrabble.score).to eq 5
      scrabble = Scrabble.new('rusting')
      expect(scrabble.score).to eq 8
    end

  end

end
