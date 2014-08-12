#student3.rb

class Student
  @online = 0
  @local = 0
  @total=0

  private_class_method :new
  def initialize(n, a)
    @name, @age = n, a
  end

  def self.RegisterOnline(n, a)
    @online += 1
    @total+=1
    new(n,a)
  end

  def self.RegisterLocal(n, a)
    @local += 1
    @total+=1
    new(n, a)
  end

  def self.report
    puts "Number of online students: #{@online}"
    puts "Number of local students: #{@local}"
    puts "Number of total students: #{@total}"
  end
end

s = Student.RegisterOnline("John", 18)
s2 = Student.RegisterLocal("Jack", 18)
s3 = Student.RegisterLocal("Jason", 18)
s4 = Student.RegisterOnline("Alice", 18)
s5 = Student.RegisterOnline("Bob", 18)
#s6 = Student.new("Carl", 18)
#s7 = Student.new("David", 18)

Student.report
puts s
