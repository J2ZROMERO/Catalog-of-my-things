require './classes/game'
require './app'
require './classes/label'
require './classes/author'
require './modules/labelhandler'

module GameModule
  include LabelHandler
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

    puts 'Would you like to give this item a label? (Y/N)'
    answer = gets.chomp
    unless answer.downcase == 'n'
      puts 'Select an existing label by index or create a new one(0): '
      #show_labels
      response = gets.chomp.to_i
      if response.zero?
        newlabel = create_label
        puts "newgame inside labelhandler = #{@list_games}"
        puts "new label inside labelhandler= #{newlabel}"
        game.add_label(newlabel)
      else
        game.add_label(@list_labels[response])
      end
    end
    puts 'Label added successfully'

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
    @list_authors.push(newauthor)
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

  def show_labels
    @list_labels.each_with_index do |label, index|
      puts "#{index + 1}) Title: \"#{label.title}\", Color: #{label.color}, Items: #{label.items.length}"
    end
  end
end
