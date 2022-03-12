require './person'

class Student < Person
  def initalize(classroom, age, name = 'Unknown', parent_permission: true)
    super(age, name, parent_permission)
    @classroom = classroom
  end

  attr_reader :classroom

  def classroom=(classroom)
    @classroom = studentsclass
    studentsclass.students.push(self) unless studentsclass.students.include?(self)
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end

student = Student.new(18, 'Ricky')
puts student.name
