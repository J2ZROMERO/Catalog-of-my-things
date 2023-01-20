require './classes/author'
require './classes/game'

describe Game do
  context 'When testing the Game class' do
    it 'The method can_be_archived? should return true as its publish_date and last_played_at is older' do
      game1 = Game.new('2008-02-19', '2019-01-18', 'no')

      expect(game1.move_to_archive).to be true
    end

    it 'The method can_be_archived? from Game class  should return false as its last_played date is recent' do
      game2 = Game.new('2018-02-19', '2023-01-10', 'no')
      expect(game2.move_to_archive).to be false
    end

    it 'The method can_be_archived? from Game class  should return false as its publish-date is recent ' do
      game3 = Game.new('2021-02-19', '2017-01-10', 'no')
      expect(game3.move_to_archive).to be false
    end
  end
end
