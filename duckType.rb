def get_size(obj)
  if (obj.respond_to? :size)
    puts obj.size
  else
    puts "this object does not support size method"
  end
end

class Student
end

s = Student.new
s2 = Student.new

def s.size
  10
end

def s2.size
  7
end

get_size("hello")
get_size(1..4)
get_size(:hello)
get_size(s)
get_size(s2)

a = "hello"
b = "hello Ruby"

def a.printme
  puts self
end

if (a.respond_to? 'printme')
  a.printme
end

puts b.respond_to? 'printme'