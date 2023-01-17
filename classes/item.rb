require 'securerandom'
require 'date'

class Item
 attr_accessor :publish_date
 attr_reader :genre, :author, :label, :source , :archived

def initialize(publish_date)
  @id = SecureRandom.uuid
  @publish_date = publish_date
  @archived = false
end

def add_genre(genre)
    @genre = genre
    genre.add_item(genre)
 end
    
 def add_source(source)
    @source = source
    source.add_item(source)
 end
 
 def add_genre(label)
    @label = label
    label.add_item(label)
 end

 def add_genre(author)
    @author = author
    author.add_item(author)
 end

 def move_to_archive()
    if can_be_archived? 
      @archived = true
    else
      @archived = false
    end
 end

 private
 def can_be_archived?
    if (Date.today.year - Date.parse(@publish_date).year).to_i > 10 
      return true
    else
      return false
    end
  end
end

item = Item.new("Jan 03 2020")
puts item.publish_date
puts item.move_to_archive
