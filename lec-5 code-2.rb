#eval.rb

class Student
  #attr_accessor :name

  def initialize(n)
    @name = n
  end
end

s = Student.new("John")
s2 = Student.new("Jack")

#s.instance_eval("def greet; 'Hello World from ' + @name; end")

s.instance_eval {
  def greet
    'Hello World from ' + @name
  end
}
=begin
# for s2 instance define method

s2.instance_eval {
  def greet
    'Hello  from ' + @name
  end
}
=end
Student.class_eval("def foo; 'Foo'; end")
Student.instance_eval("def bar; 'Bar'; end")

puts Student.new("Jason").foo
puts Student.bar

puts s.greet
puts s.respond_to? :foo

#puts s2.greet

s.instance_eval("@name='Jack'")
puts s.instance_eval("@name")