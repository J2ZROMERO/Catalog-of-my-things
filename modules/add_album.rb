class Add_album
    def createAlbum
      print 'Publish date?: '
      publish_date = gets.chomp
      print 'Is on spotify? true/false: '
      onspotify = gets.chomp
      album = MusicAlbum.new(publish_date, onspotify: true)
      @list_albums.push({ 'publish_date' => album.publish_date, 'onspotify' => album.onspotify })
      puts 'Album succesfully created!'
    end
end