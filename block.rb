#block4.rb
def sequence(start, step, times)
  i = 0
  sum = 0
  while i < times
    sum += yield start + i*step, i if block_given?
    i += 1
  end
  puts sum
end

sequence(7, 3, 5) do |x, i|
  puts "#{x} for loop #{i}"
  x*x
end

#sequence(7,3,5) {|x| puts x}
#sequence(10, 5, 2)

#block3.rb
def nTimes(n)
  n.times {yield}
end

nTimes(3) {puts "Hello World"}

#block2.rb
#students = ["Bob", "John", "Sam", "David"];
students = [
    {name: "Bob", age: 18},
    {name: "John", age: 25},
    {name: "Sam", age: 19},
    {name: "David", age: 30}
]
students.sort! do |s1, s2|
  s1[:age] <=> s2[:age]
end
for student in students
  puts student[:name]
end

#block1.rb

def greet(name)
  yield
  puts "hello #{name}"
  yield
end

greet("john") {puts "hello world"}

greet("jack") {puts "My name is Jack."}


