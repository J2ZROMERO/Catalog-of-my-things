require './modules/add_album'
require './classes/music_album'
require './modules/list_albums'
require './modules/list_genres'
require './classes/label'

class App
  attr_accessor :list_albums, :list_genres

  def initialize
    # should read from file
    @list_books = []
    @list_albums = []
    @list_games = []
    @list_movies = []
    @list_genres = []
    @list_labels = []
  end

  def show_books
    # code comes from module
  end

  include ListAlbums
  # code comes from module


  def show_movies
    # code comes from module
  end

  def show_games
    # code comes from module
  end

  include ShowGenres
  # code comes from module

  def show_labels
    # code comes from module
  end

  def show_authors
    # code comes from module
  end

  def show_sources
    # code comes from module
  end

  def add_book
    # code comes from module
  end

  include AddAlbum


  def add_movie
    # code comes from module
  end

  def add_game
    # code comes from module
  end
end
