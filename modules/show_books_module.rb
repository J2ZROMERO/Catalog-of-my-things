
module Show_books_module
    def show_books
        # code comes from module
        if @list_books.empty?
          puts 'NO BOOKS ADDED'
        else
          @list_books.each_with_index do |book, index|
            puts "Book# #{index+1} "
            book.each do |key, value|
              print " #{key}: #{value} "
            end
            puts " "
          end
          puts " "
        end
      end
end
