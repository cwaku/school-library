class Person
  def initialize(name = "unknown", age, parent_permission = "true")
    @name = name
    @age = age
    @id = rand(1..1000)
    @parent_permission = parent_permission
  end

  attr_accessor :name, :age
  attr_reader :id

  def can_use_services?
    return true if @parent_permission == "true" || @age >= 18
    false
  end

  private

  def is_of_age?
    return true if @age >= 18
    false
  end
end