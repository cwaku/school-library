class Rental
  attr_accessor :date, :person, :book

  def initalize(date, person, book)
    @date = date
    @person = person
    person.rentals << self
    @book = book
    book.rentals << self
  end
end