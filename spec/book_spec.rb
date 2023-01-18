require './classes/label'
require './classes/book'

describe Label do
  before(:all) do
    @book = Book.new('Jose', '2022-10-25', 'mexico')
    @label = Label.new('The little pigs', 'Blue')
    @date = @label.add_item(@book)
  end

  context 'When testing the book class' do
    it 'The method can_be_archived? from book  must return false' do
      expect(@date.items[0].move_to_archive).to be false
    end
  end
end
