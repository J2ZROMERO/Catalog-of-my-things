require './classes/author'
require './classes/game'

describe Game do
  context 'When testing the Game class' do
    it 'The method can_be_archived? should return true as its publish_date and last_played_at is older' do
      game1 = Game.new('2008-02-19', '2019-01-18', 'no')
      expect(game1.can_be_archived?).to be true
    end

    it 'The method can_be_archived? from Game class  should return false as its last_played date is recent' do
      game2 = Game.new('2018-02-19', '2023-01-10', 'no')
      expect(game2.can_be_archived?).to be false
    end

    it 'The method can_be_archived? from Game class  should return false as its publish-date is recent ' do
      game3 = Game.new('2021-02-19', '2017-01-10', 'no')
      expect(game3.can_be_archived?).to be false
    end
  end
end

describe Author do
  context 'When testing the Author class' do
    it 'Checking if the the constructor of Author class works' do
      author1 = Author.new('Amare', 'Kassa')
      item1 = Item.new('2016-08-01')
      author1.add_item(item1)
      puts "Author inside unit testing = #{author1.first_name}"
      expect(author1.first_name).to eq 'Amare'
    end

    it 'The method add_item from Author class should increment the number of elements in the items array of author' do
      author = Author.new('Mengistu', 'Mesfin')
      item = Item.new('2012-05-23')
      author.add_item(item)
      expect(author.items.length).to eq(1)
    end

    it 'The method add_item from Author class should not add the same item in the items array of author object' do
      author = Author.new('Mengistu', 'Mesfin')
      item = Item.new('2012-05-23')
      author.add_item(item)
      expect(author.items.length).to eq(1)
    end
  end
end
