require './select_method'
# this class runs the user interface
class Main
  def initialize
    @select_method = SelectMethod.new
    puts 'My items collection!'
    @select_method.load_json1
    @select_method.load_json2

    @menu = <<~TEXT
      Please choose an option by entering a number:
       1 - List all books
       2 - List all music albums
       3 - List all movies
       4 - List of games
       5 - List all genres (e.g 'Comedy', 'Thriller')
       6 - List all labels (e.g. 'Gift', 'New')
       7 - List all authors (e.g. 'Stephen King')
       8 - List all sources (e.g. 'From a friend', 'Online shop')
       9 - Add a book
      10 - Add a music album
      11 - Add a movie
      12 - Add a game
       0 - Exit
    TEXT
  end

  def main
    puts @menu
    user_input = gets.chomp.to_i
    if user_input.zero?
      @select_method.save_json
      puts 'Thank you for using this app!'
    else
      @select_method.assign_method(user_input)
      main
    end
  end
end

start = Main.new
start.main
