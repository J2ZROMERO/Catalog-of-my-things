require 'securerandom'

class Source
  def initialize(name)
    @id = SecureRandom.uuid
    @name = name
    @items = []
  end

  def add_item(item)
    return if @items.include? item

    @items.push(item)
    item.add_source(self)
  end
end
