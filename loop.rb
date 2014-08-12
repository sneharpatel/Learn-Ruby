x = 10
while x > 0 do
  puts x
  x = x - 1
end

x = 0
until x > 10 do
  puts x
  x = x + 1
end

def greet(name)
  # this is a single-line comment
  puts "hello " + name
  puts "hello #{name.capitalize}"
end

=begin
this is
multi-line
comment
=end
greet "john"