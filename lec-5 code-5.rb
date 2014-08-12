#meta.rb

class Student
  attr_accessor :name, :age

  def initialize(name, age)
    @name, @age = name, age
  end

  def to_s
    "#{@name} is #{@age}-year old"
  end
end

s = Student.new("John", 18)
s.name = "Jack"
s.age = 20
puts s