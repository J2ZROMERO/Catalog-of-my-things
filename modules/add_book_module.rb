require './classes/book'
require './classes/label'
require './classes/author'
module AddBookModule
  def add_book
    include Inputs
    @cover_state = gets.chomp.to_s
    author = Author.new(@first_name, @last_name)
    @label = Label.new(@title)
    book = Book.new(@publisher, @date, @cover_state)
    @label.add_item(book)
    book.add_label(@label)
    author.add_item(book)
    book.add_author(author)
    @list_books << {
      'Title' => book.label.title,
      'Publisher' => book.publisher,
      'Date' => book.publish_date,
      'Author' => book.author.first_name
    }

    @list_labels << { 'title' => @label.title }
    @list_authors << { 'Author' => author.first_name }
  end
end

module Inputs
  def inputs
    puts "Insert the first author's name"
    @first_name = gets.chomp.to_s
    puts 'Insert the last name'
    @last_name = gets.chomp.to_s
    puts "Insert the book's title"
    @title = gets.chomp.to_s
    puts "Insert the publisher's name"
    @publisher = gets.chomp.to_s
    puts 'Insert the publish date'
    @date = gets.chomp.to_s
    puts 'Insert the cover state'
  end
end
