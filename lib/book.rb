require_relative 'item.rb'

class Book < Item
  def initialize(name, price, pages, author)
    super(name, price)
    @pages = pages
    @author = author
  end
end
