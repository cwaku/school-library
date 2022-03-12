require './rental'

class Classroom
  attr_accessor :label
  attr_reader :students

  def initalize(label)
    @label = label
    @students = []
  end

  def add_students(student)
    student.push(student)
    student.classroom = self
  end
end

class Book
  attr_accessor :title, :author
  attr_reader :rentals

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  def add_rental(person, date)
    Rental.new(date, person, self)
  end
end
