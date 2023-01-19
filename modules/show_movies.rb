module ShowMovies
  def show_movies
    if @list_movies.empty?
      puts 'Please add a movie.'
    else
      @list_movies.each do |movie|
        puts "Title: \"#{movie['title']}\", Silent: #{movie['silent']}, Date: #{movie['publish_date']}"
      end
    end
  end
end
