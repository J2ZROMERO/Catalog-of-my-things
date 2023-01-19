require './classes/game'
require './app'
require './classes/label'
require './classes/author'

module GameModule
  def add_game
    print 'Game publish_date: '
    publish_date = gets.chomp
    print 'Is it a multiplayer game? Enter 0 for yes and 1 for no: '
    multiplayer = gets.chomp
    multiplayer = multiplayer.downcase == '1'
    print 'Last played date: '
    last_played_date = gets.chomp

    game = Game.new(publish_date, last_played_date, multiplayer)

    @list_games.push(
      {
        "pub_date" => game.publish_date,
        "last-played_date" => game.last_played_at,
        "multiplayer" => game.multiplayer
      }
    )

    puts 'Game added successfully!'

    print 'Would you like to add a label for this game? (0) yes (1) no: '
    ans = gets.chomp

    unless ans == 1
      label = create_label
      game.add_label(label)
    end

    puts 'Label added to this game successfully!'

    print 'Would you like to add an author for this game? (0) yes (1) no: '
    ans = gets.chomp

    unless ans == 1
      author = create_author
      game.add_label(author)
    end

    puts 'Author added to this game successfully!'

  end

  def create_label
    print 'Lable title: '
    title = gets.chomp
    print 'Label color: '
    color = gets.chomp
    newlabel = Label.new(title, color)
    @list_labels.push(
      {
        "title_label" => newlabel.title,
        "color_label" => newlabel.color
      }
    )

    # puts 'label created successfully!'
  end

  def create_author
    print 'Author first name: '
    first = gets.chomp
    print 'Author last name: '
    last = gets.chomp

    newauthor = Author.new(first, last)
    @list_authors.push(
      {
        "firstname" => newauthor.first_name,
        "lastname" => newauthor.last_name
      }
    )
     puts 'Author created successfully!'
  end

  def show_games
    puts "Games collection = #{@list_games}"
    @list_games.each_with_index do |game, index|
      authorfirstname = game.author['first_name']|| 'no author first name'
      gametitle = game.label.title || 'no game title'
      authorlastname = game.author.last_name || 'no autor last name'
      # multiplayer = game.multiplayer? "YES" : "NO"
      puts "[#{index}] #{gametitle} By #{authorfirstname} #{authorlastname} and is #{game.multiplayer?}'Mltiplayer player game' : 'Single player game'"
    end
  end

  def show_authors
    @list_authors.each_with_index do |author, index|
      puts "[#{index}] First name: #{author['firstname']}  Last name: #{author['lastname']}}"
    end
  end
end
