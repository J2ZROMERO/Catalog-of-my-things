require './classes/item'
require 'securerandom'

class Label
  def initialize(title, color)
    @id = SecureRandom.uuid
    @title = title
    @color = color
    @items = []
  end

  def add_item(item)
    return if @items.include? item

    @items.push(item)
    item.add_label(self)
  end
end
