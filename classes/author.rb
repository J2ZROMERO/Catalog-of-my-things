require './classes/item'

class Author
  attr_accessor :first_name, :last_name, :items

  def initialize(first_name, last_name, id: Random.rand(1..1000).to_i)
    @id = id
    @first_name = first_name
    @last_name = last_name
    @items = []
  end

  def add_item(item)
    @items.push(item) unless @items.include?(item)
    item.add_author(self)
  end

end
