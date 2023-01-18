require './classes/author'
require './classes/game'

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
