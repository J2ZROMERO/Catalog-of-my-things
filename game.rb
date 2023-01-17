require './classes/team'
require 'date'

class Game < Team
  attr_accessor :multiplayer, :last_played_at

  def initialize(publish_date, last_played_at, multiplayer, id: Random.rand(1..1000), archieved: false)
    super(publish_date, id: id, archieved: archieved)
    @multiplayer = multiplayer
    @last_played_at = last_played_at
  end

  def can_be_archived?
    if (Date.today.year - Date.parse(@publish_date).year).to_i > 10 &&
       (Date.today.year - Date.parse(@last_played_at).year).to_i > 2
      return true
    end

    false
  end
end
