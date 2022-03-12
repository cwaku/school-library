require './person'
class Teacher < Person
  def initialize(age, specialization = 'unknown', name = 'unknown', parent_permission: true)
    super(name, age, parent_permission)
    @specialization = specialization
  end

  attr_reader :classroom

  def can_use_services?
    true
  end

  def classroom=(studentclass)
    @classrom = studentclass
    studentclass.students.push(self) unless studentclass.students.include?(self)
  end
end

student = Teacher.new('Mormor', 21)
puts student.age
