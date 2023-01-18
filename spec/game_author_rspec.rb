require './classes/author'
require './classes/game'

describe Game do


  context 'When testing the Game class' do
    it 'The method can_be_archived? from Game class  should return false' do
      @game = Game.new('2008-02-19', '2019-01-18', 'no')
      expect(@game.can_be_archived?).to be true
    end
  end
end
