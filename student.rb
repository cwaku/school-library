require './person.rb'

class Student < Person
  def initialize(classroom = "unknown" name = "unknown", age, parent_permission = "true")
    super(name, age, parent_permission)
    @classroom = classroom
  end

  def play_hooky
    return "¯\(ツ)/¯"
  end
end