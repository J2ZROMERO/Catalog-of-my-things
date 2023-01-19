require './classes/genre'
require './classes/music_album'

module AddAlbum
  def add_album
    # album title
    print 'Album title? '
    title = gets.chomp.to_s
    color = 'none'
    # music album class
    print 'Publish date?: '
    publish_date = gets.chomp.to_s
    print 'Genre? '
    genre_name = gets.chomp.to_s
    print 'Is on spotify? true/false: '
    onspotify_input = gets.chomp!
    puts 'New Music Album created! '

    label = Label.new(title, color)
    album = MusicAlbum.new(publish_date, onspotify: onspotify_input)
    genre = Genre.new(genre_name)

    @list_albums.push({ 'Title' => label.title, 'Publish_date' => album.publish_date,
                        'Is on spotify?' => album.onspotify, 'Genre' => genre.name })

    @list_labels.push({ 'title' => label.title })

    @list_genres.push({ 'Genre' => genre.name })
  end
end
