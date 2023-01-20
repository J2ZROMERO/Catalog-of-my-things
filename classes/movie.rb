require './classes/item'

class Movie < Item
  attr_accessor :silent

  def initialize(publish_date, silent: true)
    super(publish_date)
    @silent = silent
  end

  private

  def can_be_archived?
    puts super
    if super || @silent
      true
    else
      false
    end
  end
end
