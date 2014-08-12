#student2.rb

class Student
  attr_accessor :name, :age, :sid, :major

  @total = 0

  def initialize(n, a, s, m)
    @name, @age, @sid, @major = n, a, s, m
  end

  def self.new(n, a, s, m)
    @total += 1
    super
  end

  def to_s
    "#{@name} is #{@age}-year old, with Student ID #{@sid}"
  end

  def self.report
    puts "Number of students: #{@total}"
  end
end

s = Student.new("John", 20, "12345", "SE")
s2 = Student.new("Johnny", 21, "12345", "MBA")
s3 = Student.new("Bob", 18, "13256", "MBA")
s4 = Student.new("Eric", 25, "93847", "SE")
s5 = Student.new("John", 34, "37436", "SE")

Student.report