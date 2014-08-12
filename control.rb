def how_many_students(n)
  "The RoR class has " + n.to_s +
      (n==1 ? " student" : " students")
end

puts how_many_students(10)
puts how_many_students(1)


today = Time.now

if today.friday?
  puts "Have to join Ruby on Rails class :("
elsif today.saturday?
  puts "relax"
else
  puts "get bored"
end

def greet(name)
  puts "hello #{name.capitalize}"
end

greet "john"