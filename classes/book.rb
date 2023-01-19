require './classes/item'

class Book < Item
  attr_accessor :list_books, :cover_state
  def initialize(publisher, date, cover_state = '')
    @publisher = publisher
    @cover_state = cover_state
    super(date)
    @list_books = []
  end

  def can_be_archived?
    parent_boolean_value = super()
    return true if parent_boolean_value || @cover_state == 'bad'

    false
  end
end
