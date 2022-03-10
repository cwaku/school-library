require './person'

class Student < Person
  def initialize(age, parent_permission: true, classroom = 'unknown', name = 'unknown')
    super(name, age, parent_permission)
    @classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
