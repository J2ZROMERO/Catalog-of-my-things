require 'securerandom'
require 'date'

class Item
  attr_accessor :publish_date
  attr_reader :genre, :author, :label, :source, :id

  def initialize(publish_date)
    @id = SecureRandom.uuid
    @publish_date = publish_date
    @archived = false
  end

  def add_genre(genre)
    @genre = genre
  end

  def add_source(source)
    @source = source
  end

  def add_label(label)
    @label = label
  end

  def add_author(author)
    @author = author
  end

  def move_to_archive()
    @archived = can_be_archived?
  end

  private

  def can_be_archived?
    return true if (Date.today.year - Date.parse(@publish_date).year).to_i > 10

    false
  end
end
