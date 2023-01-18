require './classes/movie'
require './classes/label'
require './classes/source'
require './modules/add_movie'
class App
  attr_reader :list_movies
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

  def show_movies
    # code comes from module
  end

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

  def show_sources
    # code comes from module
  end

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
