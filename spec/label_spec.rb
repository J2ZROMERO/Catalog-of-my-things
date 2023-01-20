require './classes/label'
require './classes/book'

describe Label do
  before(:all) do
    @book = Book.new('Jose', '2022-10-25', 'mexico')
    @label = Label.new('The little pigs', 'Blue')
    @date = @label.add_item(@book)
  end

  context 'When testing the label class' do
    it 'The method add_item from label must add 1 book to the items' do
      expect(@date.items.length).to be 1
    end
  end
end
