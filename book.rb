require './item'
class Book  < Item
attr_accessor :publisher, :cover_state

def initialize(publisher,date,cover_state = '')
@publisher = publisher    
@cover_state = cover_state
super(date)
end

def can_be_archived?
parentBooleanValue =  super()
if parentBooleanValue || @cover_state == "bad"
return true
else
  false
end
  end

  def list_books()

  @  
  end



end

item = Book.new("sdas","2020-12-20","bad")
puts item.can_be_archived?