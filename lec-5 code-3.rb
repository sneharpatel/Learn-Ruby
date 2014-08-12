#inheritance_variable.rb

class Student
  @total = 10
  @@school = "ITU"

  def initialize
    @name = "John"
  end

  def register
    @major = "CS"
  end

  def self.report
    puts @total
  end

  def report
    puts @name
    puts @major
    puts @@school
    self.class.report
  end
end

class GraduateStudent < Student
  @total = 20
  @@school = "Stanford"
 # def initialize
   # @name = "Jack"
 # end

end

s = Student.new
s.register
s.report
#Student.new.report
puts "============"
GraduateStudent.new.report
