require '../classes/game'
require '../app'

module GameModule
  def add_game
    puts 'Game publish_date'
    publish_date = gets.chomp
    puts 'Is it a multiplayer game? Enter 0 for yes and 1 for no'
    multiplayer = gets.chomp
    puts 'Last played date'
    last_played_date = gets.chomp

    game = Game.new(publish_date, last_played_date, multiplayer)

    @list_games.push(
      {
        "pub_date" => game.publish_date,
        "last-played_date" => game.last_played_at
        "multiplayer" => game.multiplayer
      }
    )

    puts 'Game added successfully!'

    puts 'Would you like to add a label for this game? (0) yes (1) no'
    ans = gets.chomp

    unless ans == 1
      label = create_label
      game.add_label(label)
    end

    puts 'Label added to this game successfully!'

    puts 'Would you like to add an author for this game? (0) yes (1) no'
    ans = gets.chomp

    unless ans == 1
      author = create_author
      game.add_label(author)
    end

    puts 'Author added to this game successfully!'

  end
end
