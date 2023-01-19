require './modules/add_game_module'
require './modules/show_game_module'

class App
  def initialize
    # should read from file
    @list_books = []
    @list_albums = []
    @list_games = []
    @list_movies = []
    @list_labels = []
    @list_authors = []
    @list_genre = []
    @list_sources = []
  end

  attr_accessor :list_games

  def show_books
    # code comes from module
  end

  def show_albums
    # code comes from module
  end

  def show_movies
    # code comes from module
  end

  #includes add_game, create_author, create_label, show_authors, and show_label methods
  include GameModule

  def show_genres
    # code comes from module
  end


  def show_authors
    # code comes from module
  end



  def add_book
    # code comes from module
  end

  def add_album
    # code comes from module
  end

  def add_movie
    # code comes from module
  end

include ShowGamesModule


end
