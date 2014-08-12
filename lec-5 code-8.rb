#Variables.rb

class Student
  @total = 10
  @@school = "ITU"

  def initialize
    @name = "John"
  end
end

s = Student.new
puts s.instance_variables
puts Student.class_variables
puts Student.instance_variables

s.instance_variable_set(:@name, 'Jack')
puts s.instance_variable_get(:@name)
puts Student.class_variable_get(:@@school)
puts Student.instance_variable_get(:@total)