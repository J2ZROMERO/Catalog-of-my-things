require './classes/music_album'
require './classes/item'
describe MusicAlbum do
  context 'check for correct values passed through MusicAlbum class' do
    new_album = MusicAlbum.new('01 jan 2023', onspotify: false)
    it 'check for correct values passed through MusicAlbum class' do
      expect(new_album.publish_date).to eql('01 jan 2023')
    end
    it 'check for correct values passed through MusicAlbum class' do
      expect(new_album.onspotify).to eql(false)
    end
    it 'Checking if the album is false' do
      expect(new_album.move_to_archive).to eql(false)
    end
  end
end
