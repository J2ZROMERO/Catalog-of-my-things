require './classes/item'
require 'securerandom'
require './classes/game'

class Label
  attr_reader :items, :title, :color

  def initialize(title, color = '')
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
