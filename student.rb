require './person'

class Student < Person
  def initalize(classroom, age, name = 'Unknown', parent_permission: true)
    super(age, name, parent_permission)
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