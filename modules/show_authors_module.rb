module Show_authors_module
    def show_authors

        if @list_authors.empty?
         puts 'ANY ITEM ADDED'
       else
         @list_authors.each_with_index do |author, index|
           puts "Author# #{index+1} "
           author.each do |key, value|
             print " #{key}: #{value} "
           end
           puts " "
         end
         puts " "
       end
     end
end
