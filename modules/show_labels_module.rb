module ShowLabelsModule
  def show_labels
    if @list_labels.empty?
      puts 'ANY ITEM ADDED'
    else
      @list_labels.each_with_index do |label, index|
        puts "Label# #{index + 1} "
        label.each do |key, value|
          print " #{key}: #{value} "
        end
        puts ' '
      end
      puts ' '
    end
  end
end
