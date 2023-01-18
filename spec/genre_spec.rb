require './classes/genre.rb'
require './classes/music_album.rb'

describe Genre do
  context 'check for correct values passed through Genre class' do
  new_genre = Genre.new('Rock')
  it 'check for an instance of new_genre name' do
  expect(new_genre.name).to eql('Rock')
  end
  it 'checking add item method' do
    album = MusicAlbum.new('01 jan 2023', onspotify: false) 
    new_genre.add_item(album)
    expect(new_genre.items[0].publish_date).to eql('01 jan 2023')
  end
end
end
