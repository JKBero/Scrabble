require 'scrabble'

describe Scrabble do

  describe 'score' do

    it 'returns 1 point when given a character worth 1 point' do
      scrabble = Scrabble.new('a')
      expect(scrabble.score).to eq 1
      scrabble = Scrabble.new('e')
      expect(scrabble.score).to eq 1
      scrabble = Scrabble.new('i')
      expect(scrabble.score).to eq 1
      scrabble = Scrabble.new('o')
      expect(scrabble.score).to eq 1
      scrabble = Scrabble.new('u')
      expect(scrabble.score).to eq 1
      scrabble = Scrabble.new('l')
      expect(scrabble.score).to eq 1
      scrabble = Scrabble.new('n')
      expect(scrabble.score).to eq 1
      scrabble = Scrabble.new('r')
      expect(scrabble.score).to eq 1
      scrabble = Scrabble.new('s')
      expect(scrabble.score).to eq 1
      scrabble = Scrabble.new('t')
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

    it 'returns the correct points when given a word with 1 and 2 point characters' do
      scrabble = Scrabble.new('god')
      expect(scrabble.score).to eq 5
      scrabble = Scrabble.new('rusting')
      expect(scrabble.score).to eq 8
    end

    it 'returns 3 when given a character worth 3 points' do
      scrabble = Scrabble.new('b')
      expect(scrabble.score).to eq 3
      scrabble = Scrabble.new('c')
      expect(scrabble.score).to eq 3
      scrabble = Scrabble.new('m')
      expect(scrabble.score).to eq 3
      scrabble = Scrabble.new('p')
      expect(scrabble.score).to eq 3
    end

    it 'returns the correct points when given a word with 1,2 and 3 point characters' do
      scrabble = Scrabble.new('stripe')
      expect(scrabble.score).to eq 8
      scrabble = Scrabble.new('dome')
      expect(scrabble.score).to eq 7
    end

    it 'returns 4 when given a character worth 4 points' do
      scrabble = Scrabble.new('f')
      expect(scrabble.score).to eq 4
      scrabble = Scrabble.new('h')
      expect(scrabble.score).to eq 4
      scrabble = Scrabble.new('v')
      expect(scrabble.score).to eq 4
      scrabble = Scrabble.new('w')
      expect(scrabble.score).to eq 4
      scrabble = Scrabble.new('y')
      expect(scrabble.score).to eq 4
    end

    it 'returns 5 when given a character worth 5 points' do
      scrabble = Scrabble.new('k')
      expect(scrabble.score).to eq 5
    end

    it 'returns 8 when given a character worth 8 points' do
      scrabble = Scrabble.new('j')
      expect(scrabble.score).to eq 8
      scrabble = Scrabble.new('x')
      expect(scrabble.score).to eq 8
    end

    it 'returns 10 when given a character worth 10 points' do
      scrabble = Scrabble.new('q')
      expect(scrabble.score).to eq 10
      scrabble = Scrabble.new('z')
      expect(scrabble.score).to eq 10
    end

    it 'returns the correct points when given a word' do
      scrabble = Scrabble.new('quirky')
      expect(scrabble.score).to eq 22
      scrabble = Scrabble.new('cabbage')
      expect(scrabble.score).to eq 14
    end

    it 'returns 0 if given an empty string' do
      scrabble = Scrabble.new('')
      expect(scrabble.score).to eq 0
    end

    it 'returns 0 if given invalid words' do
      scrabble = Scrabble.new(" \t\n")
      expect(scrabble.score).to eq 0
      scrabble = Scrabble.new("36")
      expect(scrabble.score).to eq 0
    end

    it 'returns 0 if given nil' do
      scrabble = Scrabble.new(nil)
      expect(scrabble.score).to eq 0
    end

  end

end
