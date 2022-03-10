class Person
  def initialize(name = "unknown", _age, parent_permission: true)
    @name = name
    @age = int
    @id = Random.rand(1..1000)
    @parent_permission = parent_permission
  end

  attr_accessor :name, :age
  attr_reader :id

  def can_use_services?
    if @parent_permission || is_of_age
      true
    else
      false
    end
  end

  private

  def is_of_age
    is_of_age >= 18
  end
end