module ShowSources
  def show_sources
    if @list_sources.empty?
      puts 'Please add a movie.'
    else
      @list_sources.each do |source|
        puts "Source: \"#{source['source']}\""
      end
    end
  end
end