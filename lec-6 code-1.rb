class Student
end

Student.class_eval do
  define_method("greet") do |name|
    "Hello " + name
  end
end

#"def greet(name); 'Hello ' + name; end"

puts Student.new.greet("John")