require 'scrabble'

describe Scrabble do

  describe 'score' do

    it 'returns 1 point when given a character worth 1 point' do
      scrabble = Scrabble.new('a')
      expect(scrabble.score).to eq 1
    end

  end

end
