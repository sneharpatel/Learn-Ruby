#student.rb

class Student
  attr_accessor :name, :age, :sid, :major
  include Comparable

  @@total = 0
  @@totalSE = 0
  @@totalMBA = 0

  def self.numberOfSEStudents(*students)
    seStuds = students.find_all {|s| s.major == "SE"}
    seStuds.length
  end

  def initialize(n, a, s, m)
    @name, @age, @sid, @major = n, a, s, m
    @@total += 1
    if m == "SE"
      @@totalSE += 1
    elsif m == "MBA"
      @@totalMBA += 1
    end
  end

  def to_s
    "#{@name} is #{@age}-year old, with Student ID #{@sid}"
  end

  def [](key)
    case key
      when 0, -4, :name, "name"
        @name
      when 1, -3, :age, "age"
        @age
      when 2, -2, :sid, "sid"
        @sid
      when 3, -1, :major, "major"
        @major
      else nil
    end
  end

  def each
    yield @name
    yield @age
    yield @sid
    yield @major
  end

  def ==(obj)
    if obj.is_a? Student
      @sid == obj.sid
    else
      false
    end
  end

  def <=>(obj)
    return nil unless obj.is_a? Student
    @name <=> obj.name
  end

  def self.report
    puts "Number of students: #{@@total}"
    puts "Number of SE students: #{@@totalSE}"
    puts "Number of MBA students: #{@@totalMBA}"
  end
end

s = Student.new("John", 20, "12345", "SE")
s2 = Student.new("Johnny", 21, "12345", "MBA")
s3 = Student.new("Bob", 18, "13256", "MBA")
s4 = Student.new("Eric", 25, "93847", "SE")
s5 = Student.new("John", 34, "37436", "SE")

Student.report

puts Student.numberOfSEStudents(s, s2, s3, s4, s5)

puts s.is_a? Comparable
puts s.instance_of? Comparable

puts s4.between?(s3, s)
students = [s, s2, s3, s4]
puts students.sort!
students.each {|s| puts s}