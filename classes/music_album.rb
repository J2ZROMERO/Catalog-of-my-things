require './classes/item'

class MusicAlbum < Item
  attr_accessor :onspotify

  def initialize(publish_date, onspotify: true)
    super(publish_date)
    @onspotify = onspotify
  end

  private

  def can_be_archived?
    if super && @onspotify
      true
    else
      false
    end
  end
end
