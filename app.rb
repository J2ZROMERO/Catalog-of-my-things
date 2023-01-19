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

  include ShowBooksModule

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

  include ShowLabelsModule

  include ShowAuthorsModule

  include ShowSources

  include AddBookModule

  def add_album
    # code comes from module
  end

  include AddMovie

  def add_game
    # code comes from module
  end
end
