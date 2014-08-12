class Student
  def initialize(n,a)
    @name, @age = n, a
  end

  def name
    @name
  end

  def name=(value)
    @name = value
  end

  def age=(value)
    @age = value
  end

  def age
    @age
  end

  def to_s
    "#{@name} is #{@age}-year old"
  end
end

s = Student.new("John", 18)

s1=Student.new("Jason",22)
s1.name="Jack"
s1.age=22
puts s1.name
puts s1.age
s.name = "Johnny"
s.age = 20
puts s.name
puts s.age

puts s
puts s1
puts s1.is_a? Student

class Machine
  def initialize(isOn)
    @turnOn=isOn
  end
  def turnOn
    @turnOn
  end
  def turnOn=(value)
    @turnOn=value
  end

end

m=Machine.new(true)
puts m.turnOn
m.turnOn=false
puts m.turnOn
