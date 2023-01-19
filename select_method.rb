require_relative './app'
require 'json'

class SelectMethod
  def initialize
    @app = App.new
    @menu_option = {
      1 => 'show_books',
      2 => 'show_albums',
      3 => 'show_movies',
      4 => 'show_games',
      5 => 'show_genres',
      6 => 'show_labels',
      7 => 'show_authors',
      8 => 'show_sources',
      9 => 'add_book',
      10 => 'add_album',
      11 => 'add_movie',
      12 => 'add_game'
    }
  end

  def read_file(file)
    if File.exist?(file)
      data_from_file = File.read(file)
      JSON.parse(data_from_file)
    else
      '404'
    end
  end

  def load_json
    @app.list_albums = read_file('./json/albums.json') == '404' ? [] : read_file('./json/albums.json')
    @app.list_genres = read_file('./json/genre.json') == '404' ? [] : read_file('./json/genre.json')
  end

  def save_json
    File.write('./json/albums.json', JSON.pretty_generate(@app.list_albums))
    File.write('./json/genre.json', JSON.pretty_generate(@app.list_genres))
  end

  def assign_method(input)
    case input
    when 1..12
      @app.send(@menu_option[input])
    end
  end
end
