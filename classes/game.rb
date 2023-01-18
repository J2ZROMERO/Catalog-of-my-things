require './classes/item'
require 'date'

class Game < Item
  attr_accessor :multiplayer, :last_played_at

  def initialize(publish_date, last_played_at, multiplayer)
    super(publish_date)
    @id = Random.rand(1..1000)
    @archived = false
    @multiplayer = multiplayer
    @last_played_at = last_played_at
    @game_list = []
  end

  private

  def can_be_archived?
    if (Date.today.year - Date.parse(@publish_date).year).to_i > 10 &&
       (Date.today.year - Date.parse(@last_played_at).year).to_i > 2
      return true
    end

    false
  end
end
