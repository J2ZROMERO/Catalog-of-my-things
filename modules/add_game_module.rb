require './classes/game'
require './classes/label'
require './classes/author'
module GameModule
  def add_game
    print 'Game publish_date: '
    @publish_date = gets.chomp
    print 'Is it a multiplayer game? Enter 0 for yes and 1 for no: '
    multiplayer = gets.chomp
    @multiplayer = multiplayer.downcase == '1'
    print 'Last played date: '
    @last_played_at = gets.chomp
    print 'Enter label for this game:  '
    @title = gets.chomp
    @label = Label.new(@title)
    newgame = Game.new(@publish_date, @last_played_at, @multiplayer)
    @label.add_item(newgame)
    newgame.add_label(@label)
    @list_games.push({ 'game_label' => newgame.label.title, 'publish_date' => newgame.publish_date,
                       'multiplayer' => newgame.multiplayer, 'last_palyed_date' => newgame.last_played_at })
    puts 'Game added successfully!'
    @list_labels.push({ 'label_title' => @label.title })
  end
end
