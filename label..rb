require './item'
require 'securerandom'

class Label
    attr_accessor :tile , :color
    def initialize()
    @id = SecureRandom.uuid
    @title = ''
    @color = ''
    @items = []
    end

    def add_item(item)
    @items.push(item)
    item.add_label(self)
    end

end
