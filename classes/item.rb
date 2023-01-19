require 'securerandom'
require 'date'
require './classes/label'

class Item

  def initialize(publish_date)
    @id = SecureRandom.uuid
    @publish_date = publish_date
    @archived = false
    @author = nil
    @label = nil
    @genre = nil
    @source = nil
  end

  attr_reader :publish_date
  attr_accessor :label, :genre, :author, :source

  def add_genre(genre)
    @genre = genre
  end

  def add_source(source)
    @source = source
  end

  def add_label(label)
    @label = label
    return if label.nil?
    print "label.list_labels inside add-label---item= #{label.list_labels}"
    label.list_labels.push(self) unless label.list_labels.include?(self)
  end

  def add_author(author)
    @author = author
    # author.add_item(author)
    return if author.nil?

    author.items.push(self) unless author.items.include?(self)
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
