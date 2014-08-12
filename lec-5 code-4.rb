#inheritance.rb

class Greeter
  def greet
    puts "#{greeting} #{who}"
  end

  def who
    "Everyone"
  end
end

class WorldGreeter < Greeter
  def greeting
    "Hello"
  end
  def who
    "World"
  end

  private :greeting, :who
end

class JohnGreeter < WorldGreeter
  def who
    "John"
  end
end

g = JohnGreeter.new
g1=WorldGreeter.new
g2=Greeter.new
puts g2.who
g1.greet
g.greet