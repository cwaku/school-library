require './person'

class Student < Person
  def initalize(classroom, age, name = 'Unknown', parent_permission: true)
    super(age, name, parent_permission)
    @classroom = classroom
  end

  attr_reader :classroom

  def classroom=(studentclass)
    @classroom = studentclass
    studentclass.students.push(self) unless studentclass.students.include?(self)
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end

student = Student.new(18, 'Ricky')
puts student.name
