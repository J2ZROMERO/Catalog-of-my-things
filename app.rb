require './classes/movie'
require './classes/label'
require './classes/source'
require './modules/add_movie'
require './modules/show_movies'
require './modules/show_sources'
class App
  attr_accessor :list_movies, :list_sources

  def initialize
    # should read from file
    @list_books = []
    @list_albums = []
    @list_games = []
    @list_movies = []
    @list_genres = []
    @list_labels = []
    @list_authors = []
    @list_sources = []
  end

  def show_books
    # code comes from module
  end

  def show_albums
    # code comes from module
  end

  include ShowMovies

  def show_games
    # code comes from module
  end

  def show_genres
    # code comes from module
  end

  def show_labels
    # code comes from module
  end

  def show_authors
    # code comes from module
  end

  include ShowSources

  def add_book
    # code comes from module
  end

  def add_album
    # code comes from module
  end

  include AddMovie

  def add_game
    # code comes from module
  end
end
