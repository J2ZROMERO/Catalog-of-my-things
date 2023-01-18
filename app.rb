require './modules/add_book_module'
require './modules/show_books_module'
require './modules/show_labels_module'
require './modules/show_authors_module'



class App
  attr_accessor :list_books, :list_authors, :list_labels
  def initialize
    # should read from file
    @list_books = []
    @list_albums = []
    @list_games = []
    @list_movies = []
    @list_labels = []
    @list_authors = []
  end

  include Show_books_module

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


  include Show_labels_module

  include Show_authors_module

  def show_sources
    # code comes from module
  end

  
  include Add_book_module
  

  def add_album
    # code comes from module
  end

  def add_movie
    # code comes from module
  end

  def add_game
    # code comes from module
  end
end

