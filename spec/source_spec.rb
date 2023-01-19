require './classes/source'
require './classes/movie'

describe Source do
  context 'Testing methods of Source class' do
    before(:each) do
      @source = Source.new('source1')
    end
    it 'Test initialize class' do
      expect(@source.name).to eq 'source1'
    end
    it 'Test add_item class' do
      movie = Movie.new('2010-10-10', silent: false)
      @source.add_item(movie)
      expect(@source.items[0].silent).to eq false
      expect(@source.items[0].publish_date).to eq '2010-10-10'
    end
  end
end
