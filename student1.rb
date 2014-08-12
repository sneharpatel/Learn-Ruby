class Student1
  attr_accessor :name, :age

  def initialize(n, a)
    @name, @age = n, a
  end
end

s = Student1.new("John", 18)
puts s.public_methods(false)
s.name = "Jack"
s.age = 20
puts s.name
puts s.age