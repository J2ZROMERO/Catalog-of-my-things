require './classes/item'
require 'securerandom'
require './classes/book'

class Label
  attr_reader :items
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


      
      
      
      
     