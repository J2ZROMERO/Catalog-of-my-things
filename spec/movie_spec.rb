require './classes/movie'

describe Movie do
  context 'Test movie can_be_archived? method' do
    it 'super true silent false' do
      movie = Movie.new('2010-10-10', silent: false)
      expect(movie.move_to_archive).to eq true
    end
    it 'super false silent false' do
      movie = Movie.new('2020-10-10', silent: false)
      expect(movie.move_to_archive).to eq false
    end
    it 'super false silent true' do
      movie = Movie.new('2020-10-10', silent: true)
      expect(movie.move_to_archive).to eq true
    end
  end
end
