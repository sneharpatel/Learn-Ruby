def get_size(obj)
  if(obj.respond_to? :size)
  puts obj.size
  else
    puts "This object does not support size method."
  end
  end

class Student

end
s=Student.new
s2= Student.new


def s.size
  10
end
get_size("hello")
get_size(1..6)
get_size(:hello)
get_size(s)
get_size(s2)
