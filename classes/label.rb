#require './classes/item'
require 'securerandom'

class Label
  attr_accessor :title, :color, :list_labels
  #attr_accessor :list_labels

  def initialize(title, color)
    @id = SecureRandom.uuid
    @title = title
    @color = color
    @list_labels = []
  end

  def add_item(item)
    return if @list_labels.include?(item)

    @list_labels.push(item)
    item.add_label(self)
  end
end
