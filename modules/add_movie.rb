module AddMovie
  def add_movie
    print 'Insert movie title: '
    input_title = gets.chomp
    print 'Date published: '
    input_date = gets.chomp
    print 'Is the movie silent?[Y/N]: '
    input_silent = gets.chomp
    input_silent = %w[y Y].include?(input_silent)
    print "Where you get this item?(e.g. 'From a friend', 'Online shop'): "
    input_source = gets.chomp
    print 'Movie added successfully! '
    movie = Movie.new(input_date, silent: input_silent)
    label = Label.new(input_title)
    source = Source.new(input_source)
    @list_movies.push(
      {
        'id' => movie.id,
        'publish_date' => movie.publish_date,
        'silent' => movie.silent,
        'title' => label.title,
        'source' => source.name
      }
    )
    @list_labels.push(
      {
        'title' => label.title
      }
    )
    @list_sources.push(
      {
        'source' => source.name
      }
    )
  end
end
