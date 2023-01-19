module ShowGenres
  def show_genres
    if @list_genres.empty?
      puts 'Please add a Music Album'
    else
      @list_genres.each do |genre|
        puts "Genre: #{genre['Genre']}"
      end
    end
  end
end
