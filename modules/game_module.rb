require '../classes/game'
require '../app'
require '../classes/label'
require '../classes/author'

module GameModule
  def add_game
    puts 'Game publish_date'
    publish_date = gets.chomp
    puts 'Is it a multiplayer game? Enter 0 for yes and 1 for no'
    multiplayer = gets.chomp
    multiplayer = multiplayer.downcase == '1'
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

  def create_label
    puts 'Lable title'
    title = gets.chomp
    puts 'Label color'
    color = gets.chomp
    newlabel = Label.new(title, color)
    @label_list.push(
      {
        "title_label" =>newlabel.title,
        "color_label" => newlabel.color_label
      }
    )

    puts 'label created successfully!'
  end

  def create_author
    puts 'Author first name'
    first = gets.chomp
    puts 'Author last name'
    last = gets.chomp

    newauthor = Author.new(first, last)
    @author_list.push(
      {
        "firstname" => newauthor.first,
        "lastname" => newauthor.last
      }
    )
    puts 'Author created successfully!'
  end

  def show_games
    @list_games.each_with_index do |game, index|
      gametitle = game.label.title || 'no game title'
      authorfirstname = game.author.first_name || 'no author first name'
      authorlastname = game.author.last_name || 'no autor last name'
      # multiplayer = game.multiplayer? "YES" : "NO"
      puts "[#{index}] #{gametitle} By #{authorfirstname} #{authorlastname} and is #{game.multiplayer?"mMltiplayer player game" : "Single player game"}"
    end
  end
end
