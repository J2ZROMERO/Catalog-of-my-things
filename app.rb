require './classes/movie'
require './classes/label'
require './classes/source'
require './modules/add_movie'
require './modules/show_movies'
require './modules/show_sources'
require './modules/add_book_module'
require './modules/show_books_module'
require './modules/show_labels_module'
require './modules/show_authors_module'
require './modules/add_game_module'
require './modules/show_game_module'

class App
  attr_accessor :list_books, :list_authors, :list_labels, :list_games, :list_movies, :list_sources

  def initialize
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

  def show_genres
    # code comes from module
  end

  include ShowLabelsModule

  include ShowAuthorsModule

  include ShowSources

  include AddBookModule

  include GameModule

  include ShowGamesModule

  def add_album
    # code comes from module
  end

  include AddMovie
end
