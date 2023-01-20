module ShowGamesModule
  def show_games
    # code comes from module
    if @list_games.empty?
      puts 'NO Games ADDED YET'
    else
      @list_games.each_with_index do |game, index|
        print "[#{index}] "
        game.each do |key, value|
          print " #{key}: #{value} "
        end
        puts ' '
      end
      puts ' '
    end
  end
end
