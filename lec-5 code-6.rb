#module.rb

module Greeter
  def greet
    "Hello World"
  end
end

class Student
  include Greeter
end

class Professor
end

#puts Student.new.greet

Professor.extend(Greeter)

foo = "foo"
foo.extend(Greeter)

puts Professor.greet
puts foo.greet