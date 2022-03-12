require './validate'
require './rental'

class Person
  attr_accessor :name, :age, :rentals
  attr_reader :id

  def initalize(age, name = 'Unknown', parent_permission: true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
    @validation = Validate.new
  end

  def can_use_services?
    if of_age || @parent_permission
      true
    else
      false
    end
  end

  def add_rental(book, date)
    Rental.new(date, self, book)
  end

  def validate_name
    @name = @validation.validate_name(@name)
  end

  private

  def of_age?
    @age >= 18
  end
end
