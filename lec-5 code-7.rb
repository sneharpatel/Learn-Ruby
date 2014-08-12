#Student.rb

class Student
  attr_accessor :name, :age

  def initialize(n, a)
    @name, @age = n, a
  end

  def to_s
    "#{@name} is #{@age}-year old"
  end

  def self.Sayhi
    "I am " + self.to_s
  end
end

class GraduateStudent < Student
  attr_accessor :degree

  def initialize(n, a, d)
    super(n, a)
    @degree = d
  end

  def to_s
    super + " " + "#{@name} has #{@degree} degree"
  end
end

s = GraduateStudent.new("John", 18, "Master")
puts s
puts GraduateStudent.Sayhi