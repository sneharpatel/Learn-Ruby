a = [1, 2, 3]
puts a.pop until a.empty?


sum = 0
array = [1, 2, 3, 4, 5]
for num in array
  sum = sum + num
end
puts sum


students = {john: 18, jack: 20, jason: 25}
for name, age in students
  puts "#{name} is #{age} years old"
end